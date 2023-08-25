/* Generated by Yosys 0.9 (git sha1 1979e0b) */

module car_parking_management(clk, rst, sense_entry, sense_exit, password_1, password_2, green_light, red_light, hex_1, hex_2, space_available, space_utilized, count_cars);
  wire [3:0] _000_;
  wire _001_;
  wire [6:0] _002_;
  wire [6:0] _003_;
  wire _004_;
  wire [3:0] _005_;
  wire [3:0] _006_;
  wire _007_;
  wire _008_;
  wire _009_;
  wire _010_;
  wire _011_;
  wire _012_;
  wire _013_;
  wire _014_;
  wire _015_;
  wire _016_;
  wire _017_;
  wire _018_;
  wire _019_;
  wire _020_;
  wire _021_;
  wire _022_;
  wire _023_;
  wire _024_;
  wire _025_;
  wire _026_;
  wire _027_;
  wire _028_;
  wire _029_;
  wire _030_;
  wire _031_;
  wire _032_;
  wire _033_;
  wire _034_;
  wire _035_;
  wire _036_;
  wire _037_;
  wire _038_;
  wire _039_;
  wire _040_;
  wire _041_;
  wire _042_;
  wire _043_;
  wire _044_;
  wire _045_;
  wire _046_;
  wire _047_;
  wire _048_;
  wire _049_;
  wire _050_;
  wire _051_;
  wire _052_;
  wire _053_;
  wire _054_;
  wire _055_;
  wire _056_;
  wire _057_;
  wire _058_;
  wire _059_;
  wire _060_;
  wire _061_;
  wire _062_;
  wire _063_;
  wire _064_;
  wire _065_;
  wire _066_;
  wire _067_;
  wire _068_;
  wire _069_;
  wire _070_;
  wire _071_;
  wire _072_;
  wire _073_;
  wire _074_;
  wire _075_;
  wire _076_;
  wire _077_;
  wire _078_;
  wire _079_;
  wire _080_;
  wire _081_;
  wire _082_;
  wire _083_;
  wire _084_;
  wire _085_;
  wire _086_;
  wire _087_;
  wire _088_;
  wire _089_;
  wire _090_;
  wire _091_;
  wire _092_;
  wire _093_;
  wire _094_;
  wire _095_;
  wire _096_;
  wire _097_;
  wire _098_;
  wire _099_;
  wire _100_;
  wire _101_;
  wire _102_;
  wire _103_;
  wire _104_;
  wire _105_;
  wire _106_;
  wire _107_;
  wire _108_;
  wire _109_;
  wire _110_;
  wire _111_;
  wire _112_;
  wire _113_;
  wire _114_;
  wire _115_;
  wire _116_;
  wire _117_;
  wire _118_;
  wire _119_;
  wire _120_;
  wire _121_;
  wire _122_;
  wire _123_;
  wire _124_;
  wire _125_;
  wire _126_;
  wire _127_;
  wire _128_;
  wire _129_;
  wire _130_;
  wire _131_;
  wire _132_;
  wire _133_;
  wire _134_;
  wire _135_;
  wire _136_;
  wire _137_;
  wire _138_;
  wire _139_;
  wire _140_;
  wire _141_;
  wire _142_;
  wire _143_;
  wire _144_;
  wire _145_;
  wire _146_;
  wire _147_;
  wire _148_;
  wire _149_;
  wire _150_;
  wire _151_;
  wire _152_;
  wire _153_;
  wire _154_;
  wire _155_;
  wire _156_;
  wire _157_;
  wire _158_;
  wire _159_;
  wire _160_;
  wire _161_;
  wire _162_;
  wire _163_;
  wire _164_;
  wire _165_;
  wire _166_;
  wire _167_;
  wire _168_;
  wire _169_;
  wire _170_;
  wire _171_;
  wire _172_;
  wire _173_;
  wire _174_;
  wire _175_;
  wire _176_;
  wire _177_;
  wire _178_;
  wire _179_;
  wire _180_;
  wire _181_;
  wire _182_;
  wire _183_;
  wire _184_;
  wire _185_;
  wire _186_;
  wire _187_;
  wire _188_;
  wire _189_;
  wire _190_;
  wire _191_;
  wire _192_;
  wire _193_;
  wire _194_;
  wire _195_;
  wire _196_;
  wire _197_;
  wire _198_;
  wire _199_;
  wire _200_;
  wire _201_;
  wire _202_;
  wire _203_;
  wire _204_;
  wire _205_;
  wire _206_;
  wire _207_;
  wire _208_;
  wire _209_;
  wire _210_;
  wire _211_;
  wire _212_;
  wire _213_;
  wire _214_;
  wire _215_;
  wire _216_;
  wire _217_;
  wire _218_;
  wire _219_;
  wire _220_;
  wire _221_;
  wire _222_;
  wire _223_;
  wire _224_;
  wire _225_;
  wire _226_;
  wire _227_;
  wire _228_;
  wire _229_;
  wire _230_;
  wire _231_;
  wire _232_;
  wire _233_;
  wire _234_;
  wire _235_;
  input clk;
  output [3:0] count_cars;
  wire [4:0] current_state;
  output green_light;
  output [6:0] hex_1;
  output [6:0] hex_2;
  wire [3:0] overall_space;
  input [1:0] password_1;
  input [1:0] password_2;
  output red_light;
  input rst;
  input sense_entry;
  input sense_exit;
  output [3:0] space_available;
  output [3:0] space_utilized;
  sky130_fd_sc_hd__clkinv_1 _236_ (
    .A(_156_),
    .Y(_200_)
  );
  sky130_fd_sc_hd__clkinv_1 _237_ (
    .A(_159_),
    .Y(_201_)
  );
  sky130_fd_sc_hd__clkinv_1 _238_ (
    .A(_161_),
    .Y(_202_)
  );
  sky130_fd_sc_hd__clkinv_1 _239_ (
    .A(_162_),
    .Y(_203_)
  );
  sky130_fd_sc_hd__nor4bb_1 _240_ (
    .A(_221_),
    .B(_223_),
    .C_N(_222_),
    .D_N(_220_),
    .Y(_204_)
  );
  sky130_fd_sc_hd__nor2_1 _241_ (
    .A(_225_),
    .B(_204_),
    .Y(_205_)
  );
  sky130_fd_sc_hd__and2_0 _242_ (
    .A(_154_),
    .B(_205_),
    .X(_145_)
  );
  sky130_fd_sc_hd__nand2_1 _243_ (
    .A(_152_),
    .B(_227_),
    .Y(_206_)
  );
  sky130_fd_sc_hd__nor2_1 _244_ (
    .A(_225_),
    .B(_206_),
    .Y(_207_)
  );
  sky130_fd_sc_hd__a22o_1 _245_ (
    .A1(_151_),
    .A2(_205_),
    .B1(_207_),
    .B2(_226_),
    .X(_142_)
  );
  sky130_fd_sc_hd__o31a_1 _246_ (
    .A1(_230_),
    .A2(_229_),
    .A3(_228_),
    .B1(_226_),
    .X(_208_)
  );
  sky130_fd_sc_hd__o41a_1 _247_ (
    .A1(_231_),
    .A2(_230_),
    .A3(_229_),
    .A4(_228_),
    .B1(_226_),
    .X(_209_)
  );
  sky130_fd_sc_hd__o41ai_1 _248_ (
    .A1(_231_),
    .A2(_230_),
    .A3(_229_),
    .A4(_228_),
    .B1(_226_),
    .Y(_210_)
  );
  sky130_fd_sc_hd__a21oi_1 _249_ (
    .A1(_150_),
    .A2(_210_),
    .B1(_225_),
    .Y(_211_)
  );
  sky130_fd_sc_hd__o21ai_0 _250_ (
    .A1(_226_),
    .A2(_206_),
    .B1(_211_),
    .Y(_141_)
  );
  sky130_fd_sc_hd__a21oi_1 _251_ (
    .A1(_150_),
    .A2(_209_),
    .B1(_153_),
    .Y(_212_)
  );
  sky130_fd_sc_hd__nor2_1 _252_ (
    .A(_225_),
    .B(_212_),
    .Y(_144_)
  );
  sky130_fd_sc_hd__o21ai_0 _253_ (
    .A1(_154_),
    .A2(_151_),
    .B1(_204_),
    .Y(_213_)
  );
  sky130_fd_sc_hd__nand2b_1 _254_ (
    .A_N(_227_),
    .B(_152_),
    .Y(_214_)
  );
  sky130_fd_sc_hd__a21oi_1 _255_ (
    .A1(_213_),
    .A2(_214_),
    .B1(_225_),
    .Y(_143_)
  );
  sky130_fd_sc_hd__or3_1 _256_ (
    .A(_234_),
    .B(_233_),
    .C(_232_),
    .X(_215_)
  );
  sky130_fd_sc_hd__o41ai_1 _257_ (
    .A1(_235_),
    .A2(_234_),
    .A3(_233_),
    .A4(_232_),
    .B1(_227_),
    .Y(_216_)
  );
  sky130_fd_sc_hd__a21o_1 _258_ (
    .A1(_210_),
    .A2(_216_),
    .B1(_225_),
    .X(_217_)
  );
  sky130_fd_sc_hd__nor2_1 _259_ (
    .A(_146_),
    .B(_217_),
    .Y(_113_)
  );
  sky130_fd_sc_hd__xor2_1 _260_ (
    .A(_146_),
    .B(_147_),
    .X(_218_)
  );
  sky130_fd_sc_hd__xnor2_1 _261_ (
    .A(_210_),
    .B(_218_),
    .Y(_219_)
  );
  sky130_fd_sc_hd__nor2_1 _262_ (
    .A(_217_),
    .B(_219_),
    .Y(_114_)
  );
  sky130_fd_sc_hd__a21o_1 _263_ (
    .A1(_146_),
    .A2(_147_),
    .B1(_148_),
    .X(_170_)
  );
  sky130_fd_sc_hd__nand3_1 _264_ (
    .A(_146_),
    .B(_147_),
    .C(_148_),
    .Y(_171_)
  );
  sky130_fd_sc_hd__or3_1 _265_ (
    .A(_146_),
    .B(_147_),
    .C(_148_),
    .X(_172_)
  );
  sky130_fd_sc_hd__o21ai_0 _266_ (
    .A1(_146_),
    .A2(_147_),
    .B1(_148_),
    .Y(_173_)
  );
  sky130_fd_sc_hd__a21oi_1 _267_ (
    .A1(_170_),
    .A2(_171_),
    .B1(_210_),
    .Y(_174_)
  );
  sky130_fd_sc_hd__a311oi_1 _268_ (
    .A1(_210_),
    .A2(_172_),
    .A3(_173_),
    .B1(_174_),
    .C1(_217_),
    .Y(_115_)
  );
  sky130_fd_sc_hd__nand4_1 _269_ (
    .A(_146_),
    .B(_147_),
    .C(_148_),
    .D(_149_),
    .Y(_175_)
  );
  sky130_fd_sc_hd__a31o_1 _270_ (
    .A1(_146_),
    .A2(_147_),
    .A3(_148_),
    .B1(_149_),
    .X(_176_)
  );
  sky130_fd_sc_hd__xor2_1 _271_ (
    .A(_149_),
    .B(_172_),
    .X(_177_)
  );
  sky130_fd_sc_hd__a21oi_1 _272_ (
    .A1(_175_),
    .A2(_176_),
    .B1(_210_),
    .Y(_178_)
  );
  sky130_fd_sc_hd__a211oi_1 _273_ (
    .A1(_210_),
    .A2(_177_),
    .B1(_178_),
    .C1(_217_),
    .Y(_116_)
  );
  sky130_fd_sc_hd__nor2_1 _274_ (
    .A(_232_),
    .B(_217_),
    .Y(_137_)
  );
  sky130_fd_sc_hd__xor2_1 _275_ (
    .A(_233_),
    .B(_232_),
    .X(_179_)
  );
  sky130_fd_sc_hd__xnor2_1 _276_ (
    .A(_210_),
    .B(_179_),
    .Y(_180_)
  );
  sky130_fd_sc_hd__nor2_1 _277_ (
    .A(_217_),
    .B(_180_),
    .Y(_138_)
  );
  sky130_fd_sc_hd__a21o_1 _278_ (
    .A1(_233_),
    .A2(_232_),
    .B1(_234_),
    .X(_181_)
  );
  sky130_fd_sc_hd__nand3_1 _279_ (
    .A(_234_),
    .B(_233_),
    .C(_232_),
    .Y(_182_)
  );
  sky130_fd_sc_hd__o21ai_0 _280_ (
    .A1(_233_),
    .A2(_232_),
    .B1(_234_),
    .Y(_183_)
  );
  sky130_fd_sc_hd__a21oi_1 _281_ (
    .A1(_181_),
    .A2(_182_),
    .B1(_210_),
    .Y(_184_)
  );
  sky130_fd_sc_hd__a311oi_1 _282_ (
    .A1(_210_),
    .A2(_215_),
    .A3(_183_),
    .B1(_184_),
    .C1(_217_),
    .Y(_139_)
  );
  sky130_fd_sc_hd__xor2_1 _283_ (
    .A(_235_),
    .B(_182_),
    .X(_185_)
  );
  sky130_fd_sc_hd__a31oi_1 _284_ (
    .A1(_227_),
    .A2(_235_),
    .A3(_215_),
    .B1(_209_),
    .Y(_186_)
  );
  sky130_fd_sc_hd__a211oi_1 _285_ (
    .A1(_209_),
    .A2(_185_),
    .B1(_186_),
    .C1(_225_),
    .Y(_140_)
  );
  sky130_fd_sc_hd__nor2_1 _286_ (
    .A(_228_),
    .B(_217_),
    .Y(_133_)
  );
  sky130_fd_sc_hd__nand2_1 _287_ (
    .A(_229_),
    .B(_228_),
    .Y(_187_)
  );
  sky130_fd_sc_hd__xor2_1 _288_ (
    .A(_229_),
    .B(_228_),
    .X(_188_)
  );
  sky130_fd_sc_hd__xnor2_1 _289_ (
    .A(_209_),
    .B(_188_),
    .Y(_189_)
  );
  sky130_fd_sc_hd__nor2_1 _290_ (
    .A(_217_),
    .B(_189_),
    .Y(_134_)
  );
  sky130_fd_sc_hd__o21ai_0 _291_ (
    .A1(_229_),
    .A2(_228_),
    .B1(_230_),
    .Y(_190_)
  );
  sky130_fd_sc_hd__xor2_1 _292_ (
    .A(_230_),
    .B(_187_),
    .X(_191_)
  );
  sky130_fd_sc_hd__a221oi_1 _293_ (
    .A1(_208_),
    .A2(_190_),
    .B1(_191_),
    .B2(_210_),
    .C1(_217_),
    .Y(_135_)
  );
  sky130_fd_sc_hd__or4b_1 _294_ (
    .A(_226_),
    .B(_187_),
    .C(_231_),
    .D_N(_230_),
    .X(_192_)
  );
  sky130_fd_sc_hd__a31oi_1 _295_ (
    .A1(_230_),
    .A2(_229_),
    .A3(_228_),
    .B1(_226_),
    .Y(_193_)
  );
  sky130_fd_sc_hd__o21ai_0 _296_ (
    .A1(_208_),
    .A2(_193_),
    .B1(_231_),
    .Y(_194_)
  );
  sky130_fd_sc_hd__nand3b_1 _297_ (
    .A_N(_217_),
    .B(_192_),
    .C(_194_),
    .Y(_136_)
  );
  sky130_fd_sc_hd__or3_1 _298_ (
    .A(_154_),
    .B(_151_),
    .C(_153_),
    .X(_195_)
  );
  sky130_fd_sc_hd__nor2_1 _299_ (
    .A(_152_),
    .B(_195_),
    .Y(_196_)
  );
  sky130_fd_sc_hd__nor3_1 _300_ (
    .A(_152_),
    .B(_150_),
    .C(_195_),
    .Y(_197_)
  );
  sky130_fd_sc_hd__a21o_1 _301_ (
    .A1(_163_),
    .A2(_197_),
    .B1(_195_),
    .X(_125_)
  );
  sky130_fd_sc_hd__a211o_1 _302_ (
    .A1(_164_),
    .A2(_197_),
    .B1(_151_),
    .C1(_153_),
    .X(_126_)
  );
  sky130_fd_sc_hd__a21o_1 _303_ (
    .A1(_165_),
    .A2(_197_),
    .B1(_153_),
    .X(_127_)
  );
  sky130_fd_sc_hd__a21o_1 _304_ (
    .A1(_166_),
    .A2(_197_),
    .B1(_154_),
    .X(_128_)
  );
  sky130_fd_sc_hd__a21o_1 _305_ (
    .A1(_167_),
    .A2(_197_),
    .B1(_195_),
    .X(_129_)
  );
  sky130_fd_sc_hd__a21o_1 _306_ (
    .A1(_168_),
    .A2(_197_),
    .B1(_195_),
    .X(_130_)
  );
  sky130_fd_sc_hd__a211o_1 _307_ (
    .A1(_169_),
    .A2(_197_),
    .B1(_154_),
    .C1(_151_),
    .X(_131_)
  );
  sky130_fd_sc_hd__nor2b_1 _308_ (
    .A(_155_),
    .B_N(_153_),
    .Y(_198_)
  );
  sky130_fd_sc_hd__a211o_1 _309_ (
    .A1(_155_),
    .A2(_197_),
    .B1(_198_),
    .C1(_152_),
    .X(_117_)
  );
  sky130_fd_sc_hd__o21ai_0 _310_ (
    .A1(_150_),
    .A2(_200_),
    .B1(_196_),
    .Y(_118_)
  );
  sky130_fd_sc_hd__and2_0 _311_ (
    .A(_157_),
    .B(_197_),
    .X(_119_)
  );
  sky130_fd_sc_hd__a21o_1 _312_ (
    .A1(_158_),
    .A2(_197_),
    .B1(_151_),
    .X(_120_)
  );
  sky130_fd_sc_hd__o21ai_0 _313_ (
    .A1(_150_),
    .A2(_201_),
    .B1(_196_),
    .Y(_121_)
  );
  sky130_fd_sc_hd__a2111o_1 _314_ (
    .A1(_160_),
    .A2(_197_),
    .B1(_154_),
    .C1(_152_),
    .D1(_153_),
    .X(_122_)
  );
  sky130_fd_sc_hd__o21ai_0 _315_ (
    .A1(_150_),
    .A2(_202_),
    .B1(_196_),
    .Y(_123_)
  );
  sky130_fd_sc_hd__o21ai_0 _316_ (
    .A1(_150_),
    .A2(_203_),
    .B1(_196_),
    .Y(_124_)
  );
  sky130_fd_sc_hd__nor2b_1 _317_ (
    .A(_224_),
    .B_N(_151_),
    .Y(_199_)
  );
  sky130_fd_sc_hd__a211o_1 _318_ (
    .A1(_224_),
    .A2(_197_),
    .B1(_199_),
    .C1(_154_),
    .X(_132_)
  );
  sky130_fd_sc_hd__dfxtp_1 _319_ (
    .CLK(clk),
    .D(_007_),
    .Q(current_state[0])
  );
  sky130_fd_sc_hd__dfxtp_1 _320_ (
    .CLK(clk),
    .D(_008_),
    .Q(current_state[1])
  );
  sky130_fd_sc_hd__dfxtp_1 _321_ (
    .CLK(clk),
    .D(_009_),
    .Q(current_state[2])
  );
  sky130_fd_sc_hd__dfxtp_1 _322_ (
    .CLK(clk),
    .D(_010_),
    .Q(current_state[3])
  );
  sky130_fd_sc_hd__dfxtp_1 _323_ (
    .CLK(clk),
    .D(_011_),
    .Q(current_state[4])
  );
  sky130_fd_sc_hd__dfxtp_1 _324_ (
    .CLK(clk),
    .D(_004_),
    .Q(red_light)
  );
  sky130_fd_sc_hd__dfxtp_1 _325_ (
    .CLK(clk),
    .D(_002_[0]),
    .Q(hex_1[0])
  );
  sky130_fd_sc_hd__dfxtp_1 _326_ (
    .CLK(clk),
    .D(_002_[1]),
    .Q(hex_1[1])
  );
  sky130_fd_sc_hd__dfxtp_1 _327_ (
    .CLK(clk),
    .D(_002_[2]),
    .Q(hex_1[2])
  );
  sky130_fd_sc_hd__dfxtp_1 _328_ (
    .CLK(clk),
    .D(_002_[3]),
    .Q(hex_1[3])
  );
  sky130_fd_sc_hd__dfxtp_1 _329_ (
    .CLK(clk),
    .D(_002_[4]),
    .Q(hex_1[4])
  );
  sky130_fd_sc_hd__dfxtp_1 _330_ (
    .CLK(clk),
    .D(_002_[5]),
    .Q(hex_1[5])
  );
  sky130_fd_sc_hd__dfxtp_1 _331_ (
    .CLK(clk),
    .D(_002_[6]),
    .Q(hex_1[6])
  );
  sky130_fd_sc_hd__dfxtp_1 _332_ (
    .CLK(clk),
    .D(_001_),
    .Q(green_light)
  );
  sky130_fd_sc_hd__dfxtp_1 _333_ (
    .CLK(clk),
    .D(_003_[0]),
    .Q(hex_2[0])
  );
  sky130_fd_sc_hd__dfxtp_1 _334_ (
    .CLK(clk),
    .D(_003_[1]),
    .Q(hex_2[1])
  );
  sky130_fd_sc_hd__dfxtp_1 _335_ (
    .CLK(clk),
    .D(_003_[2]),
    .Q(hex_2[2])
  );
  sky130_fd_sc_hd__dfxtp_1 _336_ (
    .CLK(clk),
    .D(_003_[3]),
    .Q(hex_2[3])
  );
  sky130_fd_sc_hd__dfxtp_1 _337_ (
    .CLK(clk),
    .D(_003_[4]),
    .Q(hex_2[4])
  );
  sky130_fd_sc_hd__dfxtp_1 _338_ (
    .CLK(clk),
    .D(_003_[5]),
    .Q(hex_2[5])
  );
  sky130_fd_sc_hd__dfxtp_1 _339_ (
    .CLK(clk),
    .D(_003_[6]),
    .Q(hex_2[6])
  );
  sky130_fd_sc_hd__dfxtp_1 _340_ (
    .CLK(clk),
    .D(_005_[0]),
    .Q(space_available[0])
  );
  sky130_fd_sc_hd__dfxtp_1 _341_ (
    .CLK(clk),
    .D(_005_[1]),
    .Q(space_available[1])
  );
  sky130_fd_sc_hd__dfxtp_1 _342_ (
    .CLK(clk),
    .D(_005_[2]),
    .Q(space_available[2])
  );
  sky130_fd_sc_hd__dfxtp_1 _343_ (
    .CLK(clk),
    .D(_005_[3]),
    .Q(space_available[3])
  );
  sky130_fd_sc_hd__dfxtp_1 _344_ (
    .CLK(clk),
    .D(_006_[0]),
    .Q(space_utilized[0])
  );
  sky130_fd_sc_hd__dfxtp_1 _345_ (
    .CLK(clk),
    .D(_006_[1]),
    .Q(space_utilized[1])
  );
  sky130_fd_sc_hd__dfxtp_1 _346_ (
    .CLK(clk),
    .D(_006_[2]),
    .Q(space_utilized[2])
  );
  sky130_fd_sc_hd__dfxtp_1 _347_ (
    .CLK(clk),
    .D(_006_[3]),
    .Q(space_utilized[3])
  );
  sky130_fd_sc_hd__dfxtp_1 _348_ (
    .CLK(clk),
    .D(_000_[0]),
    .Q(count_cars[0])
  );
  sky130_fd_sc_hd__dfxtp_1 _349_ (
    .CLK(clk),
    .D(_000_[1]),
    .Q(count_cars[1])
  );
  sky130_fd_sc_hd__dfxtp_1 _350_ (
    .CLK(clk),
    .D(_000_[2]),
    .Q(count_cars[2])
  );
  sky130_fd_sc_hd__dfxtp_1 _351_ (
    .CLK(clk),
    .D(_000_[3]),
    .Q(count_cars[3])
  );
  assign overall_space = 4'h8;
  assign _221_ = password_1[1];
  assign _220_ = password_1[0];
  assign _223_ = password_2[1];
  assign _222_ = password_2[0];
  assign _154_ = current_state[4];
  assign _011_ = _145_;
  assign _152_ = current_state[2];
  assign _151_ = current_state[1];
  assign _226_ = sense_entry;
  assign _227_ = sense_exit;
  assign _008_ = _142_;
  assign _150_ = current_state[0];
  assign _231_ = space_available[3];
  assign _230_ = space_available[2];
  assign _229_ = space_available[1];
  assign _228_ = space_available[0];
  assign _225_ = rst;
  assign _007_ = _141_;
  assign _153_ = current_state[3];
  assign _010_ = _144_;
  assign _009_ = _143_;
  assign _235_ = space_utilized[3];
  assign _234_ = space_utilized[2];
  assign _233_ = space_utilized[1];
  assign _232_ = space_utilized[0];
  assign _146_ = count_cars[0];
  assign _000_[0] = _113_;
  assign _147_ = count_cars[1];
  assign _000_[1] = _114_;
  assign _148_ = count_cars[2];
  assign _000_[2] = _115_;
  assign _149_ = count_cars[3];
  assign _000_[3] = _116_;
  assign _006_[0] = _137_;
  assign _006_[1] = _138_;
  assign _006_[2] = _139_;
  assign _006_[3] = _140_;
  assign _005_[0] = _133_;
  assign _005_[1] = _134_;
  assign _005_[2] = _135_;
  assign _005_[3] = _136_;
  assign _163_ = hex_2[0];
  assign _003_[0] = _125_;
  assign _164_ = hex_2[1];
  assign _003_[1] = _126_;
  assign _165_ = hex_2[2];
  assign _003_[2] = _127_;
  assign _166_ = hex_2[3];
  assign _003_[3] = _128_;
  assign _167_ = hex_2[4];
  assign _003_[4] = _129_;
  assign _168_ = hex_2[5];
  assign _003_[5] = _130_;
  assign _169_ = hex_2[6];
  assign _003_[6] = _131_;
  assign _155_ = green_light;
  assign _001_ = _117_;
  assign _156_ = hex_1[0];
  assign _002_[0] = _118_;
  assign _157_ = hex_1[1];
  assign _002_[1] = _119_;
  assign _158_ = hex_1[2];
  assign _002_[2] = _120_;
  assign _159_ = hex_1[3];
  assign _002_[3] = _121_;
  assign _160_ = hex_1[4];
  assign _002_[4] = _122_;
  assign _161_ = hex_1[5];
  assign _002_[5] = _123_;
  assign _162_ = hex_1[6];
  assign _002_[6] = _124_;
  assign _224_ = red_light;
  assign _004_ = _132_;
endmodule