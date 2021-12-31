// Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2021.1 (win64) Build 3247384 Thu Jun 10 19:36:33 MDT 2021
// Date        : Thu Dec 30 17:42:55 2021
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
eYPaTaJPaz/UUMnPzhq5JMk7JA3OUjN5HA==
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
