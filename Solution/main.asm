;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 4.0.7 #12016 (MINGW64)
;--------------------------------------------------------
	.module main
	.optsdcc -mgbz80
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _main
	.globl _roomCoreLoop
	.globl _seedInitialization
	.globl _roomInitialization
	.globl _generateRoom
	.globl _mainMenuCoreLoop
	.globl _mainMenuInitialization
	.globl _randw
	.globl _initrand
	.globl _printf
	.globl _set_bkg_data
	.globl _wait_vbl_done
	.globl _joypad
	.globl _delay
	.globl _seed
	.globl _sOSTTIP
	.globl _sSTTIP
	.globl _tileIndexPoint
	.globl _sOSTTIC
	.globl _sSTTIC
	.globl _roomWidthMax
	.globl _roomWidthMin
	.globl _roomWidthAndHeightRandomized
	.globl _roomHeightMax
	.globl _roomHeightMin
	.globl _indexCounter
	.globl _hasSeedBeenInitialized
	.globl _hasRoomBeenInitialized
	.globl _roomSprites
	.globl _hasPressedStart
	.globl _hasMainMenuBeenInitialized
;--------------------------------------------------------
; special function registers
;--------------------------------------------------------
;--------------------------------------------------------
; ram data
;--------------------------------------------------------
	.area _DATA
G$hasMainMenuBeenInitialized$0_0$0==.
_hasMainMenuBeenInitialized::
	.ds 1
G$hasPressedStart$0_0$0==.
_hasPressedStart::
	.ds 1
G$roomSprites$0_0$0==.
_roomSprites::
	.ds 32
G$hasRoomBeenInitialized$0_0$0==.
_hasRoomBeenInitialized::
	.ds 1
G$hasSeedBeenInitialized$0_0$0==.
_hasSeedBeenInitialized::
	.ds 1
G$indexCounter$0_0$0==.
_indexCounter::
	.ds 1
G$roomHeightMin$0_0$0==.
_roomHeightMin::
	.ds 1
G$roomHeightMax$0_0$0==.
_roomHeightMax::
	.ds 1
G$roomWidthAndHeightRandomized$0_0$0==.
_roomWidthAndHeightRandomized::
	.ds 1
G$roomWidthMin$0_0$0==.
_roomWidthMin::
	.ds 1
G$roomWidthMax$0_0$0==.
_roomWidthMax::
	.ds 1
G$sSTTIC$0_0$0==.
_sSTTIC::
	.ds 1
G$sOSTTIC$0_0$0==.
_sOSTTIC::
	.ds 1
G$tileIndexPoint$0_0$0==.
_tileIndexPoint::
	.ds 1
G$sSTTIP$0_0$0==.
_sSTTIP::
	.ds 6
G$sOSTTIP$0_0$0==.
_sOSTTIP::
	.ds 6
G$seed$0_0$0==.
_seed::
	.ds 2
;--------------------------------------------------------
; absolute external ram data
;--------------------------------------------------------
	.area _DABS (ABS)
;--------------------------------------------------------
; global & static initialisations
;--------------------------------------------------------
	.area _HOME
	.area _GSINIT
	.area _GSFINAL
	.area _GSINIT
	C$mainMenuConfiguration.c$6$1_0$122	= .
	.globl	C$mainMenuConfiguration.c$6$1_0$122
;mainMenuConfiguration.c:6: BOOLEAN hasMainMenuBeenInitialized = FALSE;
	ld	hl, #_hasMainMenuBeenInitialized
	ld	(hl), #0x00
	C$mainMenuConfiguration.c$7$1_0$122	= .
	.globl	C$mainMenuConfiguration.c$7$1_0$122
;mainMenuConfiguration.c:7: BOOLEAN hasPressedStart = FALSE;
	ld	hl, #_hasPressedStart
	ld	(hl), #0x00
	C$gBTDRoomSprites.c$26$1_0$122	= .
	.globl	C$gBTDRoomSprites.c$26$1_0$122
;gBTDRoomSprites.c:26: unsigned char roomSprites[] =
	ld	hl, #_roomSprites
	ld	(hl), #0x00
	ld	hl, #(_roomSprites + 0x0001)
	ld	(hl), #0x00
	ld	hl, #(_roomSprites + 0x0002)
	ld	(hl), #0x00
	ld	hl, #(_roomSprites + 0x0003)
	ld	(hl), #0x00
	ld	hl, #(_roomSprites + 0x0004)
	ld	(hl), #0x00
	ld	hl, #(_roomSprites + 0x0005)
	ld	(hl), #0x00
	ld	hl, #(_roomSprites + 0x0006)
	ld	(hl), #0x00
	ld	hl, #(_roomSprites + 0x0007)
	ld	(hl), #0x00
	ld	hl, #(_roomSprites + 0x0008)
	ld	(hl), #0x00
	ld	hl, #(_roomSprites + 0x0009)
	ld	(hl), #0x00
	ld	hl, #(_roomSprites + 0x000a)
	ld	(hl), #0x00
	ld	hl, #(_roomSprites + 0x000b)
	ld	(hl), #0x00
	ld	hl, #(_roomSprites + 0x000c)
	ld	(hl), #0x00
	ld	hl, #(_roomSprites + 0x000d)
	ld	(hl), #0x00
	ld	hl, #(_roomSprites + 0x000e)
	ld	(hl), #0x00
	ld	hl, #(_roomSprites + 0x000f)
	ld	(hl), #0x00
	ld	hl, #(_roomSprites + 0x0010)
	ld	(hl), #0xff
	ld	hl, #(_roomSprites + 0x0011)
	ld	(hl), #0xff
	ld	hl, #(_roomSprites + 0x0012)
	ld	(hl), #0x81
	ld	hl, #(_roomSprites + 0x0013)
	ld	(hl), #0xff
	ld	hl, #(_roomSprites + 0x0014)
	ld	(hl), #0xbd
	ld	hl, #(_roomSprites + 0x0015)
	ld	(hl), #0xc3
	ld	hl, #(_roomSprites + 0x0016)
	ld	(hl), #0xa5
	ld	hl, #(_roomSprites + 0x0017)
	ld	(hl), #0xc3
	ld	hl, #(_roomSprites + 0x0018)
	ld	(hl), #0xa5
	ld	hl, #(_roomSprites + 0x0019)
	ld	(hl), #0xc3
	ld	hl, #(_roomSprites + 0x001a)
	ld	(hl), #0xbd
	ld	hl, #(_roomSprites + 0x001b)
	ld	(hl), #0xc3
	ld	hl, #(_roomSprites + 0x001c)
	ld	(hl), #0x81
	ld	hl, #(_roomSprites + 0x001d)
	ld	(hl), #0xff
	ld	hl, #(_roomSprites + 0x001e)
	ld	(hl), #0xff
	ld	hl, #(_roomSprites + 0x001f)
	ld	(hl), #0xff
	C$roomConfiguration.c$7$1_0$122	= .
	.globl	C$roomConfiguration.c$7$1_0$122
;roomConfiguration.c:7: BOOLEAN hasRoomBeenInitialized = FALSE;
	ld	hl, #_hasRoomBeenInitialized
	ld	(hl), #0x00
	C$roomConfiguration.c$8$1_0$122	= .
	.globl	C$roomConfiguration.c$8$1_0$122
;roomConfiguration.c:8: BOOLEAN hasSeedBeenInitialized = FALSE;
	ld	hl, #_hasSeedBeenInitialized
	ld	(hl), #0x00
	C$roomConfiguration.c$10$1_0$122	= .
	.globl	C$roomConfiguration.c$10$1_0$122
;roomConfiguration.c:10: UINT8 indexCounter = 0;
	ld	hl, #_indexCounter
	ld	(hl), #0x00
	C$roomConfiguration.c$11$1_0$122	= .
	.globl	C$roomConfiguration.c$11$1_0$122
;roomConfiguration.c:11: UINT8 roomHeightMin = 0, roomHeightMax = 0;
	ld	hl, #_roomHeightMin
	ld	(hl), #0x00
	C$roomConfiguration.c$11$1_0$122	= .
	.globl	C$roomConfiguration.c$11$1_0$122
;roomConfiguration.c:11: UINT8 roomWidthAndHeightRandomized = 0;
	ld	hl, #_roomHeightMax
	ld	(hl), #0x00
	C$roomConfiguration.c$12$1_0$122	= .
	.globl	C$roomConfiguration.c$12$1_0$122
;roomConfiguration.c:12: UINT8 roomWidthMin = 0, roomWidthMax = 0;
	ld	hl, #_roomWidthAndHeightRandomized
	ld	(hl), #0x00
	C$roomConfiguration.c$13$1_0$122	= .
	.globl	C$roomConfiguration.c$13$1_0$122
;roomConfiguration.c:13: // sectorAndSectorTwoTileIndexCounter = s.S.T.T.I.C.
	ld	hl, #_roomWidthMin
	ld	(hl), #0x00
	C$roomConfiguration.c$13$1_0$122	= .
	.globl	C$roomConfiguration.c$13$1_0$122
;roomConfiguration.c:13: UINT8 roomWidthMin = 0, roomWidthMax = 0;
	ld	hl, #_roomWidthMax
	ld	(hl), #0x00
	C$roomConfiguration.c$16$1_0$122	= .
	.globl	C$roomConfiguration.c$16$1_0$122
;roomConfiguration.c:16: UINT8 sSTTIC = 0, sOSTTIC = 0;
	ld	hl, #_sSTTIC
	ld	(hl), #0x00
	C$roomConfiguration.c$16$1_0$122	= .
	.globl	C$roomConfiguration.c$16$1_0$122
;roomConfiguration.c:16: UINT8 tileIndexPoint = 0;
	ld	hl, #_sOSTTIC
	ld	(hl), #0x00
	C$roomConfiguration.c$17$1_0$122	= .
	.globl	C$roomConfiguration.c$17$1_0$122
;roomConfiguration.c:17: 
	ld	hl, #_tileIndexPoint
	ld	(hl), #0x00
;--------------------------------------------------------
; Home
;--------------------------------------------------------
	.area _HOME
	.area _HOME
;--------------------------------------------------------
; code
;--------------------------------------------------------
	.area _CODE
	G$mainMenuInitialization$0$0	= .
	.globl	G$mainMenuInitialization$0$0
	C$mainMenuConfiguration.c$9$0_0$98	= .
	.globl	C$mainMenuConfiguration.c$9$0_0$98
;mainMenuConfiguration.c:9: void mainMenuInitialization()
;	---------------------------------
; Function mainMenuInitialization
; ---------------------------------
_mainMenuInitialization::
	C$mainMenuConfiguration.c$11$1_0$98	= .
	.globl	C$mainMenuConfiguration.c$11$1_0$98
;mainMenuConfiguration.c:11: if(!hasMainMenuBeenInitialized)
	ld	hl, #_hasMainMenuBeenInitialized
	ld	a, (hl)
	or	a, a
	ret	NZ
	C$mainMenuConfiguration.c$13$2_0$99	= .
	.globl	C$mainMenuConfiguration.c$13$2_0$99
;mainMenuConfiguration.c:13: hasMainMenuBeenInitialized = TRUE;
	ld	(hl), #0x01
	C$mainMenuConfiguration.c$18$1_0$98	= .
	.globl	C$mainMenuConfiguration.c$18$1_0$98
;mainMenuConfiguration.c:18: }
	C$mainMenuConfiguration.c$18$1_0$98	= .
	.globl	C$mainMenuConfiguration.c$18$1_0$98
	XG$mainMenuInitialization$0$0	= .
	.globl	XG$mainMenuInitialization$0$0
	ret
	G$mainMenuCoreLoop$0$0	= .
	.globl	G$mainMenuCoreLoop$0$0
	C$mainMenuConfiguration.c$22$1_0$100	= .
	.globl	C$mainMenuConfiguration.c$22$1_0$100
;mainMenuConfiguration.c:22: void mainMenuCoreLoop()
;	---------------------------------
; Function mainMenuCoreLoop
; ---------------------------------
_mainMenuCoreLoop::
	C$mainMenuConfiguration.c$24$1_0$100	= .
	.globl	C$mainMenuConfiguration.c$24$1_0$100
;mainMenuConfiguration.c:24: mainMenuInitialization();
	call	_mainMenuInitialization
	C$mainMenuConfiguration.c$26$1_0$100	= .
	.globl	C$mainMenuConfiguration.c$26$1_0$100
;mainMenuConfiguration.c:26: wait_vbl_done();
	C$mainMenuConfiguration.c$27$1_0$100	= .
	.globl	C$mainMenuConfiguration.c$27$1_0$100
;mainMenuConfiguration.c:27: }
	C$mainMenuConfiguration.c$27$1_0$100	= .
	.globl	C$mainMenuConfiguration.c$27$1_0$100
	XG$mainMenuCoreLoop$0$0	= .
	.globl	XG$mainMenuCoreLoop$0$0
	jp  _wait_vbl_done
	G$generateRoom$0$0	= .
	.globl	G$generateRoom$0$0
	C$roomConfiguration.c$25$1_0$101	= .
	.globl	C$roomConfiguration.c$25$1_0$101
;roomConfiguration.c:25: void generateRoom()
;	---------------------------------
; Function generateRoom
; ---------------------------------
_generateRoom::
	dec	sp
	C$roomConfiguration.c$27$1_0$101	= .
	.globl	C$roomConfiguration.c$27$1_0$101
;roomConfiguration.c:27: if(hasSeedBeenInitialized)
	ld	a, (#_hasSeedBeenInitialized)
	or	a, a
	jp	Z, 00126$
	C$roomConfiguration.c$29$2_0$102	= .
	.globl	C$roomConfiguration.c$29$2_0$102
;roomConfiguration.c:29: if(roomWidthAndHeightRandomized != 0)
	ld	a, (#_roomWidthAndHeightRandomized)
	or	a, a
	jp	Z, 00117$
	C$roomConfiguration.c$31$4_0$104	= .
	.globl	C$roomConfiguration.c$31$4_0$104
;roomConfiguration.c:31: for(indexCounter = 0; indexCounter < 4; indexCounter++)
	ld	hl, #_indexCounter
	ld	(hl), #0x00
00124$:
	C$roomConfiguration.c$33$5_0$105	= .
	.globl	C$roomConfiguration.c$33$5_0$105
;roomConfiguration.c:33: UINT8 sectorPoints = randw() % 4;
	call	_randw
	ld	a, e
	and	a, #0x03
	ld	c, a
	C$roomConfiguration.c$35$5_0$105	= .
	.globl	C$roomConfiguration.c$35$5_0$105
;roomConfiguration.c:35: printf("sectorPoints = %d\n", (UINT16)sectorPoints); delay(999); 
	ld	e, c
	ld	d, #0x00
	push	bc
	push	de
	ld	hl, #___str_0
	push	hl
	call	_printf
	add	sp, #4
	ld	hl, #0x03e7
	push	hl
	call	_delay
	add	sp, #2
	pop	bc
	C$roomConfiguration.c$37$5_0$105	= .
	.globl	C$roomConfiguration.c$37$5_0$105
;roomConfiguration.c:37: if(sectorPoints != 0)
	ld	a, c
	or	a, a
	jp	Z, 00125$
	C$roomConfiguration.c$39$1_0$101	= .
	.globl	C$roomConfiguration.c$39$1_0$101
;roomConfiguration.c:39: for(sectorPoints; sectorPoints > 0; sectorPoints--)
	ldhl	sp,	#0
	ld	(hl), c
00122$:
	ldhl	sp,	#0
	ld	a, (hl)
	or	a, a
	jp	Z, 00125$
	C$roomConfiguration.c$41$8_0$108	= .
	.globl	C$roomConfiguration.c$41$8_0$108
;roomConfiguration.c:41: printf("sP = %d\n", (UINT16)sectorPoints); delay(999); 
	ld	c, (hl)
	ld	b, #0x00
	push	bc
	ld	hl, #___str_1
	push	hl
	call	_printf
	add	sp, #4
	ld	hl, #0x03e7
	push	hl
	call	_delay
	add	sp, #2
	C$roomConfiguration.c$43$8_0$108	= .
	.globl	C$roomConfiguration.c$43$8_0$108
;roomConfiguration.c:43: tileIndexPoint = randw() % (roomWidthAndHeightRandomized * roomWidthAndHeightRandomized) - 1; 
	call	_randw
	push	de
	ld	hl, #_roomWidthAndHeightRandomized
	ld	a, (hl)
	push	af
	inc	sp
	ld	a, (hl)
	push	af
	inc	sp
	call	__muluchar
	add	sp, #2
	pop	bc
	push	de
	push	bc
	call	__moduint
	add	sp, #4
	ld	a, e
	add	a, #0xff
	ld	hl, #_tileIndexPoint
	ld	(hl), a
	C$roomConfiguration.c$45$8_0$108	= .
	.globl	C$roomConfiguration.c$45$8_0$108
;roomConfiguration.c:45: printf("tileInPoi = %d\n", (UINT16)tileIndexPoint); delay(999); 
	ld	c, (hl)
	ld	b, #0x00
	push	bc
	ld	hl, #___str_2
	push	hl
	call	_printf
	add	sp, #4
	ld	hl, #0x03e7
	push	hl
	call	_delay
	add	sp, #2
	C$roomConfiguration.c$47$8_0$108	= .
	.globl	C$roomConfiguration.c$47$8_0$108
;roomConfiguration.c:47: switch(indexCounter)
	ld	a, (#_indexCounter)
	or	a, a
	jr	Z, 00101$
	C$roomConfiguration.c$50$1_0$101	= .
	.globl	C$roomConfiguration.c$50$1_0$101
;roomConfiguration.c:50: case 1: tileIndexPoint += 473; printf("newTIP = %d\n", (UINT16)tileIndexPoint); delay(999); break;
	ld	hl, #_tileIndexPoint
	ld	b, (hl)
	C$roomConfiguration.c$47$8_0$108	= .
	.globl	C$roomConfiguration.c$47$8_0$108
;roomConfiguration.c:47: switch(indexCounter)
	ld	a, (#_indexCounter)
	dec	a
	jr	Z, 00102$
	C$roomConfiguration.c$51$1_0$101	= .
	.globl	C$roomConfiguration.c$51$1_0$101
;roomConfiguration.c:51: case 2: tileIndexPoint += roomWidthAndHeightRandomized * 3; printf("newTIP = %d\n", (UINT16)tileIndexPoint); delay(999); break;
	ld	hl, #_roomWidthAndHeightRandomized
	ld	c, (hl)
	C$roomConfiguration.c$47$8_0$108	= .
	.globl	C$roomConfiguration.c$47$8_0$108
;roomConfiguration.c:47: switch(indexCounter)
	ld	a,(#_indexCounter)
	cp	a,#0x02
	jr	Z, 00103$
	sub	a, #0x03
	jr	Z, 00104$
	jp	00105$
	C$roomConfiguration.c$49$9_0$109	= .
	.globl	C$roomConfiguration.c$49$9_0$109
;roomConfiguration.c:49: case 0: tileIndexPoint += roomWidthAndHeightRandomized; printf("newTIP = %d\n", (UINT16)tileIndexPoint); delay(999); break;
00101$:
	ld	a, (#_tileIndexPoint)
	ld	hl, #_roomWidthAndHeightRandomized
	add	a, (hl)
	ld	hl, #_tileIndexPoint
	ld	(hl), a
	ld	c, (hl)
	ld	b, #0x00
	push	bc
	ld	hl, #___str_3
	push	hl
	call	_printf
	add	sp, #4
	ld	hl, #0x03e7
	push	hl
	call	_delay
	add	sp, #2
	jr	00105$
	C$roomConfiguration.c$50$9_0$109	= .
	.globl	C$roomConfiguration.c$50$9_0$109
;roomConfiguration.c:50: case 1: tileIndexPoint += 473; printf("newTIP = %d\n", (UINT16)tileIndexPoint); delay(999); break;
00102$:
	ld	a, b
	add	a, #0xd9
	ld	hl, #_tileIndexPoint
	ld	(hl), a
	ld	c, (hl)
	ld	b, #0x00
	push	bc
	ld	hl, #___str_3
	push	hl
	call	_printf
	add	sp, #4
	ld	hl, #0x03e7
	push	hl
	call	_delay
	add	sp, #2
	jr	00105$
	C$roomConfiguration.c$51$9_0$109	= .
	.globl	C$roomConfiguration.c$51$9_0$109
;roomConfiguration.c:51: case 2: tileIndexPoint += roomWidthAndHeightRandomized * 3; printf("newTIP = %d\n", (UINT16)tileIndexPoint); delay(999); break;
00103$:
	ld	a, c
	add	a, a
	add	a, c
	add	a, b
	ld	hl, #_tileIndexPoint
	ld	(hl), a
	ld	c, (hl)
	ld	b, #0x00
	push	bc
	ld	hl, #___str_3
	push	hl
	call	_printf
	add	sp, #4
	ld	hl, #0x03e7
	push	hl
	call	_delay
	add	sp, #2
	jr	00105$
	C$roomConfiguration.c$52$9_0$109	= .
	.globl	C$roomConfiguration.c$52$9_0$109
;roomConfiguration.c:52: case 3: tileIndexPoint += roomWidthAndHeightRandomized * 7; printf("newTIP = %d\n", (UINT16)tileIndexPoint); delay(999); break;
00104$:
	ld	a, c
	add	a, a
	add	a, c
	add	a, a
	add	a, c
	add	a, b
	ld	hl, #_tileIndexPoint
	ld	(hl), a
	ld	c, (hl)
	ld	b, #0x00
	push	bc
	ld	hl, #___str_3
	push	hl
	call	_printf
	add	sp, #4
	ld	hl, #0x03e7
	push	hl
	call	_delay
	add	sp, #2
	C$roomConfiguration.c$53$8_0$108	= .
	.globl	C$roomConfiguration.c$53$8_0$108
;roomConfiguration.c:53: }
00105$:
	C$roomConfiguration.c$55$8_0$108	= .
	.globl	C$roomConfiguration.c$55$8_0$108
;roomConfiguration.c:55: if(indexCounter == 0 || indexCounter == 2)
	ld	hl, #_indexCounter
	ld	a, (hl)
	or	a, a
	jr	Z, 00106$
	ld	a, (hl)
	sub	a, #0x02
	jr	NZ, 00107$
00106$:
	C$roomConfiguration.c$57$9_0$110	= .
	.globl	C$roomConfiguration.c$57$9_0$110
;roomConfiguration.c:57: sSTTIP[sSTTIC] = tileIndexPoint;
	ld	a, #<(_sSTTIP)
	ld	hl, #_sSTTIC
	add	a, (hl)
	ld	c, a
	ld	a, #>(_sSTTIP)
	adc	a, #0x00
	ld	b, a
	ld	a, (#_tileIndexPoint)
	ld	(bc), a
	C$roomConfiguration.c$59$9_0$110	= .
	.globl	C$roomConfiguration.c$59$9_0$110
;roomConfiguration.c:59: sSTTIC += 1;
	ld	hl, #_sSTTIC
	inc	(hl)
	jr	00123$
00107$:
	C$roomConfiguration.c$63$9_0$111	= .
	.globl	C$roomConfiguration.c$63$9_0$111
;roomConfiguration.c:63: sOSTTIP[sOSTTIC] = tileIndexPoint;
	ld	a, #<(_sOSTTIP)
	ld	hl, #_sOSTTIC
	add	a, (hl)
	ld	c, a
	ld	a, #>(_sOSTTIP)
	adc	a, #0x00
	ld	b, a
	ld	a, (#_tileIndexPoint)
	ld	(bc), a
	C$roomConfiguration.c$65$9_0$111	= .
	.globl	C$roomConfiguration.c$65$9_0$111
;roomConfiguration.c:65: sOSTTIC += 1;
	ld	hl, #_sOSTTIC
	inc	(hl)
00123$:
	C$roomConfiguration.c$39$7_0$107	= .
	.globl	C$roomConfiguration.c$39$7_0$107
;roomConfiguration.c:39: for(sectorPoints; sectorPoints > 0; sectorPoints--)
	ldhl	sp,	#0
	dec	(hl)
	jp	00122$
00125$:
	C$roomConfiguration.c$31$4_0$104	= .
	.globl	C$roomConfiguration.c$31$4_0$104
;roomConfiguration.c:31: for(indexCounter = 0; indexCounter < 4; indexCounter++)
	ld	hl, #_indexCounter
	inc	(hl)
	ld	a, (hl)
	sub	a, #0x04
	jp	C, 00124$
	jr	00126$
00117$:
	C$roomConfiguration.c$74$3_0$112	= .
	.globl	C$roomConfiguration.c$74$3_0$112
;roomConfiguration.c:74: roomWidthAndHeightRandomized = randw() % 18;
	call	_randw
	ld	hl, #0x0012
	push	hl
	push	de
	call	__moduint
	add	sp, #4
	ld	hl, #_roomWidthAndHeightRandomized
	ld	(hl), e
	C$roomConfiguration.c$76$3_0$112	= .
	.globl	C$roomConfiguration.c$76$3_0$112
;roomConfiguration.c:76: printf("%d\n", (UINT16)roomWidthAndHeightRandomized); delay(25);
	ld	c, (hl)
	ld	b, #0x00
	push	bc
	ld	hl, #___str_4
	push	hl
	call	_printf
	add	sp, #4
	ld	hl, #0x0019
	push	hl
	call	_delay
	add	sp, #2
	C$roomConfiguration.c$78$3_0$112	= .
	.globl	C$roomConfiguration.c$78$3_0$112
;roomConfiguration.c:78: if(roomWidthAndHeightRandomized <= 9) { roomWidthAndHeightRandomized = 0; }
	ld	a, #0x09
	ld	hl, #_roomWidthAndHeightRandomized
	sub	a, (hl)
	jr	C, 00126$
	ld	(hl), #0x00
00126$:
	C$roomConfiguration.c$81$1_0$101	= .
	.globl	C$roomConfiguration.c$81$1_0$101
;roomConfiguration.c:81: }
	inc	sp
	C$roomConfiguration.c$81$1_0$101	= .
	.globl	C$roomConfiguration.c$81$1_0$101
	XG$generateRoom$0$0	= .
	.globl	XG$generateRoom$0$0
	ret
Fmain$__str_0$0_0$0 == .
___str_0:
	.ascii "sectorPoints = %d"
	.db 0x0a
	.db 0x00
Fmain$__str_1$0_0$0 == .
___str_1:
	.ascii "sP = %d"
	.db 0x0a
	.db 0x00
Fmain$__str_2$0_0$0 == .
___str_2:
	.ascii "tileInPoi = %d"
	.db 0x0a
	.db 0x00
Fmain$__str_3$0_0$0 == .
___str_3:
	.ascii "newTIP = %d"
	.db 0x0a
	.db 0x00
Fmain$__str_4$0_0$0 == .
___str_4:
	.ascii "%d"
	.db 0x0a
	.db 0x00
	G$roomInitialization$0$0	= .
	.globl	G$roomInitialization$0$0
	C$roomConfiguration.c$83$1_0$114	= .
	.globl	C$roomConfiguration.c$83$1_0$114
;roomConfiguration.c:83: void roomInitialization()
;	---------------------------------
; Function roomInitialization
; ---------------------------------
_roomInitialization::
	C$roomConfiguration.c$85$1_0$114	= .
	.globl	C$roomConfiguration.c$85$1_0$114
;roomConfiguration.c:85: if(!hasRoomBeenInitialized)
	ld	hl, #_hasRoomBeenInitialized
	ld	a, (hl)
	or	a, a
	ret	NZ
	C$roomConfiguration.c$87$2_0$115	= .
	.globl	C$roomConfiguration.c$87$2_0$115
;roomConfiguration.c:87: hasRoomBeenInitialized = TRUE;
	ld	(hl), #0x01
	C$roomConfiguration.c$89$2_0$115	= .
	.globl	C$roomConfiguration.c$89$2_0$115
;roomConfiguration.c:89: seed = 0;
	ld	hl, #_seed
	ld	a, #0x00
	ld	(hl+), a
	ld	(hl), #0x00
	C$roomConfiguration.c$91$2_0$115	= .
	.globl	C$roomConfiguration.c$91$2_0$115
;roomConfiguration.c:91: set_bkg_data(0, 2, roomSprites);
	ld	hl, #_roomSprites
	push	hl
	ld	a, #0x02
	push	af
	inc	sp
	xor	a, a
	push	af
	inc	sp
	call	_set_bkg_data
	add	sp, #4
	C$roomConfiguration.c$93$1_0$114	= .
	.globl	C$roomConfiguration.c$93$1_0$114
;roomConfiguration.c:93: }
	C$roomConfiguration.c$93$1_0$114	= .
	.globl	C$roomConfiguration.c$93$1_0$114
	XG$roomInitialization$0$0	= .
	.globl	XG$roomInitialization$0$0
	ret
	G$seedInitialization$0$0	= .
	.globl	G$seedInitialization$0$0
	C$roomConfiguration.c$95$1_0$116	= .
	.globl	C$roomConfiguration.c$95$1_0$116
;roomConfiguration.c:95: void seedInitialization()
;	---------------------------------
; Function seedInitialization
; ---------------------------------
_seedInitialization::
	C$roomConfiguration.c$97$1_0$116	= .
	.globl	C$roomConfiguration.c$97$1_0$116
;roomConfiguration.c:97: if(!hasSeedBeenInitialized)
	ld	a, (#_hasSeedBeenInitialized)
	or	a, a
	ret	NZ
	C$roomConfiguration.c$99$2_0$117	= .
	.globl	C$roomConfiguration.c$99$2_0$117
;roomConfiguration.c:99: if(joypad() & J_A) 
	call	_joypad
	bit	4, e
	jr	Z, 00102$
	C$roomConfiguration.c$101$3_0$118	= .
	.globl	C$roomConfiguration.c$101$3_0$118
;roomConfiguration.c:101: hasSeedBeenInitialized = TRUE; 
	ld	hl, #_hasSeedBeenInitialized
	ld	(hl), #0x01
	C$roomConfiguration.c$103$3_0$118	= .
	.globl	C$roomConfiguration.c$103$3_0$118
;roomConfiguration.c:103: initrand(seed); 
	ld	hl, #_seed
	ld	a, (hl+)
	ld	h, (hl)
	ld	l, a
	push	hl
	call	_initrand
	add	sp, #2
	C$roomConfiguration.c$105$3_0$118	= .
	.globl	C$roomConfiguration.c$105$3_0$118
;roomConfiguration.c:105: printf("Seed Initialized! %d\n", seed); 
	ld	hl, #_seed
	ld	a, (hl+)
	ld	h, (hl)
	ld	l, a
	push	hl
	ld	hl, #___str_5
	push	hl
	call	_printf
	add	sp, #4
00102$:
	C$roomConfiguration.c$108$2_0$117	= .
	.globl	C$roomConfiguration.c$108$2_0$117
;roomConfiguration.c:108: if(seed >= 255){ seed = 0; }
	ld	hl, #_seed
	ld	a, (hl)
	sub	a, #0xff
	inc	hl
	ld	a, (hl)
	sbc	a, #0x00
	jr	C, 00104$
	ld	hl, #_seed
	ld	a, #0x00
	ld	(hl+), a
	ld	(hl), #0x00
	ret
00104$:
	C$roomConfiguration.c$109$3_0$120	= .
	.globl	C$roomConfiguration.c$109$3_0$120
;roomConfiguration.c:109: else{ seed += 1; }
	ld	hl, #_seed
	inc	(hl)
	ret	NZ
	inc	hl
	inc	(hl)
	C$roomConfiguration.c$111$1_0$116	= .
	.globl	C$roomConfiguration.c$111$1_0$116
;roomConfiguration.c:111: }
	C$roomConfiguration.c$111$1_0$116	= .
	.globl	C$roomConfiguration.c$111$1_0$116
	XG$seedInitialization$0$0	= .
	.globl	XG$seedInitialization$0$0
	ret
Fmain$__str_5$0_0$0 == .
___str_5:
	.ascii "Seed Initialized! %d"
	.db 0x0a
	.db 0x00
	G$roomCoreLoop$0$0	= .
	.globl	G$roomCoreLoop$0$0
	C$roomConfiguration.c$115$1_0$121	= .
	.globl	C$roomConfiguration.c$115$1_0$121
;roomConfiguration.c:115: void roomCoreLoop()
;	---------------------------------
; Function roomCoreLoop
; ---------------------------------
_roomCoreLoop::
	C$roomConfiguration.c$117$1_0$121	= .
	.globl	C$roomConfiguration.c$117$1_0$121
;roomConfiguration.c:117: generateRoom();
	call	_generateRoom
	C$roomConfiguration.c$119$1_0$121	= .
	.globl	C$roomConfiguration.c$119$1_0$121
;roomConfiguration.c:119: roomInitialization();
	call	_roomInitialization
	C$roomConfiguration.c$121$1_0$121	= .
	.globl	C$roomConfiguration.c$121$1_0$121
;roomConfiguration.c:121: seedInitialization();
	call	_seedInitialization
	C$roomConfiguration.c$123$1_0$121	= .
	.globl	C$roomConfiguration.c$123$1_0$121
;roomConfiguration.c:123: wait_vbl_done();
	C$roomConfiguration.c$124$1_0$121	= .
	.globl	C$roomConfiguration.c$124$1_0$121
;roomConfiguration.c:124: }
	C$roomConfiguration.c$124$1_0$121	= .
	.globl	C$roomConfiguration.c$124$1_0$121
	XG$roomCoreLoop$0$0	= .
	.globl	XG$roomCoreLoop$0$0
	jp  _wait_vbl_done
	G$main$0$0	= .
	.globl	G$main$0$0
	C$main.c$6$1_0$122	= .
	.globl	C$main.c$6$1_0$122
;main.c:6: int main(){
;	---------------------------------
; Function main
; ---------------------------------
_main::
	C$main.c$7$1_0$122	= .
	.globl	C$main.c$7$1_0$122
;main.c:7: while (TRUE) 
00102$:
	C$main.c$9$2_0$123	= .
	.globl	C$main.c$9$2_0$123
;main.c:9: roomCoreLoop();
	call	_roomCoreLoop
	C$main.c$12$1_0$122	= .
	.globl	C$main.c$12$1_0$122
;main.c:12: return 0;
	C$main.c$13$1_0$122	= .
	.globl	C$main.c$13$1_0$122
;main.c:13: }
	C$main.c$13$1_0$122	= .
	.globl	C$main.c$13$1_0$122
	XG$main$0$0	= .
	.globl	XG$main$0$0
	jr	00102$
	.area _CODE
	.area _CABS (ABS)
