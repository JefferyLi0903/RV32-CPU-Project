# Entity: exec 

- **File**: exec.v
## Diagram

![Diagram](exec.svg "Diagram")
## Description
 用于分支判断

## Ports

| Port name | Direction | Type          | Description   |
| --------- | --------- | ------------- | ------------- |
| instr     | input     | [31:0]        |               |
| addr      | input     | signed [31:0] | 请接入PC当前地址     |
| imm       | input     | signed [31:0] | 请接入32位立即数扩展器  |
| din1      | input     | [31:0]        | 请接入寄存器        |
| din2      | input     | [31:0]        | 请接入寄存器        |
| offset    | output    | [31:0]        | 请接入PC offset端 |

## Processes
- unnamed: ( @(*) )
  - **Type:** always
