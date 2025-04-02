# Greater than Circuit for 2 bits inputs

## Step 1: Truth Table

| a[1] | a[0] | b[1] | b[0] | y(out) |
|------|------|------|------|--------|
|  0   |  0   |  0   |  0   |   1    |
|  0   |  1   |  0   |  0   |   1    |
|  1   |  0   |  0   |  0   |   1    |
|  1   |  1   |  0   |  0   |   1    |
|  0   |  0   |  0   |  1   |   0    |
|  0   |  1   |  0   |  1   |   1    |
|  1   |  0   |  0   |  1   |   1    |
|  1   |  1   |  0   |  1   |   1    |
|  0   |  0   |  1   |  0   |   0    |
|  0   |  1   |  1   |  0   |   0    |
|  1   |  0   |  1   |  0   |   1    |
|  1   |  1   |  1   |  0   |   1    |
|  0   |  0   |  1   |  1   |   0    |
|  0   |  1   |  1   |  1   |   0    |
|  1   |  0   |  1   |  1   |   0    |
|  1   |  1   |  1   |  1   |   1    |

---

## Step 2: Karnaugh Map Representation

The values are placed in a **4×4 K-map**, where:

- **Rows** represent `a[1] a[0]`
- **Columns** represent `b[1] b[0]`

| a[1] a[0] \ b[1] b[0] | 00  | 01  | 11  | 10  |
|------------------------|-----|-----|-----|-----|
| **00**                |  1  |  0  |  0  |  0  |
| **01**                |  1  |  1  |  0  |  0  |
| **11**                |  1  |  1  |  1  |  1  |
| **10**                |  1  |  1  |  0  |  1  |

---

## Step 3: Grouping Terms

- `p0` covers cases where `b[0]` is `0` and `b[1]` is `0`.
- `p1` covers cases where `a[0]` is `1` and `a[1]` is `1`.
- `p2` covers cases where `a[0]` is `1` and `b[1]` is `0`.
- `p3` covers cases where `a[1]` is `1` and `b[0]` is `0`.
- `p4` covers cases where `a[1]` is `1` and `b[1]` is `0`.

Thus, the final expression is:

```verilog
p0 = ~b[0] & (~b[1]);
p1 = a[0] & a[1];
p2 = a[0] & (~b[1]);
p3 = a[1] & (~b[0]);
p4 = a[1] & (~b[1]);
y = p0 | p1 | p2 | p3 | p4;
```
---

## Simulation Results

Below are the simulation results (waveforms) from Modelsim:
![2-bits Greater Than Simulation Results](wave_2bit.png)
