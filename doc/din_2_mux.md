# Entity: din_2_mux 

- **File**: din_2_mux.v
## Diagram

![Diagram](din_2_mux.svg "Diagram")
## Description

 数据选择器,在ALU的din2 之前使用.  

同时也需要在RAM的input端使用，用于选择是否直接读入PC地址。（如果不用JAL那么就不用接入）
## Ports

| Port name | Direction | Type   | Description   |
| --------- | --------- | ------ | ------------- |
| ext_imm   | input     | [31:0] |               |
| din_2i    | input     | [31:0] |               |
| din_2     | output    | [31:0] |               |
| sel       | input     |        | 请接入Instr第6位的非 |
| clk       | input     |        |               |

## Processes
- unnamed: ( @(negedge clk) )
  - **Type:** always
