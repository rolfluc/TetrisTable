#include <p18f4550.h>

void enableInterrupts(void)
{
    INTCONbits.GIE =1;
    INTCONbits.PEIE = 1;
}
void disableInterrupts(void)
{
    INTCONbits.GIE = 0;
    INTCONbits.PEIE = 0;
}

void setInterruptPriority(void)
{
    RCONbits.IPEN = 1;
    IPR1bits.TMR1IP = 0;
    IPR1bits.TMR2IP = 0;
    INTCON2bits.RBIP = 0;
}

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
    char t1con = 0x00;
    t1con = t1con | 0xC0; // 16 bit mode, Timer1 Osc
    t1con = t1con | 0x08; //TImer1 Oscilaltor on, not enabled
    TMR1H = 0;
    TMR1L = 0;
    T1CON = t1con;
    PIR1bits.TMR1IF = 0;
    PIE1bits.TMR1IE = 1;
}
inline void tmr1On(void)
{
    T1CONbits.TMR1ON = 1;
}
inline void tmr1Off(void)
{
    T1CONbits.TMR1ON = 0;
}
void tmr2Setup(void)
{
    char t2con = 0x00;
    t2con = t2con | 0x00; // Postscale is:
    t2con = t2con | 0x00; //Timer2 off, Prescaler:
    TMR2 = 255;
    T2CON = t2con;
    PIR1bits.TMR2IF = 0;
    PIE1bits.TMR2IE = 1;
}
inline void tmr2On(void)
{
    T2CONbits.TMR2ON = 1;
}
inline void tmr2Off(void)
{
    T2CONbits.TMR2ON = 0;
}
// PORTB:
// RB7: Move Piece Left
// RB6: Move Piece Right
// RB5: Rotate piece clockwise
// RB$: Rotate piece counter-clockwise
void portBIntSetup(void)
{

    TRISB = 0xff;
    INTCON2bits.RBPU = 0;
    INTCONbits.RBIF = 0;
    INTCONbits.RBIE = 1;
}
//INT0 interrupt used for dropping the piece
void INT0IntSetup(void)
{
    INTCON2bits.INTEDG0 = 0;
    INTCONbits.INT0IF = 0;
    INTCONbits.INT0IE = 1;
}

void interrupt_setup(void)
{
    disableInterrupts();
    setInterruptPriority();
    tmr1Setup();
    tmr2Setup();
    portBIntSetup();
    INT0IntSetup();
}