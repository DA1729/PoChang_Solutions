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

Let the output (bcode) be composed of four bits: y(3), y(2), y(1), y(0). Then, 

```verilog 
y[0] = en & (~a[1]) & (~a[0]);
y[1] = en & (~a[1]) & (a[0]);
y[2] = en & (a[1]) & (~a[0]);
y[3] = en & (a[1]) & (a[0]);
```

## Simulation Results

Below are the simulation results (waveforms) from Modelsim: 

![2-to-4 Decoder Simulation Results](decoder_2_4_wave.png)