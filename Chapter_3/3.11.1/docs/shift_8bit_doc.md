# Multifunctional Barrel Shifter

I have implemented only the 8 bit multifunctional barrel shifter, the same logic applies to higher bits. 

In this experiment, we are supposed to implement the same functionality using two different circuits

## Using Rotate-Right, Rotate-Left and Demux

The logic with this is very simple. 
- Connect the input 8-bit bus to both Rotate-Right and Rotate-Left circuits. 
- Connect the respective outputs to the Data Inputs of the 2-to-1 Demux. 
- Put ``lr`` (this input selects the direction of rotation) for the Select input of the Demux. 

And that's it.

In my case, I connected the Rotate-Left circuit's output to the ``D_0`` input of the Demux and other output to the second input. 

Below is the waveform result of the circuit: 

![8-bits Multifunctional Barrel Shifter Version-1 Simulation Results](shift_8bit_wave_v1.png)

## Report for this Version-1

The Utilization Report and the  Timing Report have been uploaded as a text file generated directly from Vivado, I have hidden a few details of my device and all. 


## Using Rotate-Right Circuit and Reversing Circuit

