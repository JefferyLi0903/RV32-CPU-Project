# Entity: delay 

- **File**: delay.v
## Diagram

![Diagram](delay.svg "Diagram")
## Description

 用于将数据推迟到周期末送出（下降沿送出）

## Generics

| Generic name | Type | Value | Description |
| ------------ | ---- | ----- | ----------- |
| N            |      | 32    |             |

## Ports

| Port name | Direction | Type    | Description |
| --------- | --------- | ------- | ----------- |
| clk       | input     |         | 输入时钟        |
| data      | input     | [N-1:0] | 输入数据        |
| data_d    | output    | [N-1:0] | 延迟后输出数据     |

## Processes
- unnamed: ( @(negedge clk) )
  - **Type:** always

