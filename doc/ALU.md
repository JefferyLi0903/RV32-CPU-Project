# Entity: ALU 

- **File**: ALU.v
## Diagram

![Diagram](ALU.svg "Diagram")
## Description
 ALU模块

## Ports

| Port name | Direction | Type   | Description              |
| --------- | --------- | ------ | ------------------------ |
| op        | input     | [6:0]  | 请接入decode模块：instr[6:0]   |
| op_2      | input     | [6:0]  | 请接入decode模块：instr[31:25] |
| func      | input     | [2:0]  | 请接入decode模块：instr[14:12] |
| sub_en    | input     |        | 请接入control模块             |
| din1      | input     | [31:0] | 第一个操作数，请接入register的输出端   |
| din2      | input     | [31:0] | 第二个操作数，请接入din_2_mux模块，   |
| dout      | output    | [31:0] | 输出                       |

## Signals

| Name  | Type        | Description |
| ----- | ----------- | ----------- |
| Mul_r | wire [31:0] | 用于接入乘法器模块   |
| shamt | wire [4:0]  | 移位指令的移位数    |

## Processes
- unnamed: ( @(*) )
  - **Type:** always

## Instantiations

- MUL: Mul
