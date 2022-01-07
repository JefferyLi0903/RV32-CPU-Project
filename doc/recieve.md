# Entity: receive 

- **File**: recieve.v
## Diagram

![Diagram](recieve.svg "Diagram")
## Description

 用于在上升沿接收数据

## Generics

| Generic name | Type | Value | Description |
| ------------ | ---- | ----- | ----------- |
| N            |      | 32    |             |

## Ports

| Port name | Direction | Type    | Description |
| --------- | --------- | ------- | ----------- |
| clk       | input     |         | 输入时钟        |
| data      | input     | [N-1:0] | 输入数据        |
| data_r    | output    | [N-1:0] | 输出数据        |

## Processes
- unnamed: ( @(posedge clk) )
  - **Type:** always
