#include "POUS.h"
#include "Config0.h"

void MAIN_init__(MAIN *data__, BOOL retain) {
  __INIT_VAR(data__->GREENON,__BOOL_LITERAL(TRUE),retain)
  __INIT_VAR(data__->ALLLIGHTSOFF,__BOOL_LITERAL(FALSE),retain)
  __INIT_VAR(data__->YELLOWON,__BOOL_LITERAL(FALSE),retain)
  __INIT_VAR(data__->REDON,__BOOL_LITERAL(FALSE),retain)
  TON_init__(&data__->GREENTIMER,retain);
  TON_init__(&data__->YELLOWTIMER,retain);
  TON_init__(&data__->REDTIMER,retain);
  __INIT_VAR(data__->_TMP_OR2782429_OUT,__BOOL_LITERAL(FALSE),retain)
}

// Code part
void MAIN_body__(MAIN *data__) {
  // Initialise TEMP variables

  if (((!(__GET_VAR(data__->REDON,)) && !(__GET_VAR(data__->YELLOWON,))) && !(__GET_VAR(data__->GREENON,)))) {
    __SET_VAR(data__->,ALLLIGHTSOFF,,__BOOL_LITERAL(TRUE));
  };
  __SET_VAR(data__->,_TMP_OR2782429_OUT,,OR__BOOL__BOOL(
    (BOOL)__BOOL_LITERAL(TRUE),
    NULL,
    (UINT)2,
    (BOOL)__GET_VAR(data__->GREENON,),
    (BOOL)__GET_VAR(data__->ALLLIGHTSOFF,)));
  __SET_VAR(data__->GREENTIMER.,IN,,__GET_VAR(data__->_TMP_OR2782429_OUT,));
  __SET_VAR(data__->GREENTIMER.,PT,,__time_to_timespec(1, 0, 10, 0, 0, 0));
  TON_body__(&data__->GREENTIMER);
  if (__GET_VAR(data__->GREENTIMER.Q,)) {
    __SET_VAR(data__->,GREENON,,__BOOL_LITERAL(FALSE));
  };
  if (__GET_VAR(data__->GREENTIMER.Q,)) {
    __SET_VAR(data__->,YELLOWON,,__BOOL_LITERAL(TRUE));
  };
  __SET_VAR(data__->YELLOWTIMER.,IN,,__GET_VAR(data__->YELLOWON,));
  __SET_VAR(data__->YELLOWTIMER.,PT,,__time_to_timespec(1, 0, 3, 0, 0, 0));
  TON_body__(&data__->YELLOWTIMER);
  if (__GET_VAR(data__->YELLOWTIMER.Q,)) {
    __SET_VAR(data__->,YELLOWON,,__BOOL_LITERAL(FALSE));
  };
  if (__GET_VAR(data__->YELLOWTIMER.Q,)) {
    __SET_VAR(data__->,REDON,,__BOOL_LITERAL(TRUE));
  };
  __SET_VAR(data__->REDTIMER.,IN,,__GET_VAR(data__->REDON,));
  __SET_VAR(data__->REDTIMER.,PT,,__time_to_timespec(1, 0, 13, 0, 0, 0));
  TON_body__(&data__->REDTIMER);
  if (__GET_VAR(data__->REDTIMER.Q,)) {
    __SET_VAR(data__->,REDON,,__BOOL_LITERAL(FALSE));
  };
  if (__GET_VAR(data__->REDTIMER.Q,)) {
    __SET_VAR(data__->,GREENON,,__BOOL_LITERAL(TRUE));
  };

  goto __end;

__end:
  return;
} // MAIN_body__() 





