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

    void send_board(void);
    void wait(uint16_t wait_time);
    inline void reset_T0(void);


#ifdef	__cplusplus
}
#endif

#endif	/* MAINFUNCTIONS_H */

