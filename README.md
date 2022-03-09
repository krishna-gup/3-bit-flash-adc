# Design of a 3 Bit Flash Analog to Digital Converter

# Table of Contents


- [Abstract](https://github.com/krishna-gup/3-bit-flash-adc#abstract)
- [Reference Circuit](https://github.com/krishna-gup/3-bit-flash-adc#reference-circuit-diagram)
- [Circuit Description](https://github.com/krishna-gup/3-bit-flash-adc#circuit-description)
- [Reference Circuit and Output](https://github.com/krishna-gup/beta-multiplier/blob/main/README.md#reference-circuit)
- [EDA Tools Used](https://github.com/krishna-gup/3-bit-flash-adc#eda-tools-used)
- [Verilog Code of Priority Encoder](https://github.com/krishna-gup/3-bit-flash-adc#verilog-code-of-priority-encoder)
- [Makerchip Simulation](https://github.com/krishna-gup/3-bit-flash-adc#makerchip-simulation-of-priority-encoder)
- [Schematic](https://github.com/krishna-gup/3-bit-flash-adc#implemented-schematic)
- [Netlist](https://github.com/krishna-gup/3-bit-flash-adc#netlist)
- [Output Waveforms](https://github.com/krishna-gup/3-bit-flash-adc#output-waveform)
- [Author](https://github.com/krishna-gup/3-bit-flash-adc#author)
- [Acknowledgements](https://github.com/krishna-gup/3-bit-flash-adc#acknowledgements)
- [References](https://github.com/krishna-gup/3-bit-flash-adc#references)

# Abstract

The world around us is analog, which includes all signals like sound, temperature, etc. For us to interpret these signals and work on them, we need to convert them into digital and then perform various functions on them. Converting analog signals into digital has multiple advantages, such as better noise rejection, easier to transmit, and many more. Hence, ADC (Analog to Digital Converters) is an important part of every integrated or front-end circuit.

This type of ADC is also known as a high speed ADC.

# Reference Circuit Diagram

<img width="294" alt="refCkt - Copy" src="https://user-images.githubusercontent.com/83169108/157314921-3643ba3e-ce63-4ece-acb6-060004fa8917.png">

# Circuit Description

This type of ADC can be divided into three parts, one being the Voltage Divider, other two being the comparator and the encoder respectively. We supply the maximum voltage as a reference input to our voltage divider network, which gets divided at each and every resistor. Keeping in mind that all resistors have a set value (1k), the voltage gets equally divided into 8 parts, each part being in ratio of each other, like 2Vr/8, 3Vr/8 and so on (Vr being the Reference Voltage). The potential at each point is fed into a comparator which in this case is an operational amplifier, which gives me the output either being +VCC or -VSS, depending upon the comparision. That output is fed into a priority encoder, which encodes it into a digital output.

# EDA Tools Used

- eSim: It is an Open Source EDA developed by FOSSEE, IIT Bombay. It is used for electronic circuit simulation. It is made by the combination of two software namely NgSpice and KiCAD. For more details refer: https://esim.fossee.in/home
- NG-SPICE: It is an Open Source Software for Spice Simulations. For more details refer: http://ngspice.sourceforge.net/docs.html
- Makerchip: It is an Online Web Browser IDE for Verilog/System-verilog/TL-Verilog Simulation. For more details refer: https://www.makerchip.com/
- Verilator: It is a tool which converts Verilog code to C++ objects. For more details refer: https://www.veripool.org/verilator/

# Verilog Code of Priority Encoder

``` 
  module krishna_prioEnco(
  input [7:0] in,
  output reg [2:0] out
);
reg [2:0] temp;
always @ (*)
begin
  casex(in)
    8'b00000000 : temp = 3'b000;
    8'b0000001x : temp = 3'b001;
    8'b000001xx : temp = 3'b010;
    8'b00001xxx : temp = 3'b011;
    8'b0001xxxx : temp = 3'b100;
    8'b001xxxxx : temp = 3'b101;
    8'b01xxxxxx : temp = 3'b110;
    8'b1xxxxxxx : temp = 3'b111;
    default : temp = 3'b000;
  endcase
    out = temp;
end
endmodule

```

# Makerchip Simulation of Priority Encoder

TLV Code:

```

\TLV_version 1d: tl-x.org
\SV
/* verilator lint_off UNUSED*/  /* verilator lint_off DECLFILENAME*/  /* verilator lint_off BLKSEQ*/  /* verilator lint_off WIDTH*/  /* verilator lint_off SELRANGE*/  /* verilator lint_off PINCONNECTEMPTY*/  /* verilator lint_off DEFPARAM*/  /* verilator lint_off IMPLICIT*/  /* verilator lint_off COMBDLY*/  /* verilator lint_off SYNCASYNCNET*/  /* verilator lint_off UNOPTFLAT */  /* verilator lint_off UNSIGNED*/  /* verilator lint_off CASEINCOMPLETE*/  /* verilator lint_off UNDRIVEN*/  /* verilator lint_off VARHIDDEN*/  /* verilator lint_off CASEX*/  /* verilator lint_off CASEOVERLAP*/  /* verilator lint_off PINMISSING*/   /* verilator lint_off BLKANDNBLK*/  /* verilator lint_off MULTIDRIVEN*/    /* verilator lint_off WIDTHCONCAT*/  /* verilator lint_off ASSIGNDLY*/  /* verilator lint_off MODDUP*/  /* verilator lint_off STMTDLY*/  /* verilator lint_off LITENDIAN*/  /* verilator lint_off INITIALDLY*/  

//Your Verilog/System Verilog Code Starts Here:
module krishna_prioEnco(
  input [7:0] in,
  output reg [2:0] out
);
reg [2:0] temp;
always @ (*)
begin
  casex(in)
    8'b00000000 : temp = 3'b000;
    8'b0000001x : temp = 3'b001;
    8'b000001xx : temp = 3'b010;
    8'b00001xxx : temp = 3'b011;
    8'b0001xxxx : temp = 3'b100;
    8'b001xxxxx : temp = 3'b101;
    8'b01xxxxxx : temp = 3'b110;
    8'b1xxxxxxx : temp = 3'b111;
    default : temp = 3'b000;
  endcase
    out = temp;
end
endmodule


//Top Module Code Starts here:
	module top(input logic clk, input logic reset, input logic [31:0] cyc_cnt, output logic passed, output logic failed);
		logic  [7:0] in;//input
		logic  [2:0] out;//output
//The $random() can be replaced if user wants to assign values
		assign in = 8'b00001000;
		krishna_prioEnco krishna_prioEnco(.in(in), .out(out));
	
\TLV
//Add \TLV here if desired                                     
\SV
endmodule

```

Makerchip Output for Different Inputs:

![makerchip_waveform1](https://user-images.githubusercontent.com/83169108/157294692-c628c4a0-434b-498b-9a97-c11448761b6e.jpg)

![makerchip_waveform2](https://user-images.githubusercontent.com/83169108/157294721-f585183a-9a43-422a-b82f-b1b7fa7f6b49.jpg)

# Implemented Schematic

![impl](https://user-images.githubusercontent.com/83169108/157451208-73cce9cc-5c1a-4703-a7cc-1bb6b220eca5.jpg)

I have implemented the reference circuit, using 8 LM741 Operational Amplifiers, a resistive ladder comprising of 1k resistors, and my implemented Priority Encoder.

# Netlist

```

* c:\users\krish\documents\esim\8_bit_adc\8_bit_adc.cir

.include lm_741.sub
* u1  net-_u1-pad1_ net-_u1-pad2_ net-_u1-pad3_ net-_u1-pad4_ net-_u1-pad5_ net-_u1-pad6_ net-_u1-pad7_ net-_u1-pad8_ net-_u1-pad9_ net-_u1-pad10_ net-_u1-pad11_ krishna_prioenco
x6 ? net-_r1-pad2_ vin gnd ? in7 vdd ? lm_741
x1 net-_r10-pad1_ net-_r2-pad2_ vin gnd net-_r10-pad2_ in6 vdd ? lm_741
x7 ? net-_r3-pad2_ vin gnd ? in5 vdd ? lm_741
x2 ? net-_r4-pad2_ vin gnd ? in4 vdd ? lm_741
x4 ? net-_r5-pad2_ vin gnd ? in3 vdd ? lm_741
x5 ? net-_r7-pad2_ vin gnd ? in1 vdd ? lm_741
* u2  in7 in6 in5 in4 in3 in2 in1 in0 net-_u1-pad1_ net-_u1-pad2_ net-_u1-pad3_ net-_u1-pad4_ net-_u1-pad5_ net-_u1-pad6_ net-_u1-pad7_ net-_u1-pad8_ adc_bridge_8
* u3  net-_u1-pad9_ net-_u1-pad10_ net-_u1-pad11_ d0 d1 d2 dac_bridge_3
* u6  d0 plot_v1
* u5  d1 plot_v1
* u4  d2 plot_v1
r1  vref net-_r1-pad2_ 1k
r2  net-_r1-pad2_ net-_r2-pad2_ 1k
r3  net-_r2-pad2_ net-_r3-pad2_ 1k
r4  net-_r3-pad2_ net-_r4-pad2_ 1k
r5  net-_r4-pad2_ net-_r5-pad2_ 1k
r6  net-_r5-pad2_ net-_r6-pad2_ 1k
r7  net-_r6-pad2_ net-_r7-pad2_ 1k
r8  net-_r7-pad2_ net-_r16-pad1_ 1k
vdd1  vdd gnd 16
vin1  vin gnd 2.5
v1  vref gnd 32
r10  net-_r10-pad1_ net-_r10-pad2_ 1k
x8 ? net-_r16-pad1_ vin gnd ? in0 vdd ? lm_741
r16  net-_r16-pad1_ gnd 1k
x3 ? net-_r6-pad2_ vin gnd ? in2 vdd ? lm_741
* u7  vin plot_v1
a1 [net-_u1-pad1_ net-_u1-pad2_ net-_u1-pad3_ net-_u1-pad4_ net-_u1-pad5_ net-_u1-pad6_ net-_u1-pad7_ net-_u1-pad8_ ] [net-_u1-pad9_ net-_u1-pad10_ net-_u1-pad11_ ] u1
a2 [in7 in6 in5 in4 in3 in2 in1 in0 ] [net-_u1-pad1_ net-_u1-pad2_ net-_u1-pad3_ net-_u1-pad4_ net-_u1-pad5_ net-_u1-pad6_ net-_u1-pad7_ net-_u1-pad8_ ] u2
a3 [net-_u1-pad9_ net-_u1-pad10_ net-_u1-pad11_ ] [d0 d1 d2 ] u3
* Schematic Name:                             krishna_prioenco, NgSpice Name: krishna_prioenco
.model u1 krishna_prioenco(rise_delay=1.0e-9 fall_delay=1.0e-9 input_load=1.0e-12 instance_id=1 ) 
* Schematic Name:                             adc_bridge_8, NgSpice Name: adc_bridge
.model u2 adc_bridge(in_low=2 in_high=4 rise_delay=1.0e-9 fall_delay=1.0e-9 ) 
* Schematic Name:                             dac_bridge_3, NgSpice Name: dac_bridge
.model u3 dac_bridge(out_low=0.0 out_high=5.0 out_undef=0.5 input_load=1.0e-12 t_rise=1.0e-9 t_fall=1.0e-9 ) 
.dc VIN1 0e-00 32e-00 0.4e-00

* Control Statements 
.control
run
print allv > plot_data_v.txt
print alli > plot_data_i.txt
plot v(d0) v(d1)+6 v(d2)+12 v(vin)+18
.endc
.end


```

# Output Waveform

Upon completing DC Analysis of the system, These are the output waveforms.
Voltage Input is in YELLOW
D2 (MSB) is in GREEN
D1 is in RED
D0 (LSB) is in BLUE

![Screenshot (287)](https://user-images.githubusercontent.com/83169108/157449964-b33144d7-16e5-485a-8f8d-a3eafd874f8c.png)

# Author

Krishna Gupta,
Pre-Final Year,
Bachelors of Technology, Electronics and Communications Engineering
Jaypee Institute of Information Technology, Sector 62, Noida

# Acknowledgements

- FOSSEE
- Indian Institute of Technology, Bombay
- Kunal Ghosh, Co-Founder, VLSI System Design
- Sumanto Kar, eSim Team, IIT-B

# References

- Triveni Kalita, Basab Das “A 4-bit Quantum Voltage Comparator based Flash ADC for Low Noise Applications”13 Oct 2016 IEEE
- Afreen R. Kerur, et. Al, “Design and Analysis of low power 4-bit Flash ADC using Quantum Voltage Comparator”, VIT TN



