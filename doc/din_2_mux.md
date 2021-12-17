# Entity: din_2_mux 

- **File**: din_2_mux.v
## Diagram

![Diagram](din_2_mux.svg "Diagram")
## Description




















 数据选择器,在ALU的din2 之前使用.  

## Ports

| Port name | Direction | Type   | Description |
| --------- | --------- | ------ | ----------- |
| ext_imm   | input     | [31:0] |             |
| din_2i    | input     | [31:0] |             |
| din_2     | output    | [31:0] |             |
| sel       | input     |        |             |
| clk       | input     |        |             |
## Processes
- unnamed: ( @(negedge clk) )
  - **Type:** always
