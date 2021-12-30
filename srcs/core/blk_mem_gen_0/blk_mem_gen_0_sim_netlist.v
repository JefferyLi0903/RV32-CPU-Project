// Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2021.1 (win64) Build 3247384 Thu Jun 10 19:36:33 MDT 2021
// Date        : Tue Dec 28 23:24:34 2021
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
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA ADDR" *) input [6:0]addra;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA DOUT" *) output [31:0]douta;

  wire [6:0]addra;
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
  wire [6:0]NLW_U0_rdaddrecc_UNCONNECTED;
  wire [3:0]NLW_U0_s_axi_bid_UNCONNECTED;
  wire [1:0]NLW_U0_s_axi_bresp_UNCONNECTED;
  wire [6:0]NLW_U0_s_axi_rdaddrecc_UNCONNECTED;
  wire [31:0]NLW_U0_s_axi_rdata_UNCONNECTED;
  wire [3:0]NLW_U0_s_axi_rid_UNCONNECTED;
  wire [1:0]NLW_U0_s_axi_rresp_UNCONNECTED;

  (* C_ADDRA_WIDTH = "7" *) 
  (* C_ADDRB_WIDTH = "7" *) 
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
  (* C_READ_DEPTH_A = "128" *) 
  (* C_READ_DEPTH_B = "128" *) 
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
  (* C_WRITE_DEPTH_A = "128" *) 
  (* C_WRITE_DEPTH_B = "128" *) 
  (* C_WRITE_MODE_A = "WRITE_FIRST" *) 
  (* C_WRITE_MODE_B = "WRITE_FIRST" *) 
  (* C_WRITE_WIDTH_A = "32" *) 
  (* C_WRITE_WIDTH_B = "32" *) 
  (* C_XDEVICEFAMILY = "artix7" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  (* is_du_within_envelope = "true" *) 
  blk_mem_gen_0_blk_mem_gen_v8_4_4 U0
       (.addra(addra),
        .addrb({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
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
        .rdaddrecc(NLW_U0_rdaddrecc_UNCONNECTED[6:0]),
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
        .s_axi_rdaddrecc(NLW_U0_s_axi_rdaddrecc_UNCONNECTED[6:0]),
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
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 19120)
`pragma protect data_block
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
TBOmyQj0FLDfLMDZiUJ8Equ0jfrNpOoNQQ==
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
