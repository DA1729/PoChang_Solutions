# 2-to-4 Decoder

## Truth Table

| en | a(1) | a(0) | bcode  |
|----|------|------|--------|
| 0  |  -   |  -   | 0000   |
| 1  |  0   |  0   | 0001   |
| 1  |  0   |  1   | 0010   |
| 1  |  1   |  0   | 0100   |
| 1  |  1   |  1   | 1000   |

## Logic Expression 

Let the output (bcode) be composed of four bits: y3, y2, y1, y0. Then, 

```verilog 
y0 = en & (~a(1)) & (~a(0));
y1 = en & (~a(1)) & (~a(0));
y2 = en & (a(1)) & (~a(0));
y3 = en & (a(1)) & (a(0));

