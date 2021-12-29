//U型指�?
//LUI
`define LUI_MASK 32'h7F
`define LUI 32'h37
//AUIPC
`define AUIPC_MASK 32'h7F
`define AUIPC 32'h17

//J型指�?
//JAL
`define JAL_MASK 32'h7F
`define JAL 32'h6F
//B型指�?
//BEQ
`define BEQ_MASK 32'h707F
`define BEQ 32'h63
//BNE
`define BNE_MASK 32'h707F
`define BNE 32'h1063
//BLT
`define BLT_MASK 32'h707F
`define BLT 32'h4063
//BGE
`define BGE_MASK 32'h707F
`define BGE 32'h5063
//BLTU
`define BLTU_MASK 32'h707F
`define BLTU 32'h6063
//BGEU
`define BGEU_MASK 32'h707F
`define BGEU 32'h7063


//I型指�?
//JALR
`define JALR_MASK 32'h707F
`define JALR 32'h6F
//LB
`define LB_MASK 32'h707F
`define LB 32'h3
//LH
`define LH_MASK 32'h707F
`define LH 32'h1003
//LW
`define LW_MASK 32'h0000707F
`define LW 32'h00002003
//LBU
`define LBU_MASK 32'h707F
`define LBU 32'h4003
//LHU
`define LHU_MASK 32'h707F
`define LHU 32'h5003
//ADDI
`define ADDI_MASK 32'h707F
`define ADDI 32'h13
//SLTI
`define SLTI_MASK 32'h707F
`define SLTI 32'h2013
//SLTIU
`define SLTIU_MASK 32'h707F
`define SLTIU 32'h3013
//XORI
`define XORI_MASK 32'h707F
`define XORI 32'h4013
//ORI
`define ORI_MASK 32'h707F
`define ORI 32'h6013
//ANDI
`define ANDI_MASK 32'h707F
`define ANDI 32'h7013
//SLLI
`define SLLI_MASK 32'hFE00_707F
`define SLLI 32'h1013
//SRLI
`define SRLI_MASK 32'hFE00_707F
`define SRLI 32'h5013
//SRAI
`define SRAI_MASK 32'hFE00_707F
`define SRAI 32'h4000_5013
//FENCE
`define FENCE_MASK 32'hF00F_FFFF
`define FENCE 32'hF
//FENCE_I
`define FENCE_I_MASK 32'hFFFF_FFFF
`define FENCE_I 32'h100F
//ECALL
`define ECALL_MASK 32'hFFFF_FFFF
`define ECALL 32'h73
//EBREAK
`define EBREAK_MASK 32'hFFFF_FFFF
`define EBREAK 32'h200_0073
//CSRRW
`define CSRRW_MASK 32'h707F
`define CSRRW 32'h173
//CSRRS
`define CSRRS_MASK 32'h707F
`define CSRRS 32'h273
//CSRRC
`define CSRRC_MASK 32'h707F
`define CSRRC 32'h373
//CSRRWI
`define CSRRWI_MASK 32'h707F
`define CSRRWI 32'h573
//CSRRSI
`define CSRRSI_MASK 32'h707F
`define CSRRSI 32'h673
//CSRRCI
`define CSRRCI_MASK 32'h707F
`define CSRRCI 32'h773


//S型指�?
//SB
`define SB_MASK 32'h707F
`define SB 32'h23
//SH
`define SH_MASK 32'h707F
`define SH 32'h1023
//SW
`define SW_MASK 32'h707F
`define SW 32'h2023

//R型指�?
//ADD
`define ADD_MASK 32'hFE00_707F
`define ADD 32'h33
//SUB
`define SUB_MASK 32'hFE00_707F
`define SUB 32'h4000_0033
//SLL
`define SLL_MASK 32'hFE00_707F
`define SLL 32'h1033
//SLT
`define SLT_MASK 32'hFE00_707F
`define SLT 32'h2033
//SLTU
`define SLTU_MASK 32'hFE00_707F
`define SLTU 32'h3033
//XOR
`define XOR_MASK 32'hFE00_707F
`define XOR 32'h4033
//SRL
`define SRL_MASK 32'hFE00_707F
`define SRL 32'h5033
//SRA
`define SRA_MASK 32'hFE00_707F
`define SRA 32'h4000_5033
//OR
`define OR_MASK 32'hFE00_707F
`define OR 32'h6033
//AND
`define AND_MASK 32'hFE00_707F
`define AND 32'h7033
//MUL
`define MUL_MASK 32'hFE00_707F
`define MUL 32'h0200_0033
//DIV
`define DIV_MASK 32'hFE00_707F
`define DIV 32'h0200_1033

