# LED Pmod&trade; compatible module

LED8 is a simple 8 LED module with a 12-pin Pmod&trade; compatible header.

This repo contains schematics, pinouts and example gateware.

Find more information on the [LED8 product page](https://machdyne.com/product/led8-pmod/).

## Counter w/ Adjustable Brightness Example

Building the example requires [Yosys](https://github.com/YosysHQ/yosys), [nextpnr-ice40](https://github.com/YosysHQ/nextpnr) and [IceStorm](https://github.com/YosysHQ/icestorm).

Assuming they are installed, you can simply type `make` to build the gateware, which will be written to output/count.bin. This example targets the Riegel FPGA board but can be easily adapted to any FPGA board with a 12-pin PMOD connector.

## Pinout

| Signal | Pin |
| ------ | --- |
| LED0 | 1 |
| LED1 | 2 |
| LED2 | 3 |
| LED3 | 4 |
| GND | 5 |
| 3V3 | 6 |
| LED1 | 7 |
| LED2 | 8 |
| LED3 | 9 |
| LED4 | 10 |
| GND | 11 |
| 3V3 | 12 |
