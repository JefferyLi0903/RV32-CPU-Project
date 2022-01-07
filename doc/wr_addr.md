# Entity: wr_addr 

- **File**: wr_addr.v
## Diagram

![Diagram](wr_addr.svg "Diagram")
## Description

 用于生成写入RAM的数据地址的模块

## Ports

| Port name | Direction | Type   | Description |
| --------- | --------- | ------ | ----------- |
| clk       | input     |        | 输入时钟        |
| ext_imm   | input     | [31:0] | 地址偏置量offset |
| data1     | input     | [31:0] | 寄存器内的RAM指针  |
| wr_addr   | output    | [31:0] | 输出地址        |

## Processes
- unnamed: ( @(negedge clk) )
  - **Type:** always
