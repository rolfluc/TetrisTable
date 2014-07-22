#include <p18f4550.h>

void enableInterrupts(void)
{
    INTCONbits.GIE = 1;
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
    TRISB = 0xff;
    TRISD = 0x00;
}

void tmr0Setup(void)
{
    T0CON = 0x05; // 16 bit mode, off, 64 bit pre-scaler
    TMR0H = 0x6D;
    TMR0L = 0x84;
    INTCONbits.TMR0IF = 0;
    INTCONbits.TMR0IE = 1;
}
inline void tmr0On(void)
{
    T0CONbits.TMR0ON = 1;
}
inline void tmr0Off(void)
{
    T0CONbits.TMR0ON = 0;
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
    tmr0Setup();
    portBIntSetup();
    INT0IntSetup();
}