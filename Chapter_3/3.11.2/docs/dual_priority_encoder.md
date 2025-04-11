# Dual Priority Encoder


First, before jumping into the dual-priority, let's see how a single priority encoder works.

I have implemented a 4-to-2 priority encoder. Let this inputs be `A_0, A_1, A_2, A_3` and the output be `O_1, O_2`. Now, if I set a priority order, `A_0, A_1, A_2, A_3` (in order of highest to lowest priority), what I mean is that say `A_1` and `A_3` high at once, then I should get output corresponding to `A_1` as it is at a higher priority. Using this logic, we can construct the following truth table: 

| `A_0` | `A_1` | `A_2` | `A_3` | `O_1` | `O_2` |
|:-----:|:-----:|:-----:|:-----:|:-----:|:-----:|
|   1   |   x   |   x   |   x   |   0   |   0   |
|   0   |   1   |   x   |   x   |   0   |   1   |
|   0   |   0   |   1   |   x   |   1   |   0   |
|   0   |   0   |   0   |   1   |   1   |   1   |

Now, using if and else statements in verilog, we can easily synthesize this circuit. 
