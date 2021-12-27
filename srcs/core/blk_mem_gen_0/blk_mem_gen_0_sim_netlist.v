// Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2021.1 (win64) Build 3247384 Thu Jun 10 19:36:33 MDT 2021
// Date        : Mon Dec 27 19:50:50 2021
// Host        : DESKTOP-F1U74SH running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               d:/Users/Jeffe/Documents/GitHub/RISC-CPU-GROUP/srcs/core/blk_mem_gen_0/blk_mem_gen_0_sim_netlist.v
// Design      : blk_mem_gen_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a35ticpg236-1L
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "blk_mem_gen_0,blk_mem_gen_v8_4_4,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "blk_mem_gen_v8_4_4,Vivado 2021.1" *) 
(* NotValidForBitStream *)
module blk_mem_gen_0
   (clka,
    ena,
    addra,
    douta);
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME BRAM_PORTA, MEM_SIZE 8192, MEM_WIDTH 32, MEM_ECC NONE, MASTER_TYPE OTHER, READ_LATENCY 1" *) input clka;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA EN" *) input ena;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA ADDR" *) input [4:0]addra;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA DOUT" *) output [31:0]douta;

  wire [4:0]addra;
  wire clka;
  wire [31:0]douta;
  wire ena;
  wire NLW_U0_dbiterr_UNCONNECTED;
  wire NLW_U0_rsta_busy_UNCONNECTED;
  wire NLW_U0_rstb_busy_UNCONNECTED;
  wire NLW_U0_s_axi_arready_UNCONNECTED;
  wire NLW_U0_s_axi_awready_UNCONNECTED;
  wire NLW_U0_s_axi_bvalid_UNCONNECTED;
  wire NLW_U0_s_axi_dbiterr_UNCONNECTED;
  wire NLW_U0_s_axi_rlast_UNCONNECTED;
  wire NLW_U0_s_axi_rvalid_UNCONNECTED;
  wire NLW_U0_s_axi_sbiterr_UNCONNECTED;
  wire NLW_U0_s_axi_wready_UNCONNECTED;
  wire NLW_U0_sbiterr_UNCONNECTED;
  wire [31:0]NLW_U0_doutb_UNCONNECTED;
  wire [4:0]NLW_U0_rdaddrecc_UNCONNECTED;
  wire [3:0]NLW_U0_s_axi_bid_UNCONNECTED;
  wire [1:0]NLW_U0_s_axi_bresp_UNCONNECTED;
  wire [4:0]NLW_U0_s_axi_rdaddrecc_UNCONNECTED;
  wire [31:0]NLW_U0_s_axi_rdata_UNCONNECTED;
  wire [3:0]NLW_U0_s_axi_rid_UNCONNECTED;
  wire [1:0]NLW_U0_s_axi_rresp_UNCONNECTED;

  (* C_ADDRA_WIDTH = "5" *) 
  (* C_ADDRB_WIDTH = "5" *) 
  (* C_ALGORITHM = "1" *) 
  (* C_AXI_ID_WIDTH = "4" *) 
  (* C_AXI_SLAVE_TYPE = "0" *) 
  (* C_AXI_TYPE = "1" *) 
  (* C_BYTE_SIZE = "9" *) 
  (* C_COMMON_CLK = "0" *) 
  (* C_COUNT_18K_BRAM = "1" *) 
  (* C_COUNT_36K_BRAM = "0" *) 
  (* C_CTRL_ECC_ALGO = "NONE" *) 
  (* C_DEFAULT_DATA = "0" *) 
  (* C_DISABLE_WARN_BHV_COLL = "0" *) 
  (* C_DISABLE_WARN_BHV_RANGE = "0" *) 
  (* C_ELABORATION_DIR = "./" *) 
  (* C_ENABLE_32BIT_ADDRESS = "0" *) 
  (* C_EN_DEEPSLEEP_PIN = "0" *) 
  (* C_EN_ECC_PIPE = "0" *) 
  (* C_EN_RDADDRA_CHG = "0" *) 
  (* C_EN_RDADDRB_CHG = "0" *) 
  (* C_EN_SAFETY_CKT = "0" *) 
  (* C_EN_SHUTDOWN_PIN = "0" *) 
  (* C_EN_SLEEP_PIN = "0" *) 
  (* C_EST_POWER_SUMMARY = "Estimated Power for IP     :     3.206439 mW" *) 
  (* C_FAMILY = "artix7" *) 
  (* C_HAS_AXI_ID = "0" *) 
  (* C_HAS_ENA = "1" *) 
  (* C_HAS_ENB = "0" *) 
  (* C_HAS_INJECTERR = "0" *) 
  (* C_HAS_MEM_OUTPUT_REGS_A = "1" *) 
  (* C_HAS_MEM_OUTPUT_REGS_B = "0" *) 
  (* C_HAS_MUX_OUTPUT_REGS_A = "0" *) 
  (* C_HAS_MUX_OUTPUT_REGS_B = "0" *) 
  (* C_HAS_REGCEA = "0" *) 
  (* C_HAS_REGCEB = "0" *) 
  (* C_HAS_RSTA = "0" *) 
  (* C_HAS_RSTB = "0" *) 
  (* C_HAS_SOFTECC_INPUT_REGS_A = "0" *) 
  (* C_HAS_SOFTECC_OUTPUT_REGS_B = "0" *) 
  (* C_INITA_VAL = "0" *) 
  (* C_INITB_VAL = "0" *) 
  (* C_INIT_FILE = "blk_mem_gen_0.mem" *) 
  (* C_INIT_FILE_NAME = "blk_mem_gen_0.mif" *) 
  (* C_INTERFACE_TYPE = "0" *) 
  (* C_LOAD_INIT_FILE = "1" *) 
  (* C_MEM_TYPE = "3" *) 
  (* C_MUX_PIPELINE_STAGES = "0" *) 
  (* C_PRIM_TYPE = "1" *) 
  (* C_READ_DEPTH_A = "32" *) 
  (* C_READ_DEPTH_B = "32" *) 
  (* C_READ_LATENCY_A = "1" *) 
  (* C_READ_LATENCY_B = "1" *) 
  (* C_READ_WIDTH_A = "32" *) 
  (* C_READ_WIDTH_B = "32" *) 
  (* C_RSTRAM_A = "0" *) 
  (* C_RSTRAM_B = "0" *) 
  (* C_RST_PRIORITY_A = "CE" *) 
  (* C_RST_PRIORITY_B = "CE" *) 
  (* C_SIM_COLLISION_CHECK = "ALL" *) 
  (* C_USE_BRAM_BLOCK = "0" *) 
  (* C_USE_BYTE_WEA = "0" *) 
  (* C_USE_BYTE_WEB = "0" *) 
  (* C_USE_DEFAULT_DATA = "0" *) 
  (* C_USE_ECC = "0" *) 
  (* C_USE_SOFTECC = "0" *) 
  (* C_USE_URAM = "0" *) 
  (* C_WEA_WIDTH = "1" *) 
  (* C_WEB_WIDTH = "1" *) 
  (* C_WRITE_DEPTH_A = "32" *) 
  (* C_WRITE_DEPTH_B = "32" *) 
  (* C_WRITE_MODE_A = "WRITE_FIRST" *) 
  (* C_WRITE_MODE_B = "WRITE_FIRST" *) 
  (* C_WRITE_WIDTH_A = "32" *) 
  (* C_WRITE_WIDTH_B = "32" *) 
  (* C_XDEVICEFAMILY = "artix7" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  (* is_du_within_envelope = "true" *) 
  blk_mem_gen_0_blk_mem_gen_v8_4_4 U0
       (.addra(addra),
        .addrb({1'b0,1'b0,1'b0,1'b0,1'b0}),
        .clka(clka),
        .clkb(1'b0),
        .dbiterr(NLW_U0_dbiterr_UNCONNECTED),
        .deepsleep(1'b0),
        .dina({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .dinb({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .douta(douta),
        .doutb(NLW_U0_doutb_UNCONNECTED[31:0]),
        .eccpipece(1'b0),
        .ena(ena),
        .enb(1'b0),
        .injectdbiterr(1'b0),
        .injectsbiterr(1'b0),
        .rdaddrecc(NLW_U0_rdaddrecc_UNCONNECTED[4:0]),
        .regcea(1'b0),
        .regceb(1'b0),
        .rsta(1'b0),
        .rsta_busy(NLW_U0_rsta_busy_UNCONNECTED),
        .rstb(1'b0),
        .rstb_busy(NLW_U0_rstb_busy_UNCONNECTED),
        .s_aclk(1'b0),
        .s_aresetn(1'b0),
        .s_axi_araddr({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arburst({1'b0,1'b0}),
        .s_axi_arid({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arlen({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arready(NLW_U0_s_axi_arready_UNCONNECTED),
        .s_axi_arsize({1'b0,1'b0,1'b0}),
        .s_axi_arvalid(1'b0),
        .s_axi_awaddr({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awburst({1'b0,1'b0}),
        .s_axi_awid({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awlen({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awready(NLW_U0_s_axi_awready_UNCONNECTED),
        .s_axi_awsize({1'b0,1'b0,1'b0}),
        .s_axi_awvalid(1'b0),
        .s_axi_bid(NLW_U0_s_axi_bid_UNCONNECTED[3:0]),
        .s_axi_bready(1'b0),
        .s_axi_bresp(NLW_U0_s_axi_bresp_UNCONNECTED[1:0]),
        .s_axi_bvalid(NLW_U0_s_axi_bvalid_UNCONNECTED),
        .s_axi_dbiterr(NLW_U0_s_axi_dbiterr_UNCONNECTED),
        .s_axi_injectdbiterr(1'b0),
        .s_axi_injectsbiterr(1'b0),
        .s_axi_rdaddrecc(NLW_U0_s_axi_rdaddrecc_UNCONNECTED[4:0]),
        .s_axi_rdata(NLW_U0_s_axi_rdata_UNCONNECTED[31:0]),
        .s_axi_rid(NLW_U0_s_axi_rid_UNCONNECTED[3:0]),
        .s_axi_rlast(NLW_U0_s_axi_rlast_UNCONNECTED),
        .s_axi_rready(1'b0),
        .s_axi_rresp(NLW_U0_s_axi_rresp_UNCONNECTED[1:0]),
        .s_axi_rvalid(NLW_U0_s_axi_rvalid_UNCONNECTED),
        .s_axi_sbiterr(NLW_U0_s_axi_sbiterr_UNCONNECTED),
        .s_axi_wdata({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_wlast(1'b0),
        .s_axi_wready(NLW_U0_s_axi_wready_UNCONNECTED),
        .s_axi_wstrb(1'b0),
        .s_axi_wvalid(1'b0),
        .sbiterr(NLW_U0_sbiterr_UNCONNECTED),
        .shutdown(1'b0),
        .sleep(1'b0),
        .wea(1'b0),
        .web(1'b0));
endmodule
`pragma protect begin_protected
`pragma protect version = 1
`pragma protect encrypt_agent = "XILINX"
`pragma protect encrypt_agent_info = "Xilinx Encryption Tool 2021.1"
`pragma protect key_keyowner="Synopsys", key_keyname="SNPS-VCS-RSA-2", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`pragma protect key_block
sbNGmomEbP78s1hfxgX3P1Jo01EKJk0i0C7iGpF+Yibr9EK0s4mcIifHDN/ag4jpPwW3bPllMHvn
U8AEY3mO8hCXVVoilrcRuCaEna/98GycCzy4G7FnYMfowsJb5k9ifRdE2jnurzeTLFbupUSpDF0H
Rl3Ci3DTGeExAZZ9UQE=

`pragma protect key_keyowner="Aldec", key_keyname="ALDEC15_001", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
zZZZoIprBFYfDWmCCcduELBM7HU98/+rvP9g8+y1mYyD3r3HEDm4ZwehwZvPoYWqoGXYoFqWZh3h
utt0abIfUW9/oF2vJ9hXn7nArtcm/Eui18rPYqp3aj/AItPNVXojk9zp7uFZLPTqcyig5v3Jtenl
qPnLi1Z84ZCW7NIRw6Y0bgmw6z26E8VPbYrZHs+0YW8Sztjo6CdIrQeEL5WBDolA0aHoKHWRZyFs
l5eRDmBAolj2uF07t/3eY3J7cYJmEDaoZ0TR1qcz25VFNu0OlcrEJ19IT+QdAxTah4jqJtknGZrT
6lUMwDZ7dBQwF1EuaE6p90gGNERhGAsbHLdvaw==

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VELOCE-RSA", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`pragma protect key_block
KUbz0Iu2faeWqD6HFeuGLtSOAlqZmpKCCJfzym8tkcWUUNgNMn2mYvx6PTM7j4tyig8JdUG3uZYs
NfPgAsNXQtTI7b19u9CkMks9jR+oEzX1rW7QtTvSj/nHZLg2smoFwuB5Ieb7/B8IIs1NTUrIz6Rc
itLQVG+L+GMziamsrx4=

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VERIF-SIM-RSA-2", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
G7XYdRx9VGclyxTEtwMG+rjJHV8bfBxEGdkcN82UL3koN3Dt0M5AWkzEvHcskt1W0hTOjyYgmvYj
/p70w1nz96tlg226+e4UubpRmBH9QXBBX6UmqIwSiHj9H+XI1yNfTIdlwBKGQvfzwCAMwBwrrrGL
/804k5Ux3RhWRvwezZB4+sj9DFm4akREVXmNpfeqjI2X02LU/MxWMUbKxvjJnD9YxikAAO6ccTd6
8DKv76V76MEFVyXc7E2FeQDToW3lqkRTa6MTpIXbYSekRihQC+qPVuhPUneA4kepvQDfgFYE8/Ir
gu5gK+s/qNfuXhJUAqyLjslrUcY4+XD9ckpSvQ==

`pragma protect key_keyowner="Real Intent", key_keyname="RI-RSA-KEY-1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
YXkYRXpUPv/tETnwnThdQ46UaPmI23lN9vrxHQjIOhq3WNJCuz7TYZK9hyzSdo6k0U6QE9ihQy2L
rYZg68RGbrK8bzlcnQ41r18LZb4GYlAn9PH7IrF1B+aHm3578doOZHf8wzUE2s+d1aHQIn6VIZjL
14pCTAjErJfMO13fgX6h8sgxb4GFC3eIORmkrq2J/fB9HALyh/qdGiLi7DejMfmdsssbOcPQTZUh
6Belf7fHTkIEr9B44rFZgMyrMVx4N9p0XpXD3JPe7Xeg6a3jxdqxHATaMuLdIa4s+ZiAz1TRx0EO
FFihCnLLb7weBBITQyTIncRL817BrF/ZXZD8Yw==

`pragma protect key_keyowner="Xilinx", key_keyname="xilinxt_2021_01", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
g7FbNw1ywd4TBNHq8OmK/4zoKI/t7vKmyT8R8SeiyUtKywhn0/7DZ/lV0Lf4IhY8X5MYsKtOQ5l6
DIl3fxtOhxpi8NHn9Nw3Nfb8NnS38Zuy6DSpwOL0f/GSmUSf2/YdB5Ben6xibQT0Oy//oBl5/1kR
pV5fWjj8WRgI6cnmfyj3g1MxepxPu1A/UHxlm1/i9yUHHi114N/hEQ0iujjrn6GxfZSiJUVF+r6c
rnxD//eOAl/YaxhdU/KhUkfsMn+MxtA5m6hTYYE0bnze8rpmEU5UGYKyY0p8KUs+MgsdTe+m/7gV
HSf6puBqQmEa1qksRfl742aL9B9y169or7Jp9Q==

`pragma protect key_keyowner="Metrics Technologies Inc.", key_keyname="DSim", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
kd1A2zIphLxXB0RyfHIqLkHXfWl0n38vROERuDghYrhK0ItcWGEP0XBrri6k1VZCSPYwiSu//pM6
83BfcPKbk09/A+ksvDIa3xS8Tg7DJK2AS+0pdnzBSjVWh+QD+glA3Hjk6LG9OMbjXyqD3hnMKacA
VRMwxKktV+KT5NXj5a7fMxXjo9exc0xM+woUJiSYs8onoUSwfBeH5/xhUy+iu+w0/OOydQE2LXZ0
1y+RObiz5C22dD4GGCfuvUCGAthYpUf633ZxRYN45mmAn5PxPsH4o+l2GhH/50Gu/VPVoAWDhgXQ
e93oPri++HinkK2uvDhDl4PI9HtRkq11Ky3uXQ==

`pragma protect key_keyowner="Atrenta", key_keyname="ATR-SG-RSA-1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=384)
`pragma protect key_block
gDrrFgXHVyBo+Cn0bYn+SOSOCXPg7besukY6l0JmA/nu4gap105Wxbg11c7TJZ9ctHVLc5DXAxr+
EIvFpAIepoZBREtMjTlaIdNJ8k1nUpwAv2jaQeseq1TudTjugV1jtOYYk0RKd88z/6SJ8t9urDW0
yKqsfEWU3PwGcUGHOWtTn2hfAceNznmEIFWLmFmzSQJ1hQNdsIQn3jHnfMVYu8cAz5xvPVQWYyJW
pMHXhNYk6GyAjIshh991slb1g01K1ilR2tKD1EmxH5WGrX9BEUqBjHQo6uluC/d3mvcEQ5nJ1v+P
hIlj4qzUQT1wXjpk6d/BvNx7LyWmj5iq35dzNm+cdhfGwaFGG//vgmB6D/dFfs2BYSjHsa6VlpVM
7e2OgoFenuG9p1SVPI6gAs2MuFtnDKfxW7jS3RGhvsquS3tg1iFCDH/OU7E5aWfY7twF3yyN6G10
l72RZw62DfNoCdyUMG9sA8nc4qf6dEhyrr5S6XxpJhoBDJvkeq0TCUQZ

`pragma protect key_keyowner="Cadence Design Systems.", key_keyname="CDS_RSA_KEY_VER_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
XR7vRF1m+9DS2Pv4r/O4uHwmvtXkChnKbsJCYczn1dvkZbcZSbBm/2UH78dXUaNorOh9XAuCvSjb
ER73y7e0anAfaIf1tJ9Y9pIb8EuNxGS/Pqdvg36cWarwGac9tsscdv/HWfb5Z+qWEk0/uFcLI7pH
CZO7fF2/ONQjA0NtUFBjW4idlx8WrySIuJgDs4jyGkMhbHR3U/ghF1YhMhwgwsbbcptfC1XLrIqQ
OecZnZu8E2hyc5eK/ccYdKcHnXoL55z1p5amI6Fuvz0wKTz2QQ/mwXodfGjEC1ZRWwTn7zCFM91M
qrA1Is49i6pSa7/VICjgn8ULMT1oKGfJLPm7hg==

`pragma protect data_method = "AES128-CBC"
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 18976)
`pragma protect data_block
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
`pragma protect end_protected
`ifndef GLBL
`define GLBL
`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;
    parameter GRES_WIDTH = 10000;
    parameter GRES_START = 10000;

//--------   STARTUP Globals --------------
    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
    wire GRESTORE;
    tri1 p_up_tmp;
    tri (weak1, strong0) PLL_LOCKG = p_up_tmp;

    wire PROGB_GLBL;
    wire CCLKO_GLBL;
    wire FCSBO_GLBL;
    wire [3:0] DO_GLBL;
    wire [3:0] DI_GLBL;
   
    reg GSR_int;
    reg GTS_int;
    reg PRLD_int;
    reg GRESTORE_int;

//--------   JTAG Globals --------------
    wire JTAG_TDO_GLBL;
    wire JTAG_TCK_GLBL;
    wire JTAG_TDI_GLBL;
    wire JTAG_TMS_GLBL;
    wire JTAG_TRST_GLBL;

    reg JTAG_CAPTURE_GLBL;
    reg JTAG_RESET_GLBL;
    reg JTAG_SHIFT_GLBL;
    reg JTAG_UPDATE_GLBL;
    reg JTAG_RUNTEST_GLBL;

    reg JTAG_SEL1_GLBL = 0;
    reg JTAG_SEL2_GLBL = 0 ;
    reg JTAG_SEL3_GLBL = 0;
    reg JTAG_SEL4_GLBL = 0;

    reg JTAG_USER_TDO1_GLBL = 1'bz;
    reg JTAG_USER_TDO2_GLBL = 1'bz;
    reg JTAG_USER_TDO3_GLBL = 1'bz;
    reg JTAG_USER_TDO4_GLBL = 1'bz;

    assign (strong1, weak0) GSR = GSR_int;
    assign (strong1, weak0) GTS = GTS_int;
    assign (weak1, weak0) PRLD = PRLD_int;
    assign (strong1, weak0) GRESTORE = GRESTORE_int;

    initial begin
	GSR_int = 1'b1;
	PRLD_int = 1'b1;
	#(ROC_WIDTH)
	GSR_int = 1'b0;
	PRLD_int = 1'b0;
    end

    initial begin
	GTS_int = 1'b1;
	#(TOC_WIDTH)
	GTS_int = 1'b0;
    end

    initial begin 
	GRESTORE_int = 1'b0;
	#(GRES_START);
	GRESTORE_int = 1'b1;
	#(GRES_WIDTH);
	GRESTORE_int = 1'b0;
    end

endmodule
`endif
