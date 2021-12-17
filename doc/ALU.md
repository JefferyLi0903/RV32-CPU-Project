# Entity: ALU 

- **File**: ALU.v

## Diagram

![Diagram](ALU.svg "Diagram")

## Description


 ALU

## Ports

| Port name | Direction | Type   | Description                       |
| --------- | --------- | ------ | --------------------------------- |
| aclk      | input     |        | 这是一个供除法器使用的高速时钟信号, 建议接入尽可能高的时钟信号. |
| op        | input     | [6:0]  |                                   |
| op_2      | input     | [6:0]  |                                   |
| func      | input     | [2:0]  |                                   |
| sub_en    | input     |        |                                   |
| din1      | input     | [31:0] |                                   |
| din2      | input     | [31:0] |                                   |
| dout      | output    | [31:0] |                                   |

## Signals

| Name  | Type        | Description |
| ----- | ----------- | ----------- |
| Mul_r | wire [31:0] |             |
| Div_r | wire [31:0] |             |
| shamt | wire [4:0]  |             |

## Processes
- unnamed: ( @(*) )
  - **Type:** always

## Instantiations

- MUL: Mul
- DIV: Div
