#include <p18f4550.h>

void clockSetup(void)
{
    OSCTUNE = 0x8f;
    OSCCON = 0xf1;
}

void pinSetup(void)
{
    TRISB = 0x00;
}

void tmr1Setup(void)
{
    T1CON = 0b11111000;
}