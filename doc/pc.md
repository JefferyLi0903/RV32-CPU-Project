# Entity: pc 

- **File**: pc.v
## Diagram

![Diagram](pc.svg "Diagram")
## Description


 程序计数器，用于驱动指令地址（当碰到JAL指令时，打开跳转使能端口）

## Ports

| Port name | Direction | Type       | Description   |
| --------- | --------- | ---------- | ------------- |
| clk       | input     |            |               |
| rst       | input     |            |               |
| offset_en | input     |            | 跳转使能端口        |
| offset    | input     | [31:0]     | 直接接入ext32的立即数 |
| addr      | output    | reg [31:0] |               |


## Processes
- counter: ( @(negedge clk or posedge rst) )
  - **Type:** always
