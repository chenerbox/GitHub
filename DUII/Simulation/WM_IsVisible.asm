﻿; Listing generated by Microsoft (R) Optimizing Compiler Version 16.00.40219.01 

	TITLE	C:\DUII\Simulation\GUI\WM\WM_IsVisible.c
	.686P
	.XMM
	include listing.inc
	.model	flat

INCLUDELIB LIBCMT
INCLUDELIB OLDNAMES

PUBLIC	_WM_IsVisible
EXTRN	_GUI_ALLOC_h2p:PROC
EXTRN	__RTC_CheckEsp:PROC
EXTRN	__RTC_Shutdown:PROC
EXTRN	__RTC_InitBase:PROC
;	COMDAT rtc$TMZ
; File c:\duii\simulation\gui\wm\wm_isvisible.c
rtc$TMZ	SEGMENT
__RTC_Shutdown.rtc$TMZ DD FLAT:__RTC_Shutdown
rtc$TMZ	ENDS
;	COMDAT rtc$IMZ
rtc$IMZ	SEGMENT
__RTC_InitBase.rtc$IMZ DD FLAT:__RTC_InitBase
; Function compile flags: /Odtp /RTCsu /ZI
rtc$IMZ	ENDS
;	COMDAT _WM_IsVisible
_TEXT	SEGMENT
_pWin$9436 = -20					; size = 4
_r$ = -8						; size = 4
_hWin$ = 8						; size = 4
_WM_IsVisible PROC					; COMDAT
; Line 38
	push	ebp
	mov	ebp, esp
	sub	esp, 216				; 000000d8H
	push	ebx
	push	esi
	push	edi
	lea	edi, DWORD PTR [ebp-216]
	mov	ecx, 54					; 00000036H
	mov	eax, -858993460				; ccccccccH
	rep stosd
; Line 39
	mov	DWORD PTR _r$[ebp], 0
; Line 40
	cmp	DWORD PTR _hWin$[ebp], 0
	je	SHORT $LN2@WM_IsVisib
; Line 43
	mov	eax, DWORD PTR _hWin$[ebp]
	push	eax
	call	_GUI_ALLOC_h2p
	add	esp, 4
	mov	DWORD PTR _pWin$9436[ebp], eax
; Line 44
	mov	eax, DWORD PTR _pWin$9436[ebp]
	mov	ecx, DWORD PTR [eax+40]
	and	ecx, 2
	je	SHORT $LN2@WM_IsVisib
; Line 45
	mov	DWORD PTR _r$[ebp], 1
$LN2@WM_IsVisib:
; Line 49
	mov	eax, DWORD PTR _r$[ebp]
; Line 50
	pop	edi
	pop	esi
	pop	ebx
	add	esp, 216				; 000000d8H
	cmp	ebp, esp
	call	__RTC_CheckEsp
	mov	esp, ebp
	pop	ebp
	ret	0
_WM_IsVisible ENDP
_TEXT	ENDS
END