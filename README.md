# CMODA7-fpga-pb_led
CMOD A7 FPGA push button, led lights, release button turns the led off.

original code is from https://digilent.com/reference/learn/software/tutorials/verilog-project-2/start

## Prerequisites

* Vivado correctly installed
* device drivers correctly installed
* CMOD-A7 FPGA board

## Assumptions
* This uses Vivado installed on Ubuntu 20.04

## To install
* clone the repo
* Open Vivado
* click Open Project
* navigate to the repo and select CMODA7-fpga-pd_led.xpr

## To run
* find "SYNTHESIS" in left hand pane
  * click "Run Synthesis" next to Green arrow
  * see upper right corner for status
  * takes a few minutes
* get dialog box "Synthesis Completed"
  * ensure "Run Implementation" selected
  * click OK
* get dialog box "Launch Runs"
  * set Number of jobs to the number of cores your PC has (e.g. 8)
  * click OK
  * takes a few minutes
* get dialog box "Implementation Completed"
  * select "Generate Bitstream"
  * click OK
* get dialog box "Launch Runs"
  * click OK
  * takes a few minutes
* get dialog box "Bitstream Generation Completed"
  * select "Open Hardware Manager"
  * if No hardware target is open:
     * ensure your FPGA is connected via USB-micro and powered on
     * click "Open Target" either in left hand pane or in green bar at top of window
     * get a drop down menu
     * click "Auto Connect"
     * get dialog box, takes 10 - 15s
     * Hardware pane should have your FPGA in it and indicate "Connected"
* there should be a new item "Program device" in the left hand pane and in the the green bar at top of window
  * click "Program device"
  * get dialog box "Program Device"
  * click "Program"

## To test
* There are 2 buttons on the FPGA board BTN0 and BTN1
* There are 3 LEDs: LD0, LD1 and LD2
  * LD0 is a tri-color led and should be lit (blue)
  * LD1 and LD2 are off
* press BTN0 => LD1 should turn on
* release BTN0 => LD1 should turn off
  * LD0 should stay lit (blue) and LD2 be off
     
  
