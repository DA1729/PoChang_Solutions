# # 4-to-16 Decoder using 2-to-4 Decoders

# Truth Table

### Truth Table for 4-to-16 Decoder

| en | a[3] | a[2] | a[1] | a[0] | bcode (16-bit output)        |
|----|------|------|------|------|------------------------------|
|  0 |  X   |  X   |  X   |  X   | 0000_0000_0000_0000         |
|  1 |  0   |  0   |  0   |  0   | 0000_0000_0000_0001         |
|  1 |  0   |  0   |  0   |  1   | 0000_0000_0000_0010         |
|  1 |  0   |  0   |  1   |  0   | 0000_0000_0000_0100         |
|  1 |  0   |  0   |  1   |  1   | 0000_0000_0000_1000         |
|  1 |  0   |  1   |  0   |  0   | 0000_0000_0001_0000         |
|  1 |  0   |  1   |  0   |  1   | 0000_0000_0010_0000         |
|  1 |  0   |  1   |  1   |  0   | 0000_0000_0100_0000         |
|  1 |  0   |  1   |  1   |  1   | 0000_0000_1000_0000         |
|  1 |  1   |  0   |  0   |  0   | 0000_0001_0000_0000         |
|  1 |  1   |  0   |  0   |  1   | 0000_0010_0000_0000         |
|  1 |  1   |  0   |  1   |  0   | 0000_0100_0000_0000         |
|  1 |  1   |  0   |  1   |  1   | 0000_1000_0000_0000         |
|  1 |  1   |  1   |  0   |  0   | 0001_0000_0000_0000         |
|  1 |  1   |  1   |  0   |  1   | 0010_0000_0000_0000         |
|  1 |  1   |  1   |  1   |  0   | 0100_0000_0000_0000         |
|  1 |  1   |  1   |  1   |  1   | 1000_0000_0000_0000         |

- **When en = 0**, all outputs are **0**.
- **When en = 1**, only one output bit is **1**, corresponding to the decimal value of `a[3:0]`.


## Block Diagram

I am not making the block diagram like the ones before (maybe i'll add a handrawn sometime in the future).

## Simulation Results

Below are the simulation results (waveforms) from Modelsim: 

![4-to-16 Decoder Simulation Results](decoder_4_16_wave.png)