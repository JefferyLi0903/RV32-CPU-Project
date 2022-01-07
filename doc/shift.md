# Entity: shift 

- **File**: shift.v
## Diagram

![Diagram](shift.svg "Diagram")
## Description

 类似FIFO，移位寄存器的功能

## Generics

| Generic name | Type | Value | Description |
| ------------ | ---- | ----- | ----------- |
| M            |      | 3     | FIFO深度      |
| N            |      | 32    | FIFO宽度      |

## Ports

| Port name | Direction | Type    | Description |
| --------- | --------- | ------- | ----------- |
| clk       | input     |         | 时钟信号        |
| data      | input     | [N-1:0] | 输入数据用于缓存    |
| data_s    | output    | [N-1:0] | 输出数据        |

## Signals

| Name  | Type          | Description |
| ----- | ------------- | ----------- |
| shift | reg [M*N-1:0] |             |

## Processes
- unnamed: ( @(posedge clk) )
  - **Type:** always
