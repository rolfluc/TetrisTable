#include <p18f4550.h>
#include <stdio.h>
#include <stdlib.h>
#include "definitions.h"
#include "setupFunctions.h"
#include "mainFunctions.h"

#pragma config FOSC=ECPLLIO_EC, PLLDIV=12, CPUDIV=OSC1_PLL2, USBDIV=2, IESO=ON
#pragma config WDT=OFF, PWRT=ON, BOR=OFF
#pragma config LVP=OFF, MCLRE=ON, PBADEN=OFF, STVREN=ON
#pragma config FCMEN = ON


void setup(void)
{
    clockSetup();
    pinSetup();
}


/*
 * 
 */
void main(void)
{
    //setup();
    lowBit(0xff,0x01);
}

    //0 bit: 0.40us HI, 0.85us LO
    //1 bit: 0.80us HI, 0.45us LO, each timing is +/- 0.15us

void lowBit(uint8_t whichPortBBit, uint8_t bitPolarity)
{
    TRISB = whichPortBBit;
    PORTB = 0x00;
    switch(bitPolarity)
    {
        //Sending the LO signal of a 0 bit, wait for 0.7us-1.0us
        case 0:
            
            break;
        //Sending the LO signal of a 1 bit, wait for 0.3us-.6us
        case 1:
            break;
        default:
            break;
    }
}
void highBit(uint8_t whichPortBBit, uint8_t bitPolarity)
{
    TRISB = whichPortBBit;
    PORTB = 0xff;
    switch(bitPolarity)
    {
        //Sending the HI signal of a 0 bit, wait for 0.7us-1.0us
        case 0:
            break;
        //Sending the HI signal of a 1 bit, wait for 0.7us-1.0us
        case 1:
            break;
        default:
            break;
    }
}

