//U型指令
//LUI
`define LUI_MASK 32'h7F
`define LUI 32'h37
//AUIPC
`define AUIPC_MASK 32'h7F
`define AUIPC 32'h17

//J型指令
//JAL
`define JAL_MASK 32'h7F
`define JAL 32'h6F
//B型指令
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


//I型指令
//JALR
`define JALR_MASK 32'h707F
`define JALR 32'h6F
//LB
`define LB_MASK 32'h707F

//LH
`define LH_MASK 32'h707F

//LW
`define LW_MASK 32'h707F

//LBU
`define LBU_MASK 32'h707F

//LHU
`define LHU_MASK 32'h707F

//ADDI
`define ADDI_MASK 32'h707F

//SLTI
`define SLTI_MASK 32'h707F

//SLTIU
`define SLTIU_MASK 32'h707F

//XORI
`define XORI_MASK 32'h707F

//ORI
`define ORI_MASK 32'h707F

//ANDI
`define ANDI_MASK 32'h707F

//SLLI
`define SLLI_MASK 32'h707F

//SRLI
`define SRLI_MASK 32'h707F

//SRAI
`define SRAI_MASK 32'h707F



//S型指令
//SB
`define SB_MASK 32'h707F

//SH
`define SH_MASK 32'h707F

//SW
`define SW_MASK 32'h707F


//R型指令
