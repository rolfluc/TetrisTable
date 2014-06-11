TetrisTable
===========

This is my attempt at creating the notable game of tetris into a table.


For the board design, I am not an expert nor do I claim to be one, but it is my attempt at creating a re-usable design contains swappable boards in order to allow poor soldering.

The project will be detailed with the standard tetris board, score, and sound. The sound may be driven with a seperate MCU, not sure if the Tetris handling device can handle both a constant stream of music as well as LED/game control.

The hardware components currently being utilized:
WS2812            -       RGB LED
PIC18F4550        -       MCU
100W (5V,20A) PSU -       Power Supply
5 Arcade Switches -       Buttons
