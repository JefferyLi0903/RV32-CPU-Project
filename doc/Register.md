# Entity: register 

- **File**: Register.v

## Diagram

![Diagram](Register.svg "Diagram")

## Ports

| Port name | Direction | Type   | Description |
| --------- | --------- | ------ | ----------- |
| clk       | input     |        |             |
| rs1       | input     | [4:0]  |             |
| rs2       | input     | [4:0]  |             |
| rd        | input     | [4:0]  |             |
| wr_data   | input     | [31:0] |             |
| wr_en     | input     |        |             |
| data1     | output    | [31:0] |             |
| data2     | output    | [31:0] |             |

## Signals

| Name     | Type       | Description |
| -------- | ---------- | ----------- |
| register | reg [31:0] |             |

## Processes
- unnamed: ( @(negedge clk) )
  - **Type:** always
