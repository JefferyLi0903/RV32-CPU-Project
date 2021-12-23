// Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2021.1 (win64) Build 3247384 Thu Jun 10 19:36:33 MDT 2021
// Date        : Thu Dec 23 22:30:45 2021
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
a8MBAdAtbI+N4fYx9dzmQ0Uct0EXb7gHeos5Qz+uvpe3UyNQ0wyYsY6Gk1mEjPDCEK/mKXa7RnH2
a8iviBxAmKddHvzHLFkicJNkBYc5yCCpbks7stTgQQsWazcV4FU0EaGRPzlNnpd11GddvgXkzs1b
1yhUPj7Osj9JA1noWgPq3imVly6RGYUpAucCipfhR4j81inznDQ5joKygz4uuNIlQazS6Ql2bWcE
XG5+4meIu5+NdOrn/pBoieO9AqwJR8KskvRmZz/EcGzTT+kptwDjZ4pr5ySbz/RWcTpFVaav0die
MSwHTifZKf18udktlARfbWGCGssgh0mEOlqGl8rZawQrf7AO0CWICIVdvw+EkxdmMYE/fMyJ3RmF
AcB8HmOHkD7tJKweWDrLtm0cRYMZH7tH29XHs4tOfy9y6RFbkIwaMYZCQA1Tlcz1eyCEZx5eYxnN
mr4X0bMzlrzO6IycBnGfIKUogrBX35BtTbXEaYMrEr4j3I43iHbaVGlxeZOM5/U9eJ9c1y1FgsnV
nyvpAsnPzUcmCe56BQj6r+5udp6UiPmomAdKxK2+5rsRdsh8OPQjwmxOkhFoWWGKAYtWzDEHevmh
lkygZ1KszyBkon8qQmFbzDIbH+cc3KA+dvotGx/QidUxt8z0fqC+P3nRu7ec8qP+rpGV4Cdt2JTx
LySLKjRC/MIT9tzW+b9SFf+3KcwW37TWTtNWGcir9x48lp0kx/SMo5XKRpIdp56l35hbFa0EeiWc
kesSJ3KEiDIu84KOB2WYViA5dOZm/NapoMuT7gWKCIUSEG44RZAO6hLbbCCul845xZB992ys1cql
tP6HJokRpprPZDg81G/K5JhadA4KkkOz4eZ1ORmd3ysvRYd/WNgTSjUnV/KK7PKEYFGxyceIdT6V
6Q7WF5H03jX+8OFiw/1iYJNm/qXUwe/rdBvf1sgufPvLLpb9hmQUJ3qYE33kiJjz4t3DXYT5J/RY
mxqLJF6YVtH4DfxKSBLKa62wM8NTvY7CKOKLep20hJT++jqQxmSdL3e9Y3gigFZ9B4hV9SGuzKnD
+U1b+3cbmj5wbwCm7mwlzU/MXErcBb7MlyuRh+p5Bt91dFT/QJyR8GNMHKo6inJXnSqB/ugGgSRy
bvWuhFnqL5ahAm8OQTQZTmjhlVFzZYoLXta8WTW1wl6fImWv4d8oc6UxuRzqtUtTK8Pf6ukl88tq
xwC/+jDiM+lOJFfSYl4uFKxV12zDNgb38FH9BfoaThzQyCBzvcadUXwmhPQLBlHtu1qPoYi8fO8M
K4TY5e8LXFs2b09WCuQB+eX5h71S2gk5xgw5P+gbh7q0Y1EkKnvgAyZyUdL0T6MwSdib7EjVQGQw
R+SZW1Jq8KekYPYibQdJdew4iGHV+D1m/d/EaSRnZA23hUhPSBVpz55EGmG6i8k0dnJHy9J/FNIi
/ffrGfOBTKvhr/tzSTmgrmqh5dii695BF1FbsrjE5PIlTpIfE0xzJLpam4xIewuf45RKUD9K+JQh
EWu0/gmIMzbqoUNNzmx7XUBBd+1Ns7sffMTArprnQI96Q1zfBVF8hQive9FwPIOBkNrCihzdF7On
0uuslJlaQ7dD4p/fid8ei7h/aTV3N9IDg3ba1pS7S7dIESEDRoUumjA4qk1gGliVoxQ/tmRL7q1n
SPGs/3k3xa2oQShlF7Xok3fn3Og6xuVe3o4gOJvGA9mKW+T9iG21MHgDhvODSAoq1FKrfOWiJ1yW
eiIcE95wdtq6g6++jGm556HE891xN3wY9YiqEZlC8BM8zXc79dP8WXRh76PUZNVtLTQjKmZ90liE
rLuj1IAKxtPxA1wMfpnthSp/qS/M+BUdoRqki6vxkg6vVkvTDvTv8SINjU7GYbenOk2xx5UekpjZ
6Dtnc8Z6Syb2X38umhLfHQtnZAvidd29Wb1/DBjiooa8KJqNgSFUgmd3k6rAtST/KlQXFEgpqjXT
8RBY8tvejw/56z+wLOqpz2XRBBMS7Rq0WaMSdu8EMPRmL6ZGIsmrlGojsd3+/tof2SA7XNJtHlpS
MhEkcd5wk7xF1YbnCfjJ+LWnlCwRsRlDfG0cLHA4QPD0DHOzf1ECheS9YcvOPFp289awSYNSE0Ly
WqvsktnasE9xOITrCsdAEGDvbXaKWShHvzD8OSQrfYyaufBxaxIWzb+rBw2lI6cfXW+hT/C0DlzU
TuWfYF4ydgUYxYnLS/TagxdVR0tMtHNZtwDjBdlOr6lfjpi+rmRUMC8GjVrZNp8xJ63j7jIuPDl/
LVCPfMbbt3ejsAIqsMx1dfnuAjQaWk4fSswNfm46BD2jD7o6m737/9ZN38YU92v5D4YeU+O6ARQm
cS4vlIO6BbOvkSdrZ+vi5tEF3hGJVR0Qr6NPo961M3lqvokZD4dUUwe73hIMN2v2PKYjuaBb7E0Z
ziY4titnNGil4t9lkTGcDaxJdCFoVoSuks9wtPIazGpNitKhJZLTxHRpjV3GMixGNWzJeJkp7dBi
GXMnK7jYEniHODqr6RHTslMIh5BH8EqcXbXhsdG1XNcUwXPVRpDN34p9J3q0v59kMwdEafrntRYl
JcObTh5HKnE8xZH2x45l71lEMFH4+X0VhQGRoKGs3L3mHaWTF2FWfsKKXq1cNPSTOGb2O/+1j2Hw
gSW4dpuaxIZIHE6+oWADrF4lkcJJwDyl7AZUrqH0jJKgVY8n4aZMYgtaHpG2iUf1Nm8DfqWXXDGn
UtmmsPL8vH6tIB9mDgxbTIwsbBnuGHUWTPhmCa7g1o4TLPLw+YxObnU3uzthIsJTEuAXkA8FMhQQ
LwMDUUMtCmzP+RGLFM+xfKMIWhiIlKUVmAqVHgMD9MHOUDbb6Bp377qguh2DDbZKPSzXmPO0xg8g
U7ivT3g2QqHB5jG2vX3YAGERLCBrBXtQVkrEWjT0m9ST4tN8RYMT+uQIGMUQzs7NX06GkxZGUcVE
hndtcXQo7zYwt7YC3JfRDiW4usHITbrjBhxdbqHNMPXet7rEN61Vj0ZAjtVYa7lIPu1kkEYgjT6M
Eyq8cIphoHLEfw8t2LM6Jd6zaDUTocjElObGGMcAmDHvxr1FpXQf2mmsV1C0uTRu6jvR7/bCk/zb
/10Axzu2oTPGP7lP8u48PHktEmp6Klqluprp1JpmbPN/95so+iMe9E5/gJk/chY/2cVohUN9u9w+
8f7aqlP45BoI2sqC3bh5vK0e9gTFqYGZQBWUOwMkMbWWM5eEDjNk2YRHeHeljhCSDiO3532Y6/kT
mw+O1Gbg9/4DKI1QQUgKDwkcgJhj2SJR/EUHD+9Ve+NJhsFVgQJ39BxMg6/I5lg1t+s9Azw2J08U
BgQ5Ttja0c/bzhTQtUmS85mT6hdGCxDJLcjBWNDwr/MoVddy0Lw7LGqJhyjjANNv09t7rRGtuJ+g
czG4tBIoamhkAYlRFw1dt7jnR2KevjGxaAr1e+reO7mRcfxjMzRQzbJB5v6mAdAm5Xrn9Ys9sIUK
R0MGK8SRs2CKHeJe1Srv2GQ7u+s5lestA3RnYTygCaBj8aTTDzLTnesmVxkcMwfcEEzW8G4BARbT
49q8Jw4iRw5hZ8qkxcyb6XxLJ8yKng0pnpK3o68Sg8/9f/zHXHb52M9a+1hW5TolnYjTeCgqCSHm
hn97sp9DjJyBy5ayh9bn8t6m82a6czvprmwU3n1K0LovN5Jr9iGSY5VEzjXJa3NdDIZ3qT+f2+5j
2mUdwz/jCi9RwdO7NXWzSztDxesr8BODPdntAC2dQBQ/YeqOZCYG69yE2nP113OXBtonguOdtYky
JWhmE1J7ZMRGv8FSjWDXhGjTGmilYIRPHXgg/f6DvQpX5T4h3iCMZNT6mNZhg4YhBxseMl3Sts5j
0MzosYb6fi+5Y/mau95NqWRgKzAfoKNuNN+rfmObw91H+YKA4czvOn6XU8CDowJ9jbz9uXUzBX23
pXf4TkXEpNK7k4PBYxodp/lemgD4lSCU55vq1F0B2rIx71qtX5MCR1FgR19OEJi6fmc3ePhzWQKG
UFQWo5CMfQYtdTPrXHX3d4asx5qJpk9s2CfHeVt+/LNdIIIlgQVgcBe9YQdln8GFSK75fZqwWZc5
RyPt83VyMj7yR0ZimYeFPcd2+I3GhmL2wkAi8wptb6HZvU+w07s/jsyWzXTW+VR5OOyqUzQXDVsr
S3bpBTZwzQYfSpOeoVyML+ym+wE6KhawismIdfKGonvXqcX9x3aWvKm7Ayjwh05JMUe152fFEEBP
SO/VxtlJszDUc0HJ7ujYNGaRd5w9bfdKGRVk4xUa3EGP9quzsyytKbXIUpbg0GqVHlm/i1JP+V9i
uzuYuBaYohQM5VkXD7c3aWMYOWiBATP+rdtVb4WwRhQYIBPaAZekAmTsZZhgOhKyxrhF9dBrUd0V
i1li6DB6/Ndym9bd/lAijHeZpUbggFKF4Qnqu0Y4qrYQyeI/KOTOWiWuRVXIWkOfgXzEf6IVh/W/
J/t69Ak354ETBdRmmvm6kG2zHfwmKF56wfzl8Xqz28/rSVfsUg3RBReVJzzdbF7aOAehjdE9GAvs
W/97tOl69EcIUgPLa3wrNprwgAaXgY/Z/bTNDK3j8KOw6aktsCPUnOjJ/e9yXXLHQUSihzFkg+Sm
LNfjW3s9ZCA5B1RuwZuGyGitZ6PXX3um7NDVTOO77kOMDa1ZCYufB1RRnzt9rUxx9OCP/pk6daVZ
GpcQRrG5323eD0G3ceGIWcmZ030QHjOWt/bexOUACB5Gp9x0hDLISnOkNWYvuxiYt1qiPAphzuK4
DDHP/apwisuN5ovyg/8jFXEK7eYIKa1O3GLC3WGTrG7jghWkjI2cSG2Yjd8n3oA1yEHCte2615XF
ynZ+ktemhVByf6NONwaZXwaVHFu18ijbGt7m/27G7Pwkuz5kSFWZdLKrbaIVObuiTx1CBJW/HcM5
YK8kDlQ7bcegD4YOMfBfPGhcYlZ1Zr+Ai/j3mZk9wvTMmWBa4DHebI/DXUQ8jBY+Y3tiyV9xBJNn
XHCgznW24HgavIgZtOc0xgExuEbLzXu75tOfmFt+Tsr/0XFMDIpCXxcMrDw1pF0iJG4fF4IPQusp
9d9McUATegw1NpQunc8PM6/hC8ZzGgdIedAcjKSbMbB9FEZhkkw53R3Q+Uura/z7ynlCNd49feQk
B8lRJSLoQ067mwPrAe1AyVEFkrpHMFON17f0j9URn5pgQsn0vHVDUzPAafxyKH7RIfC/Hiyv/8pd
EFwLt+zoC34pU+xgVETJHVQC80OIOWY0e1MhhQ3gjh6YFbHigKToLGUa6OYl0oIMl1IJ2fWbgMXt
dMjZPvhI+IDgqQqrtro1M07T5ax3ulk8iLjsPnfPgCxcbvBfIIMXAteNxnV9bMBb7PQSliGF5tKw
hr9onqFLKYm5T8ES4LqiDNHle7HML/S3JWvwM3C10O8usvJdo94IrM/U3eWIQXGN8BlduHxQb/5Z
ViA2XkQcx7meo+dKmRjWN4u6+t0qJ3ObUvYj+D0CdjBsNUpBFtH4Ij8VUR89jhpri3H60kD8hSUp
yWT+pHNL6RWXUfuCM3moss2ypYp6H5vppVoPSh8p+PD5Uwj1Ncs1VGg3QB6aOPrK9jmsXRwirUFP
O/prxajBqJusjpG1wttHQ4GMslIBNQKGbP2KCWn6yU8z06Iog+JzBXTB//nOWEX4mHTLE5UgOtqQ
lgcy8QNSYvnMfbqFlSm3igwWrV4j3fjRdDBIWuPK6mVZHBDZQx/skfNuaq2bNerz2x60qHT4TuRD
6IZdDp7HIshu9QngMp6pdJY495krUtNkBlW5e38FFvlqtESS9v90xJQxjsozuMbKwNPwm/+K4z7Q
tLZDuGITDXITUWssFXKcmS2adeb0DjHjP1SQO42drUN12SMnBNNkYUX0coQWTKzdMv1wfV+lz+tK
ICqKbHRbxTRo2m9XKTPcL6SeM495Lh3udTUYqK+iRIxVM74b/k2bKhAJyovUsgjPJuqjQ6D/D+lB
wUeYcjxbvKF1xMyU5OIoRxmwM2aeg0Z+WmUwDNi1o/qDdHuyGKu9fk1hHe1yNMBy0e20Lh4QDO2+
cSaZ5pu45Zu6x71i/udVMxzKHbl6a3h2wnAFglxozRuYpoHlpBW1uctBpUPHSyA+1GfU1gMevyUL
8fEf1lC0ZISsW1wztyR9zu7nWxq8LQcUKfUdwKXl89JwcZOeOhRLYmPIzuvNDBc0gy1ZuKFd40nd
CjWJc5u6MgLCk8P/KBMTe7wrslK4ZYGde9ghTiR7utJ8BXRtkcLKICPY4Fmbv7gHkDepz4tAn3IF
L3XoerCOeHcBEe68c54SesVJplWtuBWQAY2LLJ+mZWtcqGvqpMopT+MguKkydvvFnv39dhPe1i45
nqf7at/GZxwofZFxb19BbE9EDmejrbCOGHeTcKnIVzAJL2pNA3mvLLiNUd5wFQiEnq5peNf7elsr
WpFQ/ATS2DjrmCGDNCElzTcoJpWhnrf7mip2ZIGylTs8g6/Z+e73+ySA5d5ZUGefJKE5qPfSa3n2
VjwI2G7P+IuEL6s2V6/oHdRNLBEA82MrbhssH5Do8y6ry06g1S4EsNLT67e+jtUs7ZGmN5Licwvy
XGQZrWldN3cvpbQ3u0aqIxuxsyB3c9AOmWcec7gBLPd5dH9f1nG2sR1izHvSjlAqdOi2xyPZsKIv
yO4R56uhtFHntl4Xjg0GKloPsemAgN3aL2bymOMpI38ag/gLO4Q0+ER4tUnRdAlDddHO97YAEO32
uBK3nczkX6zjAGFj5YLPmUel3wei/xWRo3eSkJek/f4cv7ZdsmhLTyFVAWkTbcv0wplVk+1xqlqY
DvH/V9BGvGboO1uH96wFHdEIbIqI59ACYdFTJKkJpS428S5SP2VXRdknEWRdYmTophmabAOwkezJ
RpaZ/supelPS51J2lmUS7rXgDjwnUdvmoGUJmgiNZapVOk60ACGK2itMxl45G/TzOX9IUS96UtBV
Ay37UDRjbwlSqcwZjlBKvPuh125ixbeX3jEIgI+P3e6Peg5huOCp4m14PgL6jA40+pK6ZrxoFcDX
c/Z8V+lBjaGvCzDbwI4Lky4YmtQ2JeNjvwp2Ojil+36Ya1Q87+QY/TmoNmxnoSn3TEdsgGZcyATi
6n8tG0NEbQebgi3Ku6hZIMsnY2nlb4zC/7MaCTVGL3VkEAmllUVe1vgC8L6tBgiqGWma3LSFvZpZ
y0SCKBu/vf0E2MROKAVODul7bXrFcfLWnqsApULH5tsL4WTG2qPD+C9XTm739t5U/M++yi0aSWFG
JCrHhM3qwNQzAeoMiXR5Xyuwtbgy3oF1MgvcEhOrBOjuYO0BEfqm548fJGef4FglF0b7pUAKhzDq
vAlAMr9XhRyF3hkmpiZ2WKmWgZh9n0aK6W7R9rbfK3BCHaPdu9E6gbN7aFe+gAtl+Rx1g3Fus75n
8moW4TUi0Hgp6bF4XMX+gjCvk08WGQQvPOxls6fsiHHK20MR4JnPeckaMSezS5IHFpZ6PeHJRvfE
HXWnHHaTOeQ+tVsVbxYXelkmOEeyXXF8j8Vv66BquosMfMh+an72LWVZZLLrjNyymSjuhrJDQOqC
C7W8oY4x8SjLlgshj7tvhk206y6iHfSP3SA8udI1Jz428O8r4/9lUegJe1MCUcFIxeEnS/iQXyDI
m4D/G3BrrKwu1RH7TtWjGFjCML8WuKh/AkjkTEGZiBm+YO5ZxGYntjoQjOeDW7KdSJ8f1T2zuc4e
osnqYGH1Gqqg2d6Kf5QdXR8EBUaTIwsK2YXbR4cUroNDl+ZMcbFZ9ePxexrNvq2VRYfybhLrutpa
najeoM+iQNOR4uW5D1mbdZVEJidQvdAa9V+UTfyWP68owpVfG/Ch254UOCVDp0fw18LS0VNQEIIS
Q/gn+ot/WeXdjzRbJNTzC9exfX/7GgodWeeA76E9o5BucIR4apstdrfJZ4AZh8eGU8if7qlKfpp8
zDOUAIY0Atz8S1oAdAvdKAO0wZAjF22SoYoTrWgLGBDmO2DgrCfzBs4H4GWwmsUx2X1lvs9HGpTH
1vn+2aMAG7RBljdt8KxbN1QcoRK+KS/ZuQJ2iCNtU9R6+qqK01ptsTKCADdyt8E+v2xCXd880hJq
zJqI2QNj/VWRY4IAaquUBt38kUSU+KX14h+nsKR1Sg/ld5+Y9cFClGsLrnQTs/X1lPQ7XBJOaktg
ML0ToHCZFsw+31mTcJmlwZuHNRLhqvdzN8TlTM6YAyigh/4b8/M133+dMRx0bUknLrpx4yW76TTg
5Jb/nEkJbnc0P4hv3m5Eb6rN9Wy0qdF3QJGAFiNgIZY0syUsjVsk7OkkZ45nlQOIlBeTueTckF3E
TjAzz2Dp8RS/gpTiE/fqyRGzPU1wo998A+c74HbFWGH38hZfH7Kp2FrIikQ0FHultWB1aLou3+GF
YHiJDNDMdMECjTYWDh5FKhoGKbLJuJ8isg+Gp9ke+h9Ef9J8bvvAS1n7A8AMsI7udN4xefV5YL+F
99m+6kvj13x32nXbiEowsfoAN6TdO++r/PjSl05Ke3RXIIoGOQ4g14YzeTaiqvZ4/I9GSR01sbuj
fV3d/KePP4v/sRv52FK5F527yaRkG+YuJysfPkYEFcDAvQxW1bV98ElNtjsiryhNBZCq9KeE6mxg
YNvUN/6Sb1LlssdpSATdUo3R503kcTi8YuwQCYDQ5ATDSiT9C0tlcsJnqiQokCUFYJbG7jXY5pvp
ydFsNoVQ4HaCeAN4Qm5nPO06FAoCH6jowSIT0QkSLM6ChM9uC1XYHGyaKKmOeQYOt0q0wKoUESqF
mfZQO4SS/g7vKsuzUv4dEoV3Dfp8BTC8HRFmTjuiCEDNlwu3v39exlYvvei0pr4gA83IDypQWoIf
unXgFTvmJY0Xye5hEEEYVhfnttSB+TL9ntOT5Y3sgkIS6nEiU0HO/+nUe0mLJqB+C1ZL9Qk9LIei
QcXrOPv+tdk1LYWRkY1tYOERibwE5cSPZAKjSBS/S5EmgnCuWj4OVIucnkLUChOz3LcBywSR3aWF
Kxfxavhk3mZ312i4fg2KhuUUVQ2AQFDfO0pniRjz/OHxaYZFrNIeMXp7u/dy1oSxBuw8LMBIwNv/
D8LxqpKzBl1JObWCdTKwJf3IoiqGG2b6VQDOCVuGrbx3FKh3fEzWHgrCD4I8JkYowrzZCaM0TZ1U
Zg6xE723l4/n7Wl6dSFt8VhCuREtaDQWY83GbSXPuZePlckg6jjlf9e6JIRVPj/RqNwsfrRJ5SeN
1CVwKDBS63XKd4Ax90wSZRsLyRA22qkQX7UXvVgRQe57YTva2Y+kcw4aG7oiukhJ9UzAJDKB/Ka7
UpfZTZFGDReXv1ARTEXLZ5mWJctZqUKbwis2pSwIWSWC3XK5ilVhN3D7DNo17sgqRlAqjhAGUhzi
KZILytx6mlmLTlJbry5Kx1bVX9UPonqFilYfx7vhwqqlndaDLFjYVYws26aRq40ZDqFEkqjn1ZAx
ubu/1T6ThuUxsf/VRkpMcghVGlt9+huvKTOfrwbrdIsH8/HRh2d1L/kJ0qS3J90Xg7g7LJyojUHg
V0tpPqjVLaOXof3IByspd5b/i+7G24864VlhR5QBFl7FOF275VZd9IjL/bYyU+1VbgeauMBfZXJm
Ty/m7ZHqnXSmDBbZ03UWh7l0i1u1hylOegUPiE9mES8k4/XeqqGbPi1vmwF6AEkyA6z3vGOrQH+V
/YIMwJjE02vUP1gu4Xb62UfXQmr1Xi7xjMudp/N9e8XxK+EeZaxVJKubgPl28f1i83wpludCBP6h
6fwjo0r9StQz2jhhFrIoL8Z0YKpKSjR9tuJtSQf37nMTSkagJHnI3VyrlPfUbBOgIqp2b7GD7S5r
pFPyREU7mFmKO2bAa0J2IyaRlmb2db7QSCtvKPf+TY/neocTPEDghQgRbLCWjs/vYfjhv7Pmn2YT
vHb0TB5teJahL0NRECH5nD4SN6B1IY9D43w7EFTI6SBqXAzd9ASeiLejeNhV/OTM/FoeH4MfD2YB
27LADcp5yUZ3Zqj2GVB6q1uxqtu1mTbG6EaexgXdFImjjO5a/z361InD5OSQhqTbcwWZwpkpInDr
A9Qrg7JBryenZt6U8OYzlXLZ3qy553gMkRIGDmeZaEkrjMTDhpEpFmamX64QhaDeR/uW5vgHgUo+
rivGJ9akm/RxKJ6DrlsmCaWxP0Sn+HUjuBGl9+moXAWT9Q0whgUHFmiLYRnfwV+re/U1zGG6h4t6
gmCdknmqer1ThSElvTHQxtnOZvNBZoHJalCevg9ZEBKN+etA7VvO+AaoQUNZDfZ7oDptBQZ6DkJF
8GtDm8OKJAjjVPtDTMBMnzT3fJB6rakWaunq3FHlAkKceGK6Y+Wm1RRgsAhWN2vR5WBXYHiw0VmO
nNdLiiiry021GFo1ELuQnJgS7Bz7KqSVRPSyZLFmxHIPB/7BFxR2Z5FyCjv42pYlCO1pZJ2WfX/N
FF53I3TGAoeNCQ2koiri44S0YeWd/c4z/rDI5acXA1mi5Gtx8qyEO+qer9EMM1RKdNwQKIzBwOE4
4tuCNLGZwo4JG1P1fl+kDQ4wiScujV2tISKgCPsUl1qsjDpsBeanXYgKcD4zqb5kUC3MLD4bTUN1
4byt03v+Zuoi6oA6N6fZYWCyoWZPIoC94Tusc4GofVZfxOKrP9CmFPUOCPAICIFqIEYrduRrWaxy
Yvwh78UV5X8lNuqOnqb+zfOYK1kW0SR4VJJ8SjVOZ5QAbqk+f2OgcuILcATZXNFHul/nzsnSEFmk
ngxEm4ROBMWKrKeAaeapgLONVLobQJcuxEoTI+osEVt3tPiEoCkuNBqSvMbkYq4ky8jVUvte5v17
kN+4BEK8RptvExTxMi7gdBl6WPVv6LSnmB5U2nOwHkwDauv9bbccOgxdGYNfyVUVzcwI5xsofVt1
1Ld+rby2MdqLZun34/jI3un6tKaaEcoAlGJpdQzxlokQvcPTIIUzP6GKfz4yGBCNotFMsW+rLwFN
a4Q5frfJ5Vke5Hx+/sW5WCuuPhz+U92Vi2/if7HIs6rAI/8gMefjYDRBb7ZR+kt6wXvFxbTPUooj
APtKkszJ7g/a/l9ASm1fSu8isHPxcA5jcQzR34sNxiwiXnAAEgGTUksKYiWadLISu3AR9yimJXjg
Ua9lKPBC0ovLkXaEm3xHrAJFKnDfPu4vjHRU6Le5B4yCiJQhumjgNp6YstIS9ywbE4JdZDnkdiom
he4aAY4c2DAPxXsi8G3/maFg429dvW3nXGsjjbptYywu9eNcpy6YRXui95ycTUw0ZZxUMicQVKYu
fHLNKzlU54tCqF8e+0QmpOSNVefqg2phQZh19njbhwwo+Xr+BvQZgIMuouO3i5DxaIudlX5d6dca
4ahrea2rzBMYxCC1Do2WPdFMV0TVGxnqZa7is6oykEoe1W/XMBa6zXRipldgNHRoPsnrygaCORCe
p9YWOiMb0hELH2FTqP+r8hFVNxKHp3Vl7hZFsyjp6/mjq7OolbQ0f11qRAUlh7zMb/aDhBBafCzH
t93t3jNxlkk/lgR4owTHGmzrjZ8ixaZkDxKQ1it6BKoSNIJ+HKlv60d1SASZ1+snHxuodwRlsIHV
qALyJOEj+J+VtouykjMjiFC76xuQO6F9RdeQ16m7Qtsfn+GolfLAzRIoNdrthAu3Vn0bhT6CR8Na
8GwNenJBv1tiwVlTdpLPyj7vIX84tMCdnT3zK9etGnYnagDtGSB9q48RF0PpN45gKbzf0s94qDKa
T9Ns8BGMYaRGySsB8e0xvHqWM11USD6jBPk4hKxisQK79cnOL+rfGpPI1iufWfyg2abQ25EopAmY
I38WUbVzRF50j/FalTBbEE+McAk+tdQi/dnfJP9vRdXYf2UXne4Riky78BDGRWtqGFup+aL38Z7l
oTB72xbwpDHSOiuacKnga05M6ijAuvRjRwInmmUkaYFcO3oLpV+MYRHYzYuZFYdyhLW62S1HGj7i
HR07s5ND/UQ8s+ZkKjayAYI6CV1/3AcagmgZ9ocPkm40lWHStbGnZob2r+Qqn+s4UwG55/EPcYRw
Zjiup1szwK5sF+buMMPjfKm2RrmGUrSpa5259wYoxGY50TNVaqTPmgmOWZg3j9db/r8PgR6IKsxL
j7YReyZV3ypIgWHym7qAaFSHqW2mAH43uw5fvmNdw/6kbWOvCwl7Asd5/1x0SjKJLNZT7NBmr7sV
2QLXKlgru6rOXI12ij1ovANEtKE9siganluqAUlxd6BtcbkszSPtUT2RJMRlv3Xaxko24wGkQO9Q
viUPozkpHD823fr/AZ4LO2xfwTJtLiCG7EgXq3Lha/mY9LnZyerH/kqgsIbicrn8zSDXzpCufVEt
UItq0IeZE05XUW5eVLWv4y3Q6FEZ3V1hZSYPK8j0tJ6BKg0UMG4LAxGyuvQ/a4ytI/Hp8vFtwkWp
FgBKVDkWTH+rU91elH5PlruKvGJRVTfa1/Cgr3Ooj9ZOarDSRzMb8zTL8fpnNQT2QTVl2zewtqxy
wp0sukghYkGPMX4ze4GLCTmS0v1meWON7mJZqsNTtS6vVbTyfXdShASfoF4EJnlWYBVU8OicgPxc
nn4QO7k0zu22xkIpUqOHzuawCeuzv19IWYLWzL2iX3gO9rkWcMka4MHYAv+XUNn8Dw2lCPPAp+to
NtvffYajDPr6VrCCGIL/8BDK+Q32C9neKVifQCg0zbkops1jWS7UYoiUfHobohZXjHLpi1mzf/Zw
OcIK+1I2naogT5PB7jIeEf+RtivgFZ+9thJoVDrVAToLpQh+xyS1l+6rN0+3K6B16UoUmuhrgxBP
oEBXrCXhYhlWy9X1Kzj5PyLjMHfnZDv4G3C0G/zG7R9CNuQi2P4LoO1cSEJ111CkcGZl2Ti9lX3V
sEAxRJdCM5Q7kE/mCbr3n/w/SlKSVYXzkML8dVw/fofWWzuKrPOepgr0Ekn/wihfpwEXpUCAlEs1
nFogaElhUy6v5vcp5fu6/mfsREMY2b8pgfeOAkvZQwNlLF0RGL7ZesJQseC15dkHcHQX8Uwqz7t3
XK0QU+22gqeJQB7J1sBu7kSfQVC21gJTPEhn7KX+a56rQ/rQJFaZOhAofmK8NESaRTr8/3bcztKy
Scbb2DkrF69CAsKJ9gyzCAOVPReA9FwHfJ60cLVbLUeALDnn6V79tjFM9XHMuEmX2mqA5cO9YCgk
zXVh91quCG/fz7GceE5GYVGKHLQcVZA7ydd+Y0r3Yc+lE64KucGHl0pPG6GW84L0voD92tC3zQij
C4jWs4dyfHCxjAbrjt5mBa+tjA1jylAyGSBsZMkK+Cc7L+rTXo3naxKOBT0ezFTy9axBqnz2b2Fh
Y564KQ9GQ4ncosB2JOjXEoPTEPjTtplf5wTdQkbqGxIvMvvWJNGvy4ECVOPyOblEZpYad4rlKIUX
ZeaHRzh1IBn+YyURbYCJhM5CFlWefRCAWR5bjYVz/eFlfl0zp18GwKnlXQdQ9tThZ7R47h5GG0gT
SXjoRsgUdG+qG839w32uOmnyJuxl4coojkOHwL2iWxQTVsOpS0Zs30k7v2Zd8vYZ9GLCeJjJtWwc
P5qrIc0RDnopLYs87QUzuNrZZK0vcC/l7c5IFJGZ/OxiagbOEHW7ntDz39IIuXzZSVCFkNZPBxti
Fn9QahE+p0++yUXkeYfU4eyS2J5ztzV2m/rR/ZxJ7QE/7d+SQ+vll7s1TAq7T8muvki7wPuafLj1
p7AVdqQWJ60a/M9eDV1QeAbauXzzThczMJWFlYU5RIr+NBSbGYEQD1BODBBI4+Bsbk8PFKaYBipX
tKNoiBZl5m037Y1T9DwHXG2vAtosFJQlFZnBdljRW2x3siZ3TILtVGGTCpZmvOfmzyPoPSeFh35D
iUjqO+QT90RHH+TV2XHFm/fy6q3Tl1lXUI9i0Y+JIazp5xVFXfVSaAvYPvZpDr1vtAdpE76TPGVS
a8UeEbpOX3H3eR0cgaMXF2hkon1I7cYcM4N+oEH0BIgqYXHVQ5c6g+ry8YuIVC8hAumPt6RtB34m
hJ+kNAe3wWSooQaqdUcJ7dAXdv+XuCMWlEsp6iBE/TOOgppSP7BtbnG3G05uVlLQpz4Hot5Ewtsi
v3PeGykpaRKpH8maZKs63GMpTNliW7Hz428uu1bPZLcwWxoolr4rTgdtoqcWl224L85a9RzhTqEC
+dF06xDiJbn5GsgHrZu5ekqDqBUC1EtNx9gNd1IUrFEKpxNevdyBFx+1RFf650R0m4IbJRS5TgJr
W0KbLY/7QAxDBwbeC7101xxj2gCxmDIiN5oKXXFtUwLrtTPgrikKj12CGJR4W/EH+yGeAHRPZdfa
olRQ26ri/1eNdU+agpZPhy1taudIvejYhZDQYgR7uQWXhFJ9HZ+Lsm+uu5QVGGPWpQy546jZmQ/z
MM5eU84bL2BQZkgRa/fVsG72VyO9Bdajnc5jQwgbs5SnQWbinrx3DqNkrvr1/to6g7kVV87pwwxI
pjpZ4xpihZCtyzhxHS4Ro0zhJsvcoQfvyKubwqOjAB7J2a/Q/f/5hgjRtg0vV3veqeHQvgRRkGNn
nsf7QsOncbQ+ICKOy130ODv42gcYmOh0ARb01L0Cy7pxAnb6zWjULJnCDwCtfXOohlq5hSAkP4Q8
xSo+Mx4g7nPJbgcy96SXemScUkD4tqMpnlvw5xVQevs8RaoJeQO8a8FlDpWDtzzx+dN9fEKaJBB2
qjH1NHBYfcRcMpu8bQ4TqS60kV/9kYTen07wl8/QRT/7aALnvHzO3FV85MW1ntEpSrp1zIwJv4AH
IT/rqUfg+HV4JlEB8T1l9s7+1n57T8Em0S8U6v8R/6cfSaUwhqZdr80Rfo0fklRfFqGpAcNi/WP9
AsUfZPS5DYGVOdiriGRnMZuzvNvDN2FTKJaeJQ2OGM0WMjOjYQQXdWghbOfyUhA8+56C/w0GAenG
JtEEe/hvfxbznxg0MppJB7eiGhIQBAqCISelpzAmyR0ozh8P/feXobyTbJkGeQWmcprcRUE5KUAE
QevY8ydqgzcUugrUGLAtedy4ije6L+9PtTDuO780fANA8ih/dev/ANoCyxudZEpGQPO9eZJKeDbx
74JcJx/oz/pxfAnsPMos/VfSiINWfiIAPUJk8bSJw3MFcmc9fUzANEI7LcGZk57yvtP+0wkAWVHm
9k8xOiDdlpzWsoigP43qFkB+Q69scqnQ1zwYjWoVEkXkl/d5bkQMLcB6dDAU/p4QtajxKPOKPRll
nPQU7JtbH6gMrncKUuTo5exL4KgP8hqrnQIL1T62QOeiyOtqu+yM5E1/fD/6mSt6pUfPqtYDXF7F
fnGcZjELa5X/hsV+F9UXdlFjlWAcDnOespjmC1XkdxiodtvW4KlJL45ltb6dTij34hBY9PyY0UVk
dGBg4VPEOLqxgHE3IhVg9pEQMXCn70E+ZwvKLZLdZQ2gaaWKqwxiXNboEPHOD0/RkhO5ZixI6Kmu
Y9O8Fq+fEuxjh+LBpOh2AbRg5v7FfKQqk8RA6ZV7SzEXtH1HnbaJoQU2V0cYz3KzJuAS63dmmtzB
7Z/cVpec8G9l9MdPkoDLZFuzvq+zVrzEF6b9h7oL6Upu+ZP8XnqCgKzlg/ue7+AOvlwvgnbei4Ag
kGWGIlwaaKtKIQNJQuF4imy43fRLYDY81BNDCHcSVNSRphMohYkEDUCxRbCmoCPvCDvJ4HDZA2Qt
KPuGkUnT4zy05GQenjosY3DBm8PvyH/P1BokXFmnDMWI1VFtS+ZqgqJQgFU4929oK2Fz0T7GuqA/
Xl8dNneCjNPQG9dcXWo4amsLIroEQqHyhUyf6FM5mOH7NjzbhrwpiwcTAg9Z4h45bubRdKW2D9uK
uvSEkepCq9t4+grknzlB8jqlxky4S+Nlpwqb694Tp+YcdnXc/6KZZ1WZutg+w4Vr2BYkNXgTXZZY
So+kOS4JikVGpvwO2aFqJ7ze1zOdqnsOEGIWGf9z+yrosT/ISUIkYEGjyt5gi8dSCwaTORP1Gwhv
P4tQ1uH1ii2LNOPf7xi6Qx5TFg/rJwWrFBTVDiaYt171atsGpxFjl5e4RrMUY+bLNjzqJgP/ccM3
UD5dM4oxfZn31Il8In8ERebDg47speklXVMKAg/JZ8d5mee0c5NNvKAfQ8R37HFAyOlaTi0LK84j
L7eyudn0bbZrJBJ7N1DohrZVQVuTQt5P5Oi3IVqIe2akzaRt4shhxb1G8OBzy/BqLGyXyFtOwE8I
SnrPWV8GNKMp/GZ+pCS6Aoc9zVFIqFYesQpGlLUP15OmMeP14nI8K3oOTX8xKsIpYEK3ae9SlaoD
TXH3lRSu3Q8WD5tzaB1W5S+XS3BJhmpC3TO4cDL8Ul6Z1dgsSJSYWVDL8Qwf5YvDVM377kT1UAzs
Nezlz/huWajnDsZ5xKOJs1hKXlY6KgN+qB+iXlMw/9ISF5hKzRqISs7nR79FJ/skIvvavLLIpMkm
heP7S4tf5n87ECncw4Xgxk9yOpK5vc832XYE92U49rOOUa2DUCNjR4os4ERGEIfZKyyXmB4QQb6u
IcXXQKHwRqa7zbQahGDkdB8NKXJbI7f3omTfNVRfyrODxQYJNqR6hLYgSEpt48MidxKhjpqNzYrx
aA+KCPOx/ZIECQZWbzx0DRd7vs74zvR5bLS93lBVdrK7p7+V1rb/A5bylitY6r578qIO1EAwQoyX
JtVzdCz7PxehZIcO/IT2GLcbtNjkVwWKYJLe6RD3BLx/XVgdZ2bkYsEKQH/tZ3Ku5JwMdB6FF0zb
OHqluIBaFwR7sUe48FxzwMaBe0eCzGP5+hBfqzJxiL1WYYv+Wg61HNwv1qHI51JPs6O+g1KlHvlS
CL7pjU/02HcXUdHEMnznPcWVLWst5AyHRBPQ9srsFkqiYyBgVlihrHOmytCKMY+H/lSyoxadehD+
9GMCF8hCNB0KuhqjbnIgVNrrNZOm8NqFpDJQbTNEUwTIRl2NQDJMRWgy7Xq6i98yW9Sw6B5b8CvB
aiSUy1Y5Q4MLiCG4GhNMgfycV9SFLZrQ1FWtBCaVulPv7Mre5iTVm/aIYAYIt0TNCXM8oNtpy5Fe
lCVrt+4s4Sn27Prpk3OZd1AbVA8diyipHzxPIlEk8pBkHt5vM9xg6M7nS5FIPWJACBHKJi+0+xOj
QKbhGyI2FhXu2haJYIJTHneHWj4668v8fjmsG8JIwEo3qE5LuMSyfvZnWXaWxkU9+8ms8RB14oG+
bO73zozJ5cms8cqx5QCazDSErCQnMnwhZqebnJEP5AvOcKTcsDrIa1QIoaRxz5eRvK+VYqNmfnQU
jxvrsLI4DVXXJrxciBjnUhsTdsuCX1fUu8Xa6xbG4Iac9Sp/zZqr9gaAx5U/Bmd8528PllTct4kc
fuwxhtw8hw++WO967nuC36gvG/lElmDFqfR0cYJ4s63phWDkfSM08USK1iv9WjHSWgHPQsYSbpcy
d8EDYMK/+40T4E5KXKcB/pe4bHDgG6r9rLEii6jtvSDnkhhuQ3nKBfUwfRPuPF8kBQarAgIHteUw
8euDCaAdSyXggrU++nbXhTiE98469u8/6b/eZjwwCZKaPyem2XIFstO39FUaB5BjvziQvX83Coh6
FQrS7OoidpbE1bx3vbFhx/lgFJIIrPO4l05GKuxlU5IROtNt8Rwci6WjdbaGLUX1lUZQEYf6Llal
LrS5x3yp4XuCO0v2PzHeZXyAjycDR08Z9bYLswnYL+9yXSmrxcWiJjN8cUH6+XkMRNNmfH519Fb+
qmzTsqqjvHmR7y5OixYqy4ZOH4Je79kJVd8A+bz3bvG/E0FkusNn1EQcnTRTyogGQadRSteZWNMp
1Rz5cUdHDXExT34xYMTMQrqW5ILZ2m85v6BBrZUgpQJryRd2GBavmWp7Pyj/lOFoCBKs/YmrZ8PC
uS5jbZHoYDct6pibLUI9/hkxJM+KRkjJXc7Aqv/IipyuIu45hUD/TzGSkJWrKIq2Jj5x8XNcdXQA
h7GvisjNN74gNS9ouV/+Z6IyHW8cJGljvepv6XZ5g1IZeOcJtp+ofztZ2PhPumq+Uzsj1kH1+ecZ
BiSteP212SCg06qKoCBaD3DVNKRFo1BsCGm5wQX/PEBPtGW/rxC+aEJyvECPaM3EaY3dsWKy4obz
7PoH/1UzOwo40Zsr8N3i0FjggBmpzbHMjXusMcOQ6YyRxCJnQub2tQL6q0NCt4SjNsdav/O4Xi2g
rDv6hHdrL+tq06kInp6IpXuojYgiFFs5657ooYHVXSFvTYpydM5qTNp+SID6Lyf9KJn16xrykumU
JGunlnwvmdtrUMn/+VB0TyCWvrVTvXg0tYRgph2hYKBwUNlEsqxHuPcQtGRlHg7JXElkF/qN95ci
nlqVjIrZVb8PP6bIVfxNxfN9VRL9LjYUJK/umo3adaBGclgPzcMST4FMPg3baPVtRfUXrXPF8d8K
/CqwDxbMGCTKmS6miSoFeVA1WbwTadVs8cGlsX2T6SJWsEOqC+zcWJ7ZsY6mDLEKJFy8O9k4nLUl
aaqHe6RlsQhwPlm3pPxagIgJAlaANtsi17IyruY5nF1f0QHCdNRi6ZAaLnqi0Gm4DJDGmhkU5W3d
VHAF/FqhG3YXuAuOwioUSdp2NNtuLcgF4Y/+2ZjRqtP6NYF6+iyd9xH/5HYDJopfV1MJxmC9elq0
x0X3M3od6fjrO9tqLw/zrtadEylWZwWxjY9ScZYvwQn3y83RXLkNw3cZcUJoEaLPIq4cP6vQAn9L
ASzYWd41ThTtS5bgmIMFmatqJ9eP8IzVKPHAd5gP3TbuVPtpnMeIR1typX+b5E0HbS3igaz809k7
nos/tRe+qQhktyBN/gKdYspW79LbaVRUjU5SHQWAbHhIGyJAWChB+WJ88raRTAcNay2Y9r5Dn7V+
9z7EKEkzzGDNsO9JynwG5CEcU1HRWUcb+0XENlxHlC9PQW6djru/iVMQcvkHi1Ob6wxztVZ9N5bj
c/i7ohELXm5iSyAkc8rtw4wpzusUr2jRv2FlGJzG+P9twd5zSjBzccxINRJnYo3UpV3uBgo6meIw
4om5BmcmBDZweLSTk3EfoDn9wgMb3qcl5EJv+HtQrjY3Xfpr56TIoK+rj27RlQF+Nmk/qxFpJLag
IPaUFBG27sWZTUTqN6NMm64Egh5uN2un3/v3hUqUgkSfAVLjgvOvgJ++2+ZmvLofWQ2WckviOyyr
FVsBAWj7DJTKYnDpn7y3+w96eu5q+y+Mt0rrkQY8REqbK6yiJlFsl1vqTD1LQ47AJTYzSNqaE8IU
4xHwMouA6AjthM6F7zfWqeHiRkrEOGU+p9yKOxqzrj9wvlhXUs/Y3PLSBYY495Sb8cf49s2LoGKb
HLxvRgh5SEZkSmsLNRWRIPHBvPcIV8vIgfTL4kyVPeuxSkRQD+rLZ2q4/D1j876sq+e/BuB9i0GG
zjoU7m7wakm6hw5j5ylVc2QkmpckJXVA8cMTJ2e+Wekkgv81E7MhqB4cBxU/ZxrseO24I2xXCkCE
2Bf8YvdhUSjB8xj/9te+dQ/1cDc7Gxpdz60WGVVbrNsL23xnq7F2EO/Zyzdck2o3kSvxuJvoXQfc
dwEsOBaNT2EHsmcc60E2GYZ1imlWf1TmhPUTZDETz/rxct0GIplD216Lw89YNqIBG4yF+YRYd0HN
LF6Bg4XTeSrZ6POwshcTORMuj3bTYqQ/cC6WZziaQr4C2tSg8XoQbGfVX2QYRl5hnebm9p1oHywx
Fo5LfNPZ5NydxcbmohtJVNmwab8AOY62UU7gXONl4vRC2AN8Lrg4N6jC38HWDHxdwNutFgGInRy1
VqjMr4OowKCoMn93qSPt5mSvk40kIvawo9i9+ONIDJ/D8H7FQe7hwaKIDpIGofKLI2lVF1RV6bQf
kltkKUEvaTwhpWLx5p7t+myhcsZk6GMSZa0V0wbxLVJwlvpFP3nor0EkxaDcE3hJF1kUwNtz/bbb
J3OrQDtmRVjqUM51swetCO4F2gTXYBPq6SGdoY6iK+31afXkh+wiwxy/d7yuiFe3MiOZU1xWXb3X
lpUpS+xiiwq9koeLrxGHBj3Q+48gHORbCAmK9L+nBiXKEhG9yQLOIElZBYdjD+Cv/XCLVcXx7pRA
ZqidfWZ9E6yvLtFXrHwULOdQoDKggqHtOSD3Ezhy2g+T+cakt2hy37FK2LnlY8MaCCX8YYnE+4yJ
NqI+Y5Hl7RJs+AYDt/5WKq3Auc77C03mWqssORbQ9bwgIWFlMi04sTfPmrpISUQKKpEwCkJyzcWN
PbfZaABxOlMN9aWS2sklkyMSrq1imuob//m57JkhmE2RFFtuP680ZL79m7Krylq123YOlu49rac6
E5eVkqOXrEGdf7A4cw2HU8LZyZexwyURXCJS9XGlZ25eN5HMJFAF2nXSeG1Gg4vquoxzlKxyXGfx
Dix7yT4b+LSTTaa9IKaWCWVkVe+VOI+yZRhbSshCMZNMhpm69CHoQINJXXdOowmBbDEsmnnfK+/P
rcjhYeEmW1iQpb/Jqd8ewLqFPOdctWP0J8CK6GXjpD+7gHACBZ3P3qzgSaHX3NmCNv6Kc8GvVVZ1
r/1zQ17sO6IZUWzLX/gPocvWko0K07DdpevMF0A1BSF6eaOyC2OS6/NYF+P78/dRqzCjtJ1anvcu
I3Kb8CGwrrJEej8QDqWshXQ5EGeKKZnQgD2cXFhMlB8oAvCUdABp+RVuOlNNmm8S/fWAs6BGJ32k
SmRZOQZxD0y8GnD1ShV31OZmEJZsWdy1nDgWpzDEy8QOzoqBVRBnKOF3HH4iZbGciGNi41ztyPxU
4pgr6m+c5HQb/Yp4dcXFinq8eXBbpJillTJvsWg67+onbVEVRobxVZjCcQwPoHh5GQZP7Qa+QZdc
WAX8a5Dg0KXOwxe4gEF7ftrsbGnzPVmen34yf1bjox9IimDYFyvJPwE3VoiExUQJJ/PMMGk93isO
Bdjfz11EV6uEKjA1iiyuD2khYxKf8nHS3IVF343eRKLzYbwGwAZWJ6IBABaci4rHukHvwP0tKFC0
QxHMxFMw2QGQU4t7Byd272WGrC6zvsTM5KxrKyG/dMHZZyQJ/ZYffK4bP9Q0k3R3EEThgBLiIAj8
F+vvFqvuPYzvmYeHx98qvm9Hu7TTeNDJOVbKu/w2U1x++7ujgnh5fdMB4Xz1OLPzV1rwGs2nSLc/
cf44ORoTP4apBaa4UK3qp0xJT1UB1wrNP47JL3vUjFqiFTa4A3vgItN5y+AdmolGwrfcVYs1Kyoc
FACwBonyUA8fKJvCBUMziC2Bn9IbbikBcMIpVhNysd/GGzUz0CuW0QSEvAUcW99nIqRlE676MT12
C0zf4uRrEPGwqqt5k66PTfg5CzKH0avuOL28X9KYViHPa1OhOEgYNMP6VZKWagOQego7NXNy/QwC
+weVubGrDHul1bu4Fkd4MmCUPE+JeUv5yDmzSsOJLQnMjO4tNHDK81EX7ZmPhvfrnrxxrhvletqY
phKsn1XtRt6mh5oQhgFUg6o6bnJyWh7rWWvSDJQtJ0PLEPVf+UFIfMT1LEgzpTSyqHbbE/vRd5bp
KZ4e1bhN/fICHZjkOhgFD9LGgua/fhiKOvmDQsBhDrhI5zxXhU13QQsl8egRwX3eAwVDg9Y38md3
Ge0Jro7qqrnBp3pzGIGKxGDQ3gTovY3Wa6TfI6yi/gVflxmdoepjueproMgWa+J7m2M+mmZlN2jj
ahMErtRl1+fK22Szblr2Suet8TZRi0dTtdEoXUuvxX7BeuClqaR/O/iCI+SpMlqmv87EvRSUGZ8V
eO6Ra2GRUOtNpV+GLYFc3kHQC8TwLXCVG6t8iPGj/jyP1qvaK7vnpVih580uVkv/CZtg64NUKcBv
67RIsZYCD1T7tSuueC5g2/nf7CyWMc6/sWFf7XyOfJg2d78ClnMh5PP6q9YbdEWn+fz15slzZKeH
vKuDXjWh/p0H2zsm4PA1MZGCQhXqW5TVuON+cfejnG+R5nHhYvK86zJExmkCZMoanshJtiOljbnQ
8HPyUb7fRZHTQfrbapa5ne/g43jgPkZUSmlMwMdm25NXlQdIEoiPF87DU9nMU79jY9boq9/XxYyX
+qoV+uUZv7dpp1hFDy7mAA4yXsufkvwpOQszIL1gSoEhUDjhj4/a8tGn03B/9hLUrq+VopqL+tat
yDDozv9lV/QFagv1JKKeooYjZa7q9kYsS+pHgIH5/xkQTuxBd2Lto5dpE3EJ/YC2r9NPkSLSMz4g
GARMOT41ilkZe+a2mYndS5YGCFiX0zg0i5sJmScQ9gRqmZKVpW0ouAxvQgz/t0OSTKEp9YOtcMRH
UkAirGVSePygEDO9Of7HlG5G78xmhcith+y7vZFGPudEi85ckqCOIkkBISs46UrEkoPAP4gPSph6
GmpzLgTzvLena4b0fa8BYtv9NBYw3skQBmnIH6FksQzu1b5s9cFMG0w727/7rsOwvw7IDCpRfsFd
JyD+xMx5FWN7Cj+eF69MnDjgOO2iV1uqBOKBPQg+DlBP1vk9KKTriLSzyJfzByuRK6n5s/utjpVE
VPy5f+jz503pknnlUOGKQp8sIiSQ1Yxo+SdUXgqiQ2X6EUHg7BIUDeEkLW1zKgTvXGRd62s0xoVG
faUyZA9Sr7G2V2g8dmJND1VNUXBDcyUR19bj93FaS7XDywLU/LspXxrKN/xOYHaSqJbMJeks/h1m
up/kZ1qZ6iMPmEMyAyS9csQ3T68mnoz/OlMHo5fk0PlYaGlxma6b3YXoHhmDHki2CxZ9f/wTQ7oy
3vOTfEcfSzmhtb400LFmZWZRk4wZg2ntgTPU3mvRDktlFoil90Ad5aAq/N6CUfWfNNaWz48kfJSq
vkIA4EYcwX+sCm20F3gNzuVe+ASkauTm+gdbKSnbv/3ag+PecJHFtkmNFg7jqDj1r1c5rVyXB6kN
zpnwUxu3TE0aLOHXqyeEq+pZRvQ9VfBQwaNC5GGFJIPCpMsOoVglQpAAs8CIn2f5Iea73S9L+VHd
suOM408iRXqBY5CFY9vmI0ZqSI/9vuYXu6LTNNRuOjLY7hNXwIMxHoIzqr7J0B/NqkIP5YAB3ro2
w7OcypUanitCKB4Ba+kx8+d0vuNE7WR1//R/CwUIjX2IayC3p0Tz8CruF/I5r9fmrWrYEaUkFH43
fyUm2lLOrdxJ40WOwekkPgko/ENxMLoNNrhCPbrPYlBoqo/xg05omr0yknlDztXRJJ5ocz/rnRU5
zuCCDMaYP1rwm7DEqUp7Qd6lugblC2zg2wUXVQ/eT3WT404tH6Hvdnu/xOLQpb6ikEzOIAn0fiM2
9c7C13gJGZ/6aQeyuPYq5zLC9N5hEn0NsEOdvo0ZkaLttQhLm4ag68DL9g/vV+WOK3GWnKqpt67I
tq60vb7T7A8tjmABkCLb+i790OEFNxqCLgTTUrVNhrYZdojz8AkK653AlXeHaB5kUIGsrSaP+wgP
UBxb83udMNNKO0twwGnw+iMaUynsYPo86tjcd9QXJBUgKWayCtc64M44Jue7arj2WjVe7AOPDgUJ
cXtxP5SW3VETUIqwrjFwr/etp+korufiqrpbEZ3dvcf9pAuwzwhSUiI9hFUXgqzwDBXB2Plg3aZE
xjRCLbxaJvxMCgfY2jaCO817yEe6+6qJ1KDVfnqavH5RRasq0z2fYrybRFz1psh7ndgpRd1jJdzm
Q7GzQQSoCtur4CXF99kkhjbF6QxzWqUn5vTS+E/Axx6WkMGAqWJeako9WMIbJP5D1ZlVdAkgSfji
YQPx/l4vfjo687YPiaBLSvWWJ0Cw41tOo6RokL6BMIjJtiqsdCfKDQZyCqJGSyRxwFgtz4YBAi3A
l3ALQ36PmsJvZTCGxZP8+rcCVAa/kq5PjyaBk6uFpJdZ/ltdOjBMZM7Hed1efK3w6P3Q9PlKu4Vh
QKErhkwX4EGe7pN1qJaiL9IyDGEGt5RS6aQME4R5pAMN3yeBQwVYasA8+iwhRIKsg4D59ZDhPE2o
9wfFdyHZTB/TohBdWMkvjHMVJcVADwQR1VOhgENY9kIgMNcsk2rKAD81ogcfGOVohHM7jqf2KIoh
FnlsZqd8XN37sLUfBHIqdJ9HXYDrRSklHxyhusp6Vw1tL8iNg7DfJsqyy372RPfjnWofCzqOdyV+
XOIV4X5s3sXNvqzVkC0XhE13ouxRDNMcFXLoAyQf3+GI4TUibiIGZpWw3q6M7L4ZhoS5JiXOwXWw
eamBep1Powocf6mQBg5CaOT9mTsk/3mX8LWvv2rw11bjWglLj5dByA4dRQwZFo7WHv0MiXsxuilY
mp7xy2l3amOgpo0ufwTAJBl7y58DngzlG+dhIBSHA4JM69bQzahvUO5O8BY4XjY+7kfJtXdIMys5
ZYOJsBHp7ivUmjpvAMkNPx4zyD5jnzVcH7mXCh+cR9OLAiKGW7Cu/KDZzmhS/pMa3t6rvXm5Xud8
1Jx71Wu7fgQDRc481S+fpIRS3Vmtk1FMDPmXL8gz7DPzTcMsV08P3lmVsqAQ4lehBzpYARvDP4Xn
F2ek4UD3gUZz8twBij5xOhBVM4f/9luzli4BDkh7M1GK77hkAKtpvLhX6ILTaYk+ykXilAEcZjpO
9zOTHKqktI/7yBpnEChZJpM3CYzX4HCKkAWcZjaKrF9jJZU+iWxqokgAdhylr7K0RtvxpgBzEgTj
ljJbnS2JxMvsrKYjdmxUHiyJhw9eRplp3GvXh4HEBpZ1NBlKV4qBKWeIUgBRnOZ3fDVvxevu6nkb
aMYPvfgsYGcNfWJymqOJakBthKaXAN57NTJEt9TI9YpKvwd4SI/xQ9Em+Y5vHkAcoaiA6rQ1jrES
NdF53WfrGoRs5JR17Wduc9K7+P7ewLf4v/aseJJ9wIGcWrJ/mux7QH2tniY+FmHQShvQuQmWJ5U3
bBWVpkCwzo6EDSQY7ZBiNoz8llzeXv58isWGla830/nOqiFlRo67q5SwCXP2C1qau64OoViN3CNe
pYVvVQM6Qk5wybJIuicC8mtHFxjdnH64O2V5ZjioHVHwl9HFyND+F05NHjRjJSaq1ShNxGYFTB5r
W0lfQMyGD88daPZXsRs6TTLnzWXghgVWy8g3ywEXGdjpHJd+nkx/Y0VDgACoJUi+jfbRUSoagOl8
b2y6DGjcXgH9o+4bpl8Lo8ggQyEpwF1yZ40AYVN3nWmqyCo+M6CTrVibrF21BeU3KFF7BWLYe7XS
y0bu+MgYm1hmowiZXZSrDrij8OYzYBAnNyqjp3ep9Bq80MRe0l4JxC4amt5NpucCRnHW9g==
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
