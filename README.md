experimental sound processing board with XC6SLX9-TQG144 and TLV320AIC3204


Work is in progress. 
Currently board is capable of receiving and sending the audio samples with a codec and passes the loopback test from FPGA pins.
FPGA bitstream config is stored inside the STM32F401RE internal flash.

Quick and dirty firmware loader is here: https://github.com/electrodyssey/lboard2flashboot


Working full-duplex aic3204 configuration script is saved in aic3204script directory:

# The codec receives: MCLK = 11.2896 MHz

# and generates: BLCK = 2.8224 MHz,

# WCLK = 44.1 kHz


Please check the CHANGELOG  for the updates


![alt text](https://github.com/electrodyssey/lboard2/blob/master/plot/lboard2.jpg?raw=true "lboard2")



Block diagram:

![alt text](https://github.com/electrodyssey/lboard2/blob/master/plot/lboard2-drawio-diag.png?raw=true "lboard2 block diagram")


