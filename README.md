# synthosphere
 too1-1 yosys
 
Installation guide
https://github.com/YosysHQ/yosys

# Prerequiste dependency

$ sudo apt-get install build-essential clang bison flex \
  libreadline-dev gawk tcl-dev libffi-dev git \
  graphviz xdot pkg-config python3 libboost-system-dev \
  libboost-python-dev libboost-filesystem-dev zlib1g-dev

# installation Flow

$ mkdir yosys-master
$ cd yosys-master
$ git clone https://github.com/YosysHQ/yosys.git
$ sudo apt install make(installing make if you havent done it yet)
$ sudo apt-get install build-essential clang bison flex \
    libreadline-dev gawk tcl-dev libffi-dev git \
    graphviz xdot pkg-config python3 libboost-system-dev \
    libboost-python-dev libboost-filesystem-dev zlib1g-dev
$ cd yosys-master/yosys/
$ make
$ sudo install make


if it doesn't work ( version mismatch might occur when combining other open software )
$ sudo apt install yosys
$ sudo apt upgrade

# progress image 
![IMG-20230825-WA0043](https://github.com/rockymoo/synthosphere/assets/126293037/5fd7d75b-a8f8-4a12-8ec4-3859c2d2c620)
# how create file 
1. open commond prompt
mkdir "--------" file name
2. to get into file use command 'cd'
3. to get to know list of files use 'ls' command .
4. inside file create .v files and testbench files with .v extension and run
5. ![Screenshot from 2023-08-25 17-34-21](https://github.com/rockymoo/synthosphere/assets/126293037/8f47d9c5-5db0-418d-ab80-694a23d7a484)


# car parking managemnet system 
project is designed to implement a car parking system using Verilog. In this project, at the entrance of the parking system, a sensor is used to detect the presence of a vehicle. Once the sensor is triggered, a password is requested to open the gate. If the entered password is correct, the gate opens to let the vehicle in, otherwise, the gate remains locked.

![car_parks](https://github.com/rockymoo/synthosphere/assets/126293037/ae1d59f3-6efd-430a-966e-645818aedb00)

# introduction management 
	Drivers searching for parking are estimated to be responsible for about 30% of traffic congestion in cities. Historically, cities, businesses, and property developers have tried to match parking supply to growing demand for parking spaces.
Parking System can be defined as the use of advanced technologies for the better operation, controlling of traffic, and management of parking within an urban area. A number of technologies provide the basis for parking solutions, including vehicle sensors, wireless communications, and data analytics. Parking System is also made useful by recent technology in areas such as mobile appilcation customer services, mobile UPI payments, and in-car GPS navigation systems. At the heart of the parking system concept is the ability to access, collect, analyze, disseminate, and act on information on parking usage. Increasingly, this information is provided in real-time from intelligent devices that enable both parking managers and drivers to optimize the use of parking capacity.

# FSM For Car Parking System
![fsmforcarpark](https://github.com/rockymoo/synthosphere/assets/126293037/9ab245b2-19e4-4dcd-a043-000f506eb492)

   # RTL code of  car parking system
   
module car_parking_management(
    input clk, rst, sense_entry, sense_exit,
    input [1:0] password_1, password_2,
    output reg green_light, red_light,
    output reg [6:0] hex_1, hex_2,
    output reg [3:0] space_available, space_utilized, count_cars
    );
    reg [3:0] overall_space=4'b1000;
    reg [2:0] current_state, next_state;
    reg [1:0] wait_time;
    //declaring parameters list
    parameter idle = 3'b000, 
              wait_time_state=3'b001, 
              password_correct=3'b010, 
              password_incorrect=3'b011, 
              stop=3'b100;
    //declarimg current state			 
    always@(posedge clk) begin
        if(rst==1) current_state<= idle; 
        else current_state<= next_state;
    end

//parking space management
    always@(posedge clk) begin
    
        if(rst==1) begin //reseting whole design
            space_available<= overall_space;
            space_utilized<= 0;
            count_cars<=4'b0; 
        end
        
        else begin
            if ((sense_entry==1) && (space_available>0))begin //entry of 1 vehicle
                space_available<= space_available - 3'b001;
                space_utilized<= space_utilized + 3'b001; 
                count_cars<=count_cars + 4'b0001; 
            end
            
            else if ((sense_exit==1) && (space_utilized>0)) begin //exit of 1 vehicle
                space_available<= space_available + 3'b001;
                space_utilized<= space_utilized - 3'b001; 
                count_cars<= count_cars - 4'b0001; 
            end
            
            else begin //no vehicle entered and exited
                space_available<= overall_space;
                space_utilized<= 0;
                count_cars<=4'b0; 
            end
        end
    end

    //declarationn of wait_timeing period in the wait_time_state
    always@(posedge clk) begin
    
        if(rst==1) wait_time<= 2'b0;
        
        else begin 
            if(current_state==wait_time_state) wait_time<= wait_time + 2'b01;
            else wait_time<= 2'b0;
        end
    end

    //declaration of next state
    always@(*) begin
    case(current_state)
        
        idle: begin
            if((sense_entry==1) && (space_available>0)) next_state<= wait_time_state;
            else next_state<= idle;
        end
    
        wait_time_state: begin
            if(wait_time<= 3'b011) next_state<= wait_time_state;
            else begin
                if ((password_1==2'b01) && (password_2==2'b01)) next_state<= password_correct;
                else next_state<= password_incorrect;
            end
        end
    
        password_correct: begin
            if((sense_entry==1) && (sense_exit==1)) next_state<= stop;
            else if((sense_exit==1)) next_state<= idle;
            else next_state<= password_correct;
        end
    
        password_incorrect: begin
            if((password_1==2'b01) && (password_2==2'b01)) next_state<= password_correct;
            else next_state<= password_incorrect;
        end
    
        stop: begin 
            if((password_1==2'b01) && (password_2==2'b01)) next_state<= password_correct;
            else next_state<= stop;
        end
    
        default: next_state<= idle;
    
    endcase
    end

    always@(posedge clk) begin
    case(current_state)
    
        idle: begin //starting state with no entry and exit of vehicles
            green_light<= 1'b0;
            red_light<= 1'b0;
            hex_1<= 7'b0000000; //0
            hex_2<= 7'b0000000; //0
        end
    
        wait_time_state: begin //vechile wait_timeing in the lobby
            green_light<= ~green_light;
            red_light<= 1'b0;
            hex_1<= 7'b1111001; //alphabet-E
            hex_2<= 7'b0110111; //N -> ENTER
        end
    
        password_correct: begin //vehicle entering and providing password_correct
            green_light<= 1'b1;
            red_light<= 1'b0;
            hex_1<= 7'b1111001; //6
            hex_2<= 7'b0000000; //0 -> GO
        end
    
        password_incorrect: begin //vehicle entering and providing password_incorrect
            green_light<= 1'b0;
            red_light<= 1'b1;
            hex_1<= 7'b1111001; //E
            hex_2<= 7'b1111001; //E -> ERROR
        end
        
        stop: begin //stay of the vehicle for some period
            green_light<= 1'b0;
            red_light<= ~red_light;
            hex_1<= 7'b1101101; //5
            hex_2<= 7'b1110011; //P -> STOP
        end
    
    endcase
    end
endmodule
# Testbench 

module test_bench;

	reg clk, rst, sense_entry, sense_exit;
    reg [1:0] password_1, password_2;
    wire green_light, red_light;
    wire [6:0] hex_1, hex_2;
    wire [3:0] space_available, space_utilized, count_cars;

	car_parking_management dut(clk, rst, sense_entry, sense_exit, password_1, password_2, green_light, red_light, hex_1, hex_2, space_available, space_utilized, count_cars);

    initial begin
        clk = 1;
        forever #5 clk = ~clk;
    end
    
    initial begin
        rst = 1;
        sense_entry = 0;
        sense_exit = 0;
        password_1 = 0;
        password_2 = 0;
    
        #10; 
        rst = 1'b0; 
        sense_entry = 1'b1;  
        sense_exit = 1'b0;
        password_1 = 2'b01;
        password_2 = 2'b01;
        #80;  sense_exit = 1'b1; sense_entry = 1'b0;  
    end
    
    initial begin
        $monitor("time=%g, clk=%b, rst=%b, sense_entry=%b, sense_exit=%b, password_1=%b, password_2=%b,\ngreen_light=%b, red_light=%b, hex_1=%b, hex_2=%b, space_available=%d, space_utilized=%d, count_cars=%d", $time, clk, rst, sense_entry, sense_exit, password_1, password_2, green_light, red_light, hex_1, hex_2, space_available, space_utilized, count_cars);
        #150 $finish;
    end
endmodule

   # Genration of GTKWAVE
1. to genrate gtkwave intially include .vcd file genrate line in testbench file
2. execute .vcd file by commond 'gtkwave __.vcd
   # RTL SIMULATION
   ![IMG-20230825-WA0039](https://github.com/rockymoo/synthosphere/assets/126293037/caf3b2a1-456c-4973-8719-dd98434bb87d)

  # open yosys 
  
   ![IMG-20230825-WA0043](https://github.com/rockymoo/synthosphere/assets/126293037/0e949f18-cf10-4107-9de5-d81e2d1df858)

# read library
1. commond 'read_library -lib ../lib/sky________'
2. to include library file 'sky130_fd_sc_hd_tt_025c_1v80.lib'
   after including lib file
# techno map.v file

![IMG-20230825-WA0041](https://github.com/rockymoo/synthosphere/assets/126293037/e0e152db-e8ea-43a7-8900-e7201d862ee0)
 # printing statics of car paking management 


![IMG-20230825-WA0046](https://github.com/rockymoo/synthosphere/assets/126293037/884e801c-308a-4b4f-8040-e7fb4765f679)

1. read_verilog 'file.v'
2. specifiy the top module
3. view the top module which wired and synthesised
   
   # gate level netlist generated connectons
   
![IMG-20230825-WA0040](https://github.com/rockymoo/synthosphere/assets/126293037/96584281-005c-437a-bb21-e3a99cac09d4)

# after synthesis 
comparing the RTL with .vcd RTL again 

![IMG-20230825-WA0042](https://github.com/rockymoo/synthosphere/assets/126293037/4c15c009-2000-471c-88a6-764415d8744d)

# comparing test.v and netlist.v 

![Screenshot from 2023-08-25 23-04-17](https://github.com/rockymoo/synthosphere/assets/126293037/25076c27-24cb-4a6a-8eaf-b8efe27a60eb)

![Screenshot from 2023-08-25 23-05-35](https://github.com/rockymoo/synthosphere/assets/126293037/7cfeae89-00f2-40a6-9607-6922b2893353)

comparing with test.v redudent lines are avoided in netlistfile

# RTL OF ALL MODULES 


