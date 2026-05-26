PROGRAM main
  VAR
    MainGreen : BOOL := True;
    MainYellow : BOOL := False;
    MainRed : BOOL := False;
    SideGreen : BOOL := False;
    SideYellow : BOOL := False;
    SideRed : BOOL := True;
    CarWaiting : BOOL := False;
    PedWaiting : BOOL := False;
    GreenTimer : TON;
    YellowTimer : TON;
    SideGreenTimer : TON;
    SideYellowTimer : TON;
    _TMP_OR3089709_OUT : BOOL;
    _TMP_OR7337546_OUT : BOOL;
  END_VAR

  GreenTimer(IN := MainGreen, PT := T#10s);
  _TMP_OR3089709_OUT := OR(CarWaiting AND GreenTimer.Q, PedWaiting);
  IF _TMP_OR3089709_OUT THEN
    MainYellow := TRUE; (*set*)
  END_IF;
  MainGreen := NOT(_TMP_OR3089709_OUT);
  IF NOT(PedWaiting) AND NOT(CarWaiting) AND GreenTimer.Q THEN
    MainGreen := TRUE; (*set*)
  END_IF;
  YellowTimer(IN := MainYellow, PT := T#3s);
  IF YellowTimer.Q THEN
    MainRed := TRUE; (*set*)
  END_IF;
  IF YellowTimer.Q THEN
    MainYellow := FALSE; (*reset*)
  END_IF;
  IF NOT(CarWaiting) AND NOT(PedWaiting) AND SideRed AND MainRed THEN
    MainGreen := TRUE; (*set*)
  END_IF;
  IF NOT(CarWaiting) AND NOT(PedWaiting) AND SideRed AND MainRed THEN
    MainRed := FALSE; (*reset*)
  END_IF;
  _TMP_OR7337546_OUT := OR(PedWaiting, CarWaiting);
  SideGreenTimer(IN := MainRed AND _TMP_OR7337546_OUT, PT := T#10s);
  IF MainRed AND _TMP_OR7337546_OUT THEN
    SideGreen := TRUE; (*set*)
  END_IF;
  IF MainRed AND _TMP_OR7337546_OUT THEN
    SideRed := FALSE; (*reset*)
  END_IF;
  IF SideGreenTimer.Q THEN
    SideYellow := TRUE; (*set*)
  END_IF;
  IF SideGreenTimer.Q THEN
    SideGreen := FALSE; (*reset*)
  END_IF;
  SideYellowTimer(IN := SideYellow, PT := T#3s);
  IF SideYellowTimer.Q THEN
    SideRed := TRUE; (*set*)
  END_IF;
  IF SideYellowTimer.Q THEN
    SideYellow := FALSE; (*reset*)
  END_IF;
  IF SideYellowTimer.Q THEN
    MainGreen := TRUE; (*set*)
  END_IF;
  IF SideYellowTimer.Q THEN
    MainRed := FALSE; (*reset*)
  END_IF;
END_PROGRAM


CONFIGURATION Config0

  RESOURCE Res0 ON PLC
    TASK task0(INTERVAL := T#20ms,PRIORITY := 1);
    PROGRAM instance0 WITH task0 : main;
  END_RESOURCE
END_CONFIGURATION

(*DBG:char md5[] = "ff9dc410018b5ed13509a506aa5ff8fd";*)
(*DBG:/**)
(*DBG: * This file is part of OpenPLC Runtime*)
(*DBG: **)
(*DBG: * Copyright (C) 2023 Autonomy, GP Orcullo*)
(*DBG: * Based on the work by GP Orcullo on Beremiz for uC*)
(*DBG: **)
(*DBG: * This program is free software; you can redistribute it and/or*)
(*DBG: * modify it under the terms of the GNU General Public License*)
(*DBG: * as published by the Free Software Foundation; either version 2*)
(*DBG: * of the License, or (at your option) any later version.*)
(*DBG: **)
(*DBG: * This program is distributed in the hope that it will be useful,*)
(*DBG: * but WITHOUT ANY WARRANTY; without even the implied warranty of*)
(*DBG: * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the*)
(*DBG: * GNU General Public License for more details.*)
(*DBG: **)
(*DBG: * You should have received a copy of the GNU General Public License*)
(*DBG: * along with this program; If not, see <http://www.gnu.org/licenses/>.*)
(*DBG: **)
(*DBG: */*)
(*DBG:*)
(*DBG:#include <stdbool.h>*)
(*DBG:*)
(*DBG:// Include defines.h first for Arduino builds to set USE_*_BLOCKS macros*)
(*DBG:// before iec_std_FB.h processes its conditional includes*)
(*DBG:#ifdef ARDUINO*)
(*DBG:#include "../examples/Baremetal/defines.h"*)
(*DBG:#endif*)
(*DBG:*)
(*DBG:#include "iec_types_all.h"*)
(*DBG:#include "POUS.h"*)
(*DBG:*)
(*DBG:#define SAME_ENDIANNESS      0*)
(*DBG:#define REVERSE_ENDIANNESS   1*)
(*DBG:*)
(*DBG:char plc_program_md5[] = "ff9dc410018b5ed13509a506aa5ff8fd";*)
(*DBG:*)
(*DBG:uint8_t endianness;*)
(*DBG:*)
(*DBG:*)
(*DBG:extern MAIN RES0__INSTANCE0;*)
(*DBG:*)
(*DBG:static const struct {*)
(*DBG:    void *ptr;*)
(*DBG:    __IEC_types_enum type;*)
(*DBG:} debug_vars[] = {*)
(*DBG:    {&(RES0__INSTANCE0.MAINGREEN), BOOL_ENUM},*)
(*DBG:    {&(RES0__INSTANCE0.MAINYELLOW), BOOL_ENUM},*)
(*DBG:    {&(RES0__INSTANCE0.MAINRED), BOOL_ENUM},*)
(*DBG:    {&(RES0__INSTANCE0.SIDEGREEN), BOOL_ENUM},*)
(*DBG:    {&(RES0__INSTANCE0.SIDEYELLOW), BOOL_ENUM},*)
(*DBG:    {&(RES0__INSTANCE0.SIDERED), BOOL_ENUM},*)
(*DBG:    {&(RES0__INSTANCE0.CARWAITING), BOOL_ENUM},*)
(*DBG:    {&(RES0__INSTANCE0.PEDWAITING), BOOL_ENUM},*)
(*DBG:    {&(RES0__INSTANCE0.GREENTIMER.EN), BOOL_ENUM},*)
(*DBG:    {&(RES0__INSTANCE0.GREENTIMER.ENO), BOOL_ENUM},*)
(*DBG:    {&(RES0__INSTANCE0.GREENTIMER.IN), BOOL_ENUM},*)
(*DBG:    {&(RES0__INSTANCE0.GREENTIMER.PT), TIME_ENUM},*)
(*DBG:    {&(RES0__INSTANCE0.GREENTIMER.Q), BOOL_ENUM},*)
(*DBG:    {&(RES0__INSTANCE0.GREENTIMER.ET), TIME_ENUM},*)
(*DBG:    {&(RES0__INSTANCE0.GREENTIMER.STATE), SINT_ENUM},*)
(*DBG:    {&(RES0__INSTANCE0.GREENTIMER.PREV_IN), BOOL_ENUM},*)
(*DBG:    {&(RES0__INSTANCE0.GREENTIMER.CURRENT_TIME), TIME_ENUM},*)
(*DBG:    {&(RES0__INSTANCE0.GREENTIMER.START_TIME), TIME_ENUM},*)
(*DBG:    {&(RES0__INSTANCE0.YELLOWTIMER.EN), BOOL_ENUM},*)
(*DBG:    {&(RES0__INSTANCE0.YELLOWTIMER.ENO), BOOL_ENUM},*)
(*DBG:    {&(RES0__INSTANCE0.YELLOWTIMER.IN), BOOL_ENUM},*)
(*DBG:    {&(RES0__INSTANCE0.YELLOWTIMER.PT), TIME_ENUM},*)
(*DBG:    {&(RES0__INSTANCE0.YELLOWTIMER.Q), BOOL_ENUM},*)
(*DBG:    {&(RES0__INSTANCE0.YELLOWTIMER.ET), TIME_ENUM},*)
(*DBG:    {&(RES0__INSTANCE0.YELLOWTIMER.STATE), SINT_ENUM},*)
(*DBG:    {&(RES0__INSTANCE0.YELLOWTIMER.PREV_IN), BOOL_ENUM},*)
(*DBG:    {&(RES0__INSTANCE0.YELLOWTIMER.CURRENT_TIME), TIME_ENUM},*)
(*DBG:    {&(RES0__INSTANCE0.YELLOWTIMER.START_TIME), TIME_ENUM},*)
(*DBG:    {&(RES0__INSTANCE0.SIDEGREENTIMER.EN), BOOL_ENUM},*)
(*DBG:    {&(RES0__INSTANCE0.SIDEGREENTIMER.ENO), BOOL_ENUM},*)
(*DBG:    {&(RES0__INSTANCE0.SIDEGREENTIMER.IN), BOOL_ENUM},*)
(*DBG:    {&(RES0__INSTANCE0.SIDEGREENTIMER.PT), TIME_ENUM},*)
(*DBG:    {&(RES0__INSTANCE0.SIDEGREENTIMER.Q), BOOL_ENUM},*)
(*DBG:    {&(RES0__INSTANCE0.SIDEGREENTIMER.ET), TIME_ENUM},*)
(*DBG:    {&(RES0__INSTANCE0.SIDEGREENTIMER.STATE), SINT_ENUM},*)
(*DBG:    {&(RES0__INSTANCE0.SIDEGREENTIMER.PREV_IN), BOOL_ENUM},*)
(*DBG:    {&(RES0__INSTANCE0.SIDEGREENTIMER.CURRENT_TIME), TIME_ENUM},*)
(*DBG:    {&(RES0__INSTANCE0.SIDEGREENTIMER.START_TIME), TIME_ENUM},*)
(*DBG:    {&(RES0__INSTANCE0.SIDEYELLOWTIMER.EN), BOOL_ENUM},*)
(*DBG:    {&(RES0__INSTANCE0.SIDEYELLOWTIMER.ENO), BOOL_ENUM},*)
(*DBG:    {&(RES0__INSTANCE0.SIDEYELLOWTIMER.IN), BOOL_ENUM},*)
(*DBG:    {&(RES0__INSTANCE0.SIDEYELLOWTIMER.PT), TIME_ENUM},*)
(*DBG:    {&(RES0__INSTANCE0.SIDEYELLOWTIMER.Q), BOOL_ENUM},*)
(*DBG:    {&(RES0__INSTANCE0.SIDEYELLOWTIMER.ET), TIME_ENUM},*)
(*DBG:    {&(RES0__INSTANCE0.SIDEYELLOWTIMER.STATE), SINT_ENUM},*)
(*DBG:    {&(RES0__INSTANCE0.SIDEYELLOWTIMER.PREV_IN), BOOL_ENUM},*)
(*DBG:    {&(RES0__INSTANCE0.SIDEYELLOWTIMER.CURRENT_TIME), TIME_ENUM},*)
(*DBG:    {&(RES0__INSTANCE0.SIDEYELLOWTIMER.START_TIME), TIME_ENUM},*)
(*DBG:    {&(RES0__INSTANCE0._TMP_OR3089709_OUT), BOOL_ENUM},*)
(*DBG:    {&(RES0__INSTANCE0._TMP_OR7337546_OUT), BOOL_ENUM},*)
(*DBG:};*)
(*DBG:*)
(*DBG:#define VAR_COUNT               50*)
(*DBG:*)
(*DBG:uint16_t get_var_count(void)*)
(*DBG:{*)
(*DBG:    return VAR_COUNT;*)
(*DBG:}*)
(*DBG:*)
(*DBG:size_t get_var_size(size_t idx)*)
(*DBG:{*)
(*DBG:    if (idx >= VAR_COUNT)*)
(*DBG:    {*)
(*DBG:        return 0;*)
(*DBG:    }*)
(*DBG:    switch (debug_vars[idx].type) {*)
(*DBG:    case TIME_ENUM:*)
(*DBG:        return sizeof(TIME);*)
(*DBG:    case BOOL_ENUM:*)
(*DBG:        return sizeof(BOOL);*)
(*DBG:    case SINT_ENUM:*)
(*DBG:        return sizeof(SINT);*)
(*DBG:    default:*)
(*DBG:        return 0;*)
(*DBG:    }*)
(*DBG:}*)
(*DBG:*)
(*DBG:void *get_var_addr(size_t idx)*)
(*DBG:{*)
(*DBG:    void *ptr = debug_vars[idx].ptr;*)
(*DBG:*)
(*DBG:    switch (debug_vars[idx].type) {*)
(*DBG:    case TIME_ENUM:*)
(*DBG:        return (void *)&((__IEC_TIME_t *) ptr)->value;*)
(*DBG:    case BOOL_ENUM:*)
(*DBG:        return (void *)&((__IEC_BOOL_t *) ptr)->value;*)
(*DBG:    case SINT_ENUM:*)
(*DBG:        return (void *)&((__IEC_SINT_t *) ptr)->value;*)
(*DBG:    default:*)
(*DBG:        return 0;*)
(*DBG:    }*)
(*DBG:}*)
(*DBG:*)
(*DBG:void force_var(size_t idx, bool forced, void *val)*)
(*DBG:{*)
(*DBG:    void *ptr = debug_vars[idx].ptr;*)
(*DBG:*)
(*DBG:    if (forced) {*)
(*DBG:        size_t var_size = get_var_size(idx);*)
(*DBG:        switch (debug_vars[idx].type) {*)
(*DBG:        case TIME_ENUM: {*)
(*DBG:            memcpy(&((__IEC_TIME_t *) ptr)->value, val, var_size);*)
(*DBG:            ((__IEC_TIME_t *) ptr)->flags |= __IEC_FORCE_FLAG;*)
(*DBG:            break;*)
(*DBG:        }*)
(*DBG:    *)
(*DBG:        case BOOL_ENUM: {*)
(*DBG:            memcpy(&((__IEC_BOOL_t *) ptr)->value, val, var_size);*)
(*DBG:            ((__IEC_BOOL_t *) ptr)->flags |= __IEC_FORCE_FLAG;*)
(*DBG:            break;*)
(*DBG:        }*)
(*DBG:    *)
(*DBG:        case SINT_ENUM: {*)
(*DBG:            memcpy(&((__IEC_SINT_t *) ptr)->value, val, var_size);*)
(*DBG:            ((__IEC_SINT_t *) ptr)->flags |= __IEC_FORCE_FLAG;*)
(*DBG:            break;*)
(*DBG:        }*)
(*DBG:    *)
(*DBG:        default:*)
(*DBG:            break;*)
(*DBG:        }*)
(*DBG:    } else {*)
(*DBG:        switch (debug_vars[idx].type) {*)
(*DBG:        case TIME_ENUM:*)
(*DBG:            ((__IEC_TIME_t *) ptr)->flags &= ~__IEC_FORCE_FLAG;*)
(*DBG:            break;*)
(*DBG:        case BOOL_ENUM:*)
(*DBG:            ((__IEC_BOOL_t *) ptr)->flags &= ~__IEC_FORCE_FLAG;*)
(*DBG:            break;*)
(*DBG:        case SINT_ENUM:*)
(*DBG:            ((__IEC_SINT_t *) ptr)->flags &= ~__IEC_FORCE_FLAG;*)
(*DBG:            break;*)
(*DBG:        default:*)
(*DBG:            break;*)
(*DBG:        }*)
(*DBG:    }*)
(*DBG:}*)
(*DBG:*)
(*DBG:void swap_bytes(void *ptr, size_t size)*)
(*DBG:{*)
(*DBG:    uint8_t *bytePtr = (uint8_t *)ptr;*)
(*DBG:    size_t i;*)
(*DBG:    for (i = 0; i < size / 2; ++i)*)
(*DBG:    {*)
(*DBG:        uint8_t temp = bytePtr[i];*)
(*DBG:        bytePtr[i] = bytePtr[size - 1 - i];*)
(*DBG:        bytePtr[size - 1 - i] = temp;*)
(*DBG:    }*)
(*DBG:}*)
(*DBG:*)
(*DBG:void trace_reset(void)*)
(*DBG:{*)
(*DBG:    for (size_t i=0; i < VAR_COUNT; i++)*)
(*DBG:    {*)
(*DBG:        force_var(i, false, 0);*)
(*DBG:    }*)
(*DBG:}*)
(*DBG:*)
(*DBG:void set_trace(size_t idx, bool forced, void *val)*)
(*DBG:{*)
(*DBG:    if (idx >= 0 && idx < VAR_COUNT)*)
(*DBG:    {*)
(*DBG:        if (endianness == REVERSE_ENDIANNESS)*)
(*DBG:        {*)
(*DBG:            // Prevent swapping for STRING type*)
(*DBG:            if (debug_vars[idx].type == STRING_ENUM)*)
(*DBG:            {*)
(*DBG:                // Do nothing*)
(*DBG:                ;*)
(*DBG:            }*)
(*DBG:            else*)
(*DBG:            {*)
(*DBG:                swap_bytes(val, get_var_size(idx));*)
(*DBG:            }*)
(*DBG:        }*)
(*DBG:*)
(*DBG:        force_var(idx, forced, val);*)
(*DBG:    }*)
(*DBG:}*)
(*DBG:*)
(*DBG:void set_endianness(uint8_t value)*)
(*DBG:{*)
(*DBG:    if (value == SAME_ENDIANNESS || value == REVERSE_ENDIANNESS)*)
(*DBG:    {*)
(*DBG:        endianness = value;*)
(*DBG:    }*)
(*DBG:}*)
(*DBG:*)