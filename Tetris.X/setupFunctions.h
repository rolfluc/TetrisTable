/* 
 * File:   setupFunctions.h
 * Author: rolfes
 *
 * Created on May 27, 2014, 1:05 PM
 */

#ifndef SETUPFUNCTIONS_H
#define	SETUPFUNCTIONS_H

#ifdef	__cplusplus
extern "C" {
#endif

    void clockSetup(void);
    void pinSetup(void);
    void INT0IntSetup(void);
    void interrupt_setup(void);
    inline void tmr0Off(void);
    inline void tmr0On(void);
    void tmr0Setup(void);
    void enableInterrupts(void);
    void disableInterrupts(void);
    void setInterruptPriority(void);


#ifdef	__cplusplus
}
#endif

#endif	/* SETUPFUNCTIONS_H */

