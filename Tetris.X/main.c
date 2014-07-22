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


uint8_t block_coding[TOTAL_BYTE_LENGTH];
uint32_t current_height[HEIGHT_OF_BOARD];
uint8_t b_value[PORTB_BUFFER_LENGTH];
uint8_t b_buf_ptr = 0;

void interrupt high_interrupt(void)
{
    //Timer1 Updates the board every 100ms, Loads button buffer every 50ms
    if (INTCONbits.TMR0IF == 1)
    {
        reset_T0();
    }
}


void interrupt low_priority low_interrupt(void)
{
    if (INTCONbits.RBIF == 1)
    {
        INTCONbits.RBIF = 0;
        b_value[b_buf_ptr] = PORTB;
        b_buf_ptr = ++b_buf_ptr % 10;
    }
    if (INTCONbits.INT0IF == 1)
    {
        INTCONbits.INT0IF = 0;
        b_value[b_buf_ptr] = PORTB;
        b_buf_ptr = ++b_buf_ptr % 10;
    }
}



void setup(void)
{
    //Clear up/initialize the LED Block
    for (uint8_t index = 0; index < TOTAL_BYTE_LENGTH; index++)
    {
        block_coding[index] = 0;
    }
    for (uint8_t index = 0; index < LENGTH_OF_BOARD; index++)
    {
        current_height[index] = 0;
    }
    for (uint8_t index = 0; index < PORTB_BUFFER_LENGTH; index++)
    {
        b_value[index] = 0;
    }
    interrupt_setup();
    enableInterrupts();
    //clockSetup();
    //pinSetup();
}


/*
 *
 */
void main(void)
{
    setup();
    tmr0On();
    while(1)
    {
        //send_board();
    }
}

    //0 bit: 0.40us HI, 0.80us LO
    //1 bit: 0.80us HI, 0.40us LO,
    //each timing is +/- 0.10us
    //res:  50us
    //1 cycle = 20.83333 ns
    //20 cycles is closest
//
//Send board sends the pre-made LED matrix array from PORTD
//
void send_board()
{
    uint8_t x = 0;
    uint8_t y = 0;
    disableInterrupts();
    TRISD = 0x00;
    for (uint8_t index =0; index < TOTAL_BYTE_LENGTH; index++) // 5 cycles (first is 10)
    {
        PORTD = 0xff;
        asm("nop");
        asm("nop");asm("nop");asm("nop");asm("nop");asm("nop");asm("nop");asm("nop");

        PORTD = block_coding[index];
        //asm("nop");
        //asm("nop");asm("nop");asm("nop");asm("nop");asm("nop");asm("nop");asm("nop");asm("nop");asm("nop");asm("nop");asm("nop");asm("nop");asm("nop");asm("nop");asm("nop");asm("nop");asm("nop");
        //18 cycles

        PORTD = 0x00;
        //asm("nop");
        //asm("nop");asm("nop");asm("nop");asm("nop");asm("nop");asm("nop");asm("nop");asm("nop");asm("nop");asm("nop");asm("nop");asm("nop");asm("nop");
        //14 cycles
    }
    uint16_t wait_time = 266;
    while (wait_time) wait_time--;
    enableInterrupts();
}

inline void reset_T0(void)
{
    TMR0H = 0x6D;
    TMR0L = 0x84;
    INTCONbits.TMR0IF = 0;
}