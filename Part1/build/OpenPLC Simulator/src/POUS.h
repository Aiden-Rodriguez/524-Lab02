#ifndef __POUS_H
#define __POUS_H

#include "accessor.h"
#include "iec_std_lib.h"

// PROGRAM MAIN
// Data part
typedef struct {
  // PROGRAM Interface - IN, OUT, IN_OUT variables

  // PROGRAM private variables - TEMP, private and located variables
  __DECLARE_VAR(BOOL,GREENON)
  __DECLARE_VAR(BOOL,ALLLIGHTSOFF)
  __DECLARE_VAR(BOOL,YELLOWON)
  __DECLARE_VAR(BOOL,REDON)
  TON GREENTIMER;
  TON YELLOWTIMER;
  TON REDTIMER;
  __DECLARE_VAR(BOOL,_TMP_OR2782429_OUT)

} MAIN;

void MAIN_init__(MAIN *data__, BOOL retain);
// Code part
void MAIN_body__(MAIN *data__);
#endif //__POUS_H
