/* 
 * File:   mainFunctions.h
 * Author: rolfes
 *
 * Created on May 27, 2014, 11:35 PM
 */

#include "definitions.h"

#ifndef MAINFUNCTIONS_H
#define	MAINFUNCTIONS_H

#ifdef	__cplusplus
extern "C" {
#endif

    void highBit(uint8_t whichPortBBit, uint8_t bitPolarity);
    void lowBit(uint8_t whichPortBBit, uint8_t bitPolarity);
    void wait50ns(void);


#ifdef	__cplusplus
}
#endif

#endif	/* MAINFUNCTIONS_H */

