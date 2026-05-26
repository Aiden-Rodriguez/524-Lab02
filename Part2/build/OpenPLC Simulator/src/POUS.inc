#include "POUS.h"
#include "Config0.h"

void MAIN_init__(MAIN *data__, BOOL retain) {
  __INIT_VAR(data__->MAINGREEN,__BOOL_LITERAL(TRUE),retain)
  __INIT_VAR(data__->MAINYELLOW,__BOOL_LITERAL(FALSE),retain)
  __INIT_VAR(data__->MAINRED,__BOOL_LITERAL(FALSE),retain)
  __INIT_VAR(data__->SIDEGREEN,__BOOL_LITERAL(FALSE),retain)
  __INIT_VAR(data__->SIDEYELLOW,__BOOL_LITERAL(FALSE),retain)
  __INIT_VAR(data__->SIDERED,__BOOL_LITERAL(TRUE),retain)
  __INIT_VAR(data__->CARWAITING,__BOOL_LITERAL(FALSE),retain)
  __INIT_VAR(data__->PEDWAITING,__BOOL_LITERAL(FALSE),retain)
  TON_init__(&data__->GREENTIMER,retain);
  TON_init__(&data__->YELLOWTIMER,retain);
  TON_init__(&data__->SIDEGREENTIMER,retain);
  TON_init__(&data__->SIDEYELLOWTIMER,retain);
  __INIT_VAR(data__->_TMP_OR3089709_OUT,__BOOL_LITERAL(FALSE),retain)
  __INIT_VAR(data__->_TMP_OR7337546_OUT,__BOOL_LITERAL(FALSE),retain)
}

// Code part
void MAIN_body__(MAIN *data__) {
  // Initialise TEMP variables

  __SET_VAR(data__->GREENTIMER.,IN,,__GET_VAR(data__->MAINGREEN,));
  __SET_VAR(data__->GREENTIMER.,PT,,__time_to_timespec(1, 0, 10, 0, 0, 0));
  TON_body__(&data__->GREENTIMER);
  __SET_VAR(data__->,_TMP_OR3089709_OUT,,OR__BOOL__BOOL(
    (BOOL)__BOOL_LITERAL(TRUE),
    NULL,
    (UINT)2,
    (BOOL)(__GET_VAR(data__->CARWAITING,) && __GET_VAR(data__->GREENTIMER.Q,)),
    (BOOL)__GET_VAR(data__->PEDWAITING,)));
  if (__GET_VAR(data__->_TMP_OR3089709_OUT,)) {
    __SET_VAR(data__->,MAINYELLOW,,__BOOL_LITERAL(TRUE));
  };
  if (__GET_VAR(data__->_TMP_OR3089709_OUT,)) {
    __SET_VAR(data__->,MAINGREEN,,__BOOL_LITERAL(FALSE));
  };
  __SET_VAR(data__->YELLOWTIMER.,IN,,__GET_VAR(data__->MAINYELLOW,));
  __SET_VAR(data__->YELLOWTIMER.,PT,,__time_to_timespec(1, 0, 3, 0, 0, 0));
  TON_body__(&data__->YELLOWTIMER);
  if (__GET_VAR(data__->YELLOWTIMER.Q,)) {
    __SET_VAR(data__->,MAINRED,,__BOOL_LITERAL(TRUE));
  };
  if (__GET_VAR(data__->YELLOWTIMER.Q,)) {
    __SET_VAR(data__->,MAINYELLOW,,__BOOL_LITERAL(FALSE));
  };
  if ((((!(__GET_VAR(data__->CARWAITING,)) && !(__GET_VAR(data__->PEDWAITING,))) && __GET_VAR(data__->SIDERED,)) && __GET_VAR(data__->MAINRED,))) {
    __SET_VAR(data__->,MAINGREEN,,__BOOL_LITERAL(TRUE));
  };
  if ((((!(__GET_VAR(data__->CARWAITING,)) && !(__GET_VAR(data__->PEDWAITING,))) && __GET_VAR(data__->SIDERED,)) && __GET_VAR(data__->MAINRED,))) {
    __SET_VAR(data__->,MAINRED,,__BOOL_LITERAL(FALSE));
  };
  __SET_VAR(data__->,_TMP_OR7337546_OUT,,OR__BOOL__BOOL(
    (BOOL)__BOOL_LITERAL(TRUE),
    NULL,
    (UINT)2,
    (BOOL)(__GET_VAR(data__->PEDWAITING,) && !(__GET_VAR(data__->SIDEGREEN,))),
    (BOOL)__GET_VAR(data__->CARWAITING,)));
  __SET_VAR(data__->SIDEGREENTIMER.,IN,,(__GET_VAR(data__->MAINRED,) && __GET_VAR(data__->_TMP_OR7337546_OUT,)));
  __SET_VAR(data__->SIDEGREENTIMER.,PT,,__time_to_timespec(1, 0, 10, 0, 0, 0));
  TON_body__(&data__->SIDEGREENTIMER);
  if ((__GET_VAR(data__->MAINRED,) && __GET_VAR(data__->_TMP_OR7337546_OUT,))) {
    __SET_VAR(data__->,SIDEGREEN,,__BOOL_LITERAL(TRUE));
  };
  if ((__GET_VAR(data__->MAINRED,) && __GET_VAR(data__->_TMP_OR7337546_OUT,))) {
    __SET_VAR(data__->,SIDERED,,__BOOL_LITERAL(FALSE));
  };
  if (__GET_VAR(data__->SIDEGREENTIMER.Q,)) {
    __SET_VAR(data__->,SIDEYELLOW,,__BOOL_LITERAL(TRUE));
  };
  if (__GET_VAR(data__->SIDEGREENTIMER.Q,)) {
    __SET_VAR(data__->,SIDEGREEN,,__BOOL_LITERAL(FALSE));
  };
  __SET_VAR(data__->SIDEYELLOWTIMER.,IN,,__GET_VAR(data__->SIDEYELLOW,));
  __SET_VAR(data__->SIDEYELLOWTIMER.,PT,,__time_to_timespec(1, 0, 3, 0, 0, 0));
  TON_body__(&data__->SIDEYELLOWTIMER);
  if (__GET_VAR(data__->SIDEYELLOWTIMER.Q,)) {
    __SET_VAR(data__->,SIDERED,,__BOOL_LITERAL(TRUE));
  };
  if (__GET_VAR(data__->SIDEYELLOWTIMER.Q,)) {
    __SET_VAR(data__->,SIDEYELLOW,,__BOOL_LITERAL(FALSE));
  };
  if (__GET_VAR(data__->SIDEYELLOWTIMER.Q,)) {
    __SET_VAR(data__->,MAINRED,,__BOOL_LITERAL(FALSE));
  };
  if (__GET_VAR(data__->SIDEYELLOWTIMER.Q,)) {
    __SET_VAR(data__->,MAINGREEN,,__BOOL_LITERAL(TRUE));
  };

  goto __end;

__end:
  return;
} // MAIN_body__() 





