# Entity: ext32 

- **File**: ext32.v
## Diagram

![Diagram](ext32.svg "Diagram")
## Description


 立即数扩展器

## Generics

| Generic name | Type | Value | Description |
| ------------ | ---- | ----- | ----------- |
| N            |      | 12    |             |

## Ports

| Port name | Direction | Type    | Description |
| --------- | --------- | ------- | ----------- |
| imm       | input     | [N-1:0] | 待扩展的立即数     |
| ext_imm   | output    | [31:0]  | 已扩展的立即数     |
