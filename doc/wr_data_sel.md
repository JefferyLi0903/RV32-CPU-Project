# Entity: wr_data_sel 

- **File**: wr_data_sel.v
## Diagram

![Diagram](wr_data_sel.svg "Diagram")
## Description

 用于选择写入寄存器的数据

## Ports

| Port name | Direction | Type   | Description |
| --------- | --------- | ------ | ----------- |
| clk       | input     |        | 输入时钟        |
| data_out  | input     | [31:0] | 计算结果        |
| data_mem  | input     | [31:0] | RAM中的值      |
| sel       | input     |        | op[4]       |
| wr_data   | output    | [31:0] | 待写入的数据      |

## Processes
- unnamed: ( @(negedge clk) )
  - **Type:** always
