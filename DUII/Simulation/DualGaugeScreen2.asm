﻿; Listing generated by Microsoft (R) Optimizing Compiler Version 16.00.30319.01 

	TITLE	C:\DUII\DUII\DualGaugeScreen2.cpp
	.686P
	.XMM
	include listing.inc
	.model	flat

INCLUDELIB LIBCMT
INCLUDELIB OLDNAMES

PUBLIC	?pAnalog2Gauge@@3PAVGauge@@A			; pAnalog2Gauge
PUBLIC	?pAnalog3Gauge@@3PAVGauge@@A			; pAnalog3Gauge
_BSS	SEGMENT
?pAnalog2Gauge@@3PAVGauge@@A DD 01H DUP (?)		; pAnalog2Gauge
?pAnalog3Gauge@@3PAVGauge@@A DD 01H DUP (?)		; pAnalog3Gauge
_pAnalog2Red DD	01H DUP (?)
_pAnalog3Red DD	01H DUP (?)
_BSS	ENDS
PUBLIC	??_GGauge@@QAEPAXI@Z				; Gauge::`scalar deleting destructor'
PUBLIC	?_cbDualGauge2Callback@@YAXPAUWM_MESSAGE@@@Z	; _cbDualGauge2Callback
EXTRN	_WM_DefaultProc:PROC
EXTRN	_GUI_MEMDEV_Delete:PROC
EXTRN	??3@YAXPAX@Z:PROC				; operator delete
EXTRN	_DrawSignalStrength:PROC
EXTRN	_SlideOutVisible:PROC
EXTRN	_GUI_SelectLCD:PROC
EXTRN	_GUI_MEMDEV_CopyToLCD:PROC
EXTRN	_CheckWarningPopups:PROC
EXTRN	_bmthreewayarrow:BYTE
EXTRN	_GUI_MEMDEV_Write:PROC
EXTRN	?DrawToMemArea@Gauge@@QAEJXZ:PROC		; Gauge::DrawToMemArea
EXTRN	_GUI_DrawBitmap:PROC
EXTRN	_bmAnalog23:BYTE
EXTRN	_GUI_MEMDEV_Select:PROC
EXTRN	?SetValue@Gauge@@QAEXM@Z:PROC			; Gauge::SetValue
EXTRN	_GetValue:PROC
EXTRN	_inputEnabled:BYTE
EXTRN	_lockupSemaphore:BYTE
EXTRN	_CS_IsVisible:PROC
EXTRN	_WM_InvalidateWindow:PROC
EXTRN	_WM_RestartTimer:PROC
EXTRN	__fltused:DWORD
EXTRN	__RTC_CheckEsp:PROC
EXTRN	__RTC_Shutdown:PROC
EXTRN	__RTC_InitBase:PROC
_BSS	SEGMENT
_memDualGaugeScreen DD 01H DUP (?)
_firsttimethrough DB 01H DUP (?)
	ALIGN	4

_hDualGaugeScreen2 DD 01H DUP (?)
_hScreenTimer DD 01H DUP (?)
_BSS	ENDS
;	COMDAT rtc$TMZ
; File c:\duii\duii\dualgaugescreen2.cpp
rtc$TMZ	SEGMENT
__RTC_Shutdown.rtc$TMZ DD FLAT:__RTC_Shutdown
rtc$TMZ	ENDS
;	COMDAT rtc$IMZ
rtc$IMZ	SEGMENT
__RTC_InitBase.rtc$IMZ DD FLAT:__RTC_InitBase
; Function compile flags: /Odtp /RTCsu /ZI
rtc$IMZ	ENDS
;	COMDAT ?_cbDualGauge2Callback@@YAXPAUWM_MESSAGE@@@Z
_TEXT	SEGMENT
tv154 = -336						; size = 4
tv148 = -336						; size = 4
tv64 = -336						; size = 4
$T16291 = -328						; size = 8
$T16292 = -312						; size = 8
$T16293 = -296						; size = 4
$T16294 = -284						; size = 4
$T16297 = -272						; size = 4
$T16298 = -260						; size = 4
$T16301 = -248						; size = 4
$T16302 = -236						; size = 4
$T16303 = -224						; size = 4
$T16304 = -212						; size = 4
_mControl$16250 = -8					; size = 4
_pMsg$ = 8						; size = 4
?_cbDualGauge2Callback@@YAXPAUWM_MESSAGE@@@Z PROC	; _cbDualGauge2Callback, COMDAT
; Line 86
	push	ebp
	mov	ebp, esp
	sub	esp, 336				; 00000150H
	push	ebx
	push	esi
	push	edi
	lea	edi, DWORD PTR [ebp-336]
	mov	ecx, 84					; 00000054H
	mov	eax, -858993460				; ccccccccH
	rep stosd
; Line 87
	mov	eax, DWORD PTR _pMsg$[ebp]
	mov	ecx, DWORD PTR [eax]
	mov	DWORD PTR tv64[ebp], ecx
	cmp	DWORD PTR tv64[ebp], 11			; 0000000bH
	je	$LN8@cbDualGaug
	cmp	DWORD PTR tv64[ebp], 15			; 0000000fH
	je	SHORT $LN16@cbDualGaug
	cmp	DWORD PTR tv64[ebp], 275		; 00000113H
	je	SHORT $LN18@cbDualGaug
	jmp	$LN1@cbDualGaug
$LN18@cbDualGaug:
; Line 90
	mov	eax, DWORD PTR _pMsg$[ebp]
	mov	ecx, DWORD PTR [eax+12]
	cmp	ecx, DWORD PTR _hScreenTimer
	jne	SHORT $LN17@cbDualGaug
; Line 92
	push	25					; 00000019H
	mov	eax, DWORD PTR _hScreenTimer
	push	eax
	call	_WM_RestartTimer
	add	esp, 8
; Line 93
	mov	eax, DWORD PTR _hDualGaugeScreen2
	push	eax
	call	_WM_InvalidateWindow
	add	esp, 4
$LN17@cbDualGaug:
; Line 95
	jmp	$LN19@cbDualGaug
$LN16@cbDualGaug:
; Line 98
	push	3
	call	_CS_IsVisible
	add	esp, 4
	test	eax, eax
	jne	SHORT $LN14@cbDualGaug
	movzx	eax, BYTE PTR _firsttimethrough
	test	eax, eax
	je	$LN15@cbDualGaug
$LN14@cbDualGaug:
; Line 102
	movzx	eax, BYTE PTR _lockupSemaphore
	test	eax, eax
	je	SHORT $LN13@cbDualGaug
; Line 103
	jmp	$LN19@cbDualGaug
	jmp	SHORT $LN12@cbDualGaug
$LN13@cbDualGaug:
; Line 104
	mov	BYTE PTR _lockupSemaphore, 1
$LN12@cbDualGaug:
; Line 106
	movzx	eax, BYTE PTR _inputEnabled+2
	test	eax, eax
	je	SHORT $LN11@cbDualGaug
; Line 107
	push	52					; 00000034H
	call	_GetValue
	add	esp, 4
	mov	DWORD PTR $T16291[ebp], eax
	mov	DWORD PTR $T16291[ebp+4], edx
	push	ecx
	fld	DWORD PTR $T16291[ebp]
	fstp	DWORD PTR [esp]
	mov	ecx, DWORD PTR ?pAnalog2Gauge@@3PAVGauge@@A ; pAnalog2Gauge
	call	?SetValue@Gauge@@QAEXM@Z		; Gauge::SetValue
$LN11@cbDualGaug:
; Line 108
	movzx	eax, BYTE PTR _inputEnabled+3
	test	eax, eax
	je	SHORT $LN10@cbDualGaug
; Line 109
	push	53					; 00000035H
	call	_GetValue
	add	esp, 4
	mov	DWORD PTR $T16292[ebp], eax
	mov	DWORD PTR $T16292[ebp+4], edx
	push	ecx
	fld	DWORD PTR $T16292[ebp]
	fstp	DWORD PTR [esp]
	mov	ecx, DWORD PTR ?pAnalog3Gauge@@3PAVGauge@@A ; pAnalog3Gauge
	call	?SetValue@Gauge@@QAEXM@Z		; Gauge::SetValue
$LN10@cbDualGaug:
; Line 111
	mov	eax, DWORD PTR _memDualGaugeScreen
	push	eax
	call	_GUI_MEMDEV_Select
	add	esp, 4
; Line 113
	mov	BYTE PTR _firsttimethrough, 0
; Line 115
	push	0
	push	60					; 0000003cH
	push	OFFSET _bmAnalog23
	call	_GUI_DrawBitmap
	add	esp, 12					; 0000000cH
; Line 117
	mov	ecx, DWORD PTR ?pAnalog2Gauge@@3PAVGauge@@A ; pAnalog2Gauge
	call	?DrawToMemArea@Gauge@@QAEJXZ		; Gauge::DrawToMemArea
	mov	DWORD PTR _mControl$16250[ebp], eax
; Line 118
	mov	eax, DWORD PTR _memDualGaugeScreen
	push	eax
	call	_GUI_MEMDEV_Select
	add	esp, 4
; Line 119
	mov	eax, DWORD PTR _mControl$16250[ebp]
	push	eax
	call	_GUI_MEMDEV_Write
	add	esp, 4
; Line 121
	mov	ecx, DWORD PTR ?pAnalog3Gauge@@3PAVGauge@@A ; pAnalog3Gauge
	call	?DrawToMemArea@Gauge@@QAEJXZ		; Gauge::DrawToMemArea
	mov	DWORD PTR _mControl$16250[ebp], eax
; Line 122
	mov	eax, DWORD PTR _memDualGaugeScreen
	push	eax
	call	_GUI_MEMDEV_Select
	add	esp, 4
; Line 123
	mov	eax, DWORD PTR _mControl$16250[ebp]
	push	eax
	call	_GUI_MEMDEV_Write
	add	esp, 4
; Line 125
	push	229					; 000000e5H
	push	0
	push	OFFSET _bmthreewayarrow
	call	_GUI_DrawBitmap
	add	esp, 12					; 0000000cH
; Line 126
	call	_CheckWarningPopups
; Line 127
	mov	eax, DWORD PTR _memDualGaugeScreen
	push	eax
	call	_GUI_MEMDEV_CopyToLCD
	add	esp, 4
; Line 129
	call	_GUI_SelectLCD
$LN15@cbDualGaug:
; Line 131
	call	_SlideOutVisible
	movzx	eax, al
	test	eax, eax
	je	SHORT $LN9@cbDualGaug
; Line 132
	call	_DrawSignalStrength
$LN9@cbDualGaug:
; Line 133
	jmp	$LN19@cbDualGaug
$LN8@cbDualGaug:
; Line 136
	cmp	DWORD PTR ?pAnalog2Gauge@@3PAVGauge@@A, 0 ; pAnalog2Gauge
	je	SHORT $LN7@cbDualGaug
; Line 138
	mov	eax, DWORD PTR ?pAnalog2Gauge@@3PAVGauge@@A ; pAnalog2Gauge
	mov	DWORD PTR $T16294[ebp], eax
	mov	ecx, DWORD PTR $T16294[ebp]
	mov	DWORD PTR $T16293[ebp], ecx
	cmp	DWORD PTR $T16293[ebp], 0
	je	SHORT $LN23@cbDualGaug
	push	1
	mov	ecx, DWORD PTR $T16293[ebp]
	call	??_GGauge@@QAEPAXI@Z
	mov	DWORD PTR tv148[ebp], eax
	jmp	SHORT $LN24@cbDualGaug
$LN23@cbDualGaug:
	mov	DWORD PTR tv148[ebp], 0
$LN24@cbDualGaug:
; Line 139
	mov	DWORD PTR ?pAnalog2Gauge@@3PAVGauge@@A, 0 ; pAnalog2Gauge
$LN7@cbDualGaug:
; Line 141
	cmp	DWORD PTR ?pAnalog3Gauge@@3PAVGauge@@A, 0 ; pAnalog3Gauge
	je	SHORT $LN6@cbDualGaug
; Line 143
	mov	eax, DWORD PTR ?pAnalog3Gauge@@3PAVGauge@@A ; pAnalog3Gauge
	mov	DWORD PTR $T16298[ebp], eax
	mov	ecx, DWORD PTR $T16298[ebp]
	mov	DWORD PTR $T16297[ebp], ecx
	cmp	DWORD PTR $T16297[ebp], 0
	je	SHORT $LN25@cbDualGaug
	push	1
	mov	ecx, DWORD PTR $T16297[ebp]
	call	??_GGauge@@QAEPAXI@Z
	mov	DWORD PTR tv154[ebp], eax
	jmp	SHORT $LN26@cbDualGaug
$LN25@cbDualGaug:
	mov	DWORD PTR tv154[ebp], 0
$LN26@cbDualGaug:
; Line 144
	mov	DWORD PTR ?pAnalog3Gauge@@3PAVGauge@@A, 0 ; pAnalog3Gauge
$LN6@cbDualGaug:
; Line 146
	cmp	DWORD PTR _pAnalog2Red, 0
	je	SHORT $LN5@cbDualGaug
; Line 148
	mov	eax, DWORD PTR _pAnalog2Red
	cmp	DWORD PTR [eax+24], 0
	je	SHORT $LN4@cbDualGaug
; Line 149
	mov	eax, DWORD PTR _pAnalog2Red
	mov	ecx, DWORD PTR [eax+24]
	mov	DWORD PTR $T16301[ebp], ecx
	mov	edx, DWORD PTR $T16301[ebp]
	push	edx
	call	??3@YAXPAX@Z				; operator delete
	add	esp, 4
$LN4@cbDualGaug:
; Line 150
	mov	eax, DWORD PTR _pAnalog2Red
	mov	DWORD PTR $T16302[ebp], eax
	mov	ecx, DWORD PTR $T16302[ebp]
	push	ecx
	call	??3@YAXPAX@Z				; operator delete
	add	esp, 4
; Line 151
	mov	DWORD PTR _pAnalog2Red, 0
$LN5@cbDualGaug:
; Line 153
	cmp	DWORD PTR _pAnalog3Red, 0
	je	SHORT $LN3@cbDualGaug
; Line 155
	mov	eax, DWORD PTR _pAnalog3Red
	cmp	DWORD PTR [eax+24], 0
	je	SHORT $LN2@cbDualGaug
; Line 156
	mov	eax, DWORD PTR _pAnalog3Red
	mov	ecx, DWORD PTR [eax+24]
	mov	DWORD PTR $T16303[ebp], ecx
	mov	edx, DWORD PTR $T16303[ebp]
	push	edx
	call	??3@YAXPAX@Z				; operator delete
	add	esp, 4
$LN2@cbDualGaug:
; Line 157
	mov	eax, DWORD PTR _pAnalog3Red
	mov	DWORD PTR $T16304[ebp], eax
	mov	ecx, DWORD PTR $T16304[ebp]
	push	ecx
	call	??3@YAXPAX@Z				; operator delete
	add	esp, 4
; Line 158
	mov	DWORD PTR _pAnalog3Red, 0
$LN3@cbDualGaug:
; Line 160
	mov	eax, DWORD PTR _memDualGaugeScreen
	push	eax
	call	_GUI_MEMDEV_Delete
	add	esp, 4
; Line 161
	jmp	SHORT $LN19@cbDualGaug
$LN1@cbDualGaug:
; Line 164
	mov	eax, DWORD PTR _pMsg$[ebp]
	push	eax
	call	_WM_DefaultProc
	add	esp, 4
$LN19@cbDualGaug:
; Line 166
	pop	edi
	pop	esi
	pop	ebx
	add	esp, 336				; 00000150H
	cmp	ebp, esp
	call	__RTC_CheckEsp
	mov	esp, ebp
	pop	ebp
	ret	0
?_cbDualGauge2Callback@@YAXPAUWM_MESSAGE@@@Z ENDP	; _cbDualGauge2Callback
_TEXT	ENDS
EXTRN	??1Gauge@@QAE@XZ:PROC				; Gauge::~Gauge
; Function compile flags: /Odtp /RTCsu /ZI
;	COMDAT ??_GGauge@@QAEPAXI@Z
_TEXT	SEGMENT
_this$ = -8						; size = 4
___flags$ = 8						; size = 4
??_GGauge@@QAEPAXI@Z PROC				; Gauge::`scalar deleting destructor', COMDAT
; _this$ = ecx
	push	ebp
	mov	ebp, esp
	sub	esp, 204				; 000000ccH
	push	ebx
	push	esi
	push	edi
	push	ecx
	lea	edi, DWORD PTR [ebp-204]
	mov	ecx, 51					; 00000033H
	mov	eax, -858993460				; ccccccccH
	rep stosd
	pop	ecx
	mov	DWORD PTR _this$[ebp], ecx
	mov	ecx, DWORD PTR _this$[ebp]
	call	??1Gauge@@QAE@XZ			; Gauge::~Gauge
	mov	eax, DWORD PTR ___flags$[ebp]
	and	eax, 1
	je	SHORT $LN1@scalar
	mov	eax, DWORD PTR _this$[ebp]
	push	eax
	call	??3@YAXPAX@Z				; operator delete
	add	esp, 4
$LN1@scalar:
	mov	eax, DWORD PTR _this$[ebp]
	pop	edi
	pop	esi
	pop	ebx
	add	esp, 204				; 000000ccH
	cmp	ebp, esp
	call	__RTC_CheckEsp
	mov	esp, ebp
	pop	ebp
	ret	4
??_GGauge@@QAEPAXI@Z ENDP				; Gauge::`scalar deleting destructor'
_TEXT	ENDS
PUBLIC	_Display_DualGaugeScreen2
EXTRN	_WM_CreateTimer:PROC
EXTRN	_GUI_MEMDEV_Create:PROC
EXTRN	_CreateAnalogInputGauge:PROC
EXTRN	_SystemError:PROC
EXTRN	_WM_CreateWindowAsChild:PROC
; Function compile flags: /Odtp /RTCsu /ZI
;	COMDAT _Display_DualGaugeScreen2
_TEXT	SEGMENT
_hParent$ = 8						; size = 4
_Display_DualGaugeScreen2 PROC				; COMDAT
; Line 174
	push	ebp
	mov	ebp, esp
	sub	esp, 192				; 000000c0H
	push	ebx
	push	esi
	push	edi
	lea	edi, DWORD PTR [ebp-192]
	mov	ecx, 48					; 00000030H
	mov	eax, -858993460				; ccccccccH
	rep stosd
; Line 175
	mov	BYTE PTR _firsttimethrough, 1
; Line 177
	push	0
	push	OFFSET ?_cbDualGauge2Callback@@YAXPAUWM_MESSAGE@@@Z ; _cbDualGauge2Callback
	push	2
	mov	eax, DWORD PTR _hParent$[ebp]
	push	eax
	push	272					; 00000110H
	push	480					; 000001e0H
	push	0
	push	0
	call	_WM_CreateWindowAsChild
	add	esp, 32					; 00000020H
	mov	DWORD PTR _hDualGaugeScreen2, eax
	cmp	DWORD PTR _hDualGaugeScreen2, 0
	jg	SHORT $LN1@Display_Du
; Line 178
	call	_SystemError
$LN1@Display_Du:
; Line 180
	push	5
	mov	eax, DWORD PTR _hDualGaugeScreen2
	push	eax
	push	OFFSET _pAnalog2Red
	push	2
	call	_CreateAnalogInputGauge
	add	esp, 16					; 00000010H
	mov	DWORD PTR ?pAnalog2Gauge@@3PAVGauge@@A, eax ; pAnalog2Gauge
; Line 181
	push	245					; 000000f5H
	mov	eax, DWORD PTR _hDualGaugeScreen2
	push	eax
	push	OFFSET _pAnalog3Red
	push	3
	call	_CreateAnalogInputGauge
	add	esp, 16					; 00000010H
	mov	DWORD PTR ?pAnalog3Gauge@@3PAVGauge@@A, eax ; pAnalog3Gauge
; Line 183
	mov	eax, DWORD PTR _hDualGaugeScreen2
	push	eax
	call	_WM_InvalidateWindow
	add	esp, 4
; Line 186
	push	272					; 00000110H
	push	480					; 000001e0H
	push	0
	push	0
	call	_GUI_MEMDEV_Create
	add	esp, 16					; 00000010H
	mov	DWORD PTR _memDualGaugeScreen, eax
; Line 188
	push	0
	push	25					; 00000019H
	push	0
	mov	eax, DWORD PTR _hDualGaugeScreen2
	push	eax
	call	_WM_CreateTimer
	add	esp, 16					; 00000010H
	mov	DWORD PTR _hScreenTimer, eax
; Line 190
	mov	eax, DWORD PTR _hDualGaugeScreen2
; Line 191
	pop	edi
	pop	esi
	pop	ebx
	add	esp, 192				; 000000c0H
	cmp	ebp, esp
	call	__RTC_CheckEsp
	mov	esp, ebp
	pop	ebp
	ret	0
_Display_DualGaugeScreen2 ENDP
_TEXT	ENDS
END
