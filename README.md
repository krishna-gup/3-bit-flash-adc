# Design of a 3 Bit Flash Analog to Digital Converter

# Table of Contents

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

# Author

Krishna Gupta
Pre-Final Year
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



