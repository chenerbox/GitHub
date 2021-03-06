/*********************************************************************
*                SEGGER Microcontroller GmbH & Co. KG                *
*        Solutions for real time microcontroller applications        *
**********************************************************************
*                                                                    *
*        (c) 1996 - 2010  SEGGER Microcontroller GmbH & Co. KG       *
*                                                                    *
*        Internet: www.segger.com    Support:  support@segger.com    *
*                                                                    *
**********************************************************************

** emWin V5.06 - Graphical user interface for embedded applications **
emWin is protected by international copyright laws.   Knowledge of the
source code may not be used to write a similar product.  This file may
only be used in accordance with a license and should not be re-
distributed in any way. We appreciate your understanding and fairness.
----------------------------------------------------------------------
File        : LISTWHEEL_Create.c
Purpose     : Implementation of listbox widget
---------------------------END-OF-HEADER------------------------------
*/

#include "LISTWHEEL.h"

#if GUI_WINSUPPORT

/*********************************************************************
*
*       Exported routines
*
**********************************************************************
*/
/*********************************************************************
*
*       LISTWHEEL_Create
*/
LISTWHEEL_Handle LISTWHEEL_Create(const GUI_ConstString* ppText, int x0, int y0, int xsize, int ysize, int Flags) {
  return LISTWHEEL_CreateEx(x0, y0, xsize, ysize, WM_HWIN_NULL, Flags, 0, 0, ppText);
}

/*********************************************************************
*
*       LISTWHEEL_CreateAsChild
*/
LISTWHEEL_Handle LISTWHEEL_CreateAsChild(const GUI_ConstString* ppText, WM_HWIN hWinParent,
                                     int x0, int y0, int xsize, int ysize, int Flags)
{
  return LISTWHEEL_CreateEx(x0, y0, xsize, ysize, hWinParent, Flags, 0, 0, ppText);
}

#else  /* avoid empty object files */
  void LISTWHEEL_Create_C(void) {}
#endif
