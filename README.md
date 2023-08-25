# synthosphere
 too1-1 yosys
 
Installation guide
https://github.com/YosysHQ/yosys

## Prerequiste dependency

$ sudo apt-get install build-essential clang bison flex \
  libreadline-dev gawk tcl-dev libffi-dev git \
  graphviz xdot pkg-config python3 libboost-system-dev \
  libboost-python-dev libboost-filesystem-dev zlib1g-dev

## installation Flow
$ sudo apt-get install build-essential clang bison flex \
	libreadline-dev gawk tcl-dev libffi-dev git \
	graphviz xdot pkg-config python3 libboost-system-dev \
	libboost-python-dev libboost-filesystem-dev zlib1g-dev

 On FreeBSD use the following command to install all prerequisites:

 pkg install bison flex readline gawk libffi\
	git graphviz pkgconf python3 python36 tcl-wrapper boost-libs
To configure the build system to use a specific compiler, use one of

$ make config-clang
$ make config-gcc

For other compilers and build configurations it might be necessary to make some changes to the config section of the Makefile.

$ vi Makefile            # ..or..
$ vi Makefile.conf

To build Yosys simply type 'make' in this directory.

$ make
$ sudo make install
## progress image 
![IMG-20230825-WA0043](https://github.com/rockymoo/synthosphere/assets/126293037/5fd7d75b-a8f8-4a12-8ec4-3859c2d2c620)
## how create file 
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

## FSM For Car Parking System
![fsmforcarpark](https://github.com/rockymoo/synthosphere/assets/126293037/9ab245b2-19e4-4dcd-a043-000f506eb492)

   # RTL of all modules 
   1. https://github.com/rockymoo/synthosphere/blob/main/car_parm.v         : TOP MODULE 
   2. https://github.com/rockymoo/synthosphere/blob/main/car_parm.vcd       : VCD file 
   3. https://github.com/rockymoo/synthosphere/blob/main/test.v             : TEST.V file
   4. https://github.com/rockymoo/synthosphere/blob/main/netlist_car_parm.v : NETLIST
   5. https://github.com/rockymoo/synthosphere/blob/main/tb_car_parm.v      : Test bench 
   


   ## Genration of GTKWAVE
1. to genrate gtkwave intially include .vcd file genrate line in testbench file
2. execute .vcd file by commond 'gtkwave __.vcd
   ## RTL SIMULATION
   ![IMG-20230825-WA0039](https://github.com/rockymoo/synthosphere/assets/126293037/caf3b2a1-456c-4973-8719-dd98434bb87d)

  ## open yosys 
  
   ![IMG-20230825-WA0043](https://github.com/rockymoo/synthosphere/assets/126293037/0e949f18-cf10-4107-9de5-d81e2d1df858)

## read library
1. commond 'read_library -lib ../lib/sky________'
2. to include library file 'sky130_fd_sc_hd_tt_025c_1v80.lib'
   after including lib file
## techno map.v file

![IMG-20230825-WA0041](https://github.com/rockymoo/synthosphere/assets/126293037/e0e152db-e8ea-43a7-8900-e7201d862ee0)
 ## printing statics of car paking management 


![IMG-20230825-WA0046](https://github.com/rockymoo/synthosphere/assets/126293037/884e801c-308a-4b4f-8040-e7fb4765f679)

1. read_verilog 'file.v'
2. specifiy the top module
3. view the top module which wired and synthesised
   
   ## gate level netlist generated connectons
   
![IMG-20230825-WA0040](https://github.com/rockymoo/synthosphere/assets/126293037/96584281-005c-437a-bb21-e3a99cac09d4)

## after synthesis 
comparing the RTL with .vcd RTL again 

![IMG-20230825-WA0042](https://github.com/rockymoo/synthosphere/assets/126293037/4c15c009-2000-471c-88a6-764415d8744d)

## comparing test.v and netlist.v 

![Screenshot from 2023-08-25 23-04-17](https://github.com/rockymoo/synthosphere/assets/126293037/25076c27-24cb-4a6a-8eaf-b8efe27a60eb)

![Screenshot from 2023-08-25 23-05-35](https://github.com/rockymoo/synthosphere/assets/126293037/7cfeae89-00f2-40a6-9607-6922b2893353)

comparing with test.v redudent lines are avoided in netlistfile



