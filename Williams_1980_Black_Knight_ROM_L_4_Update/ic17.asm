;
;	Disassembled by:
;		DASMx object code disassembler
;		(c) Copyright 1996, 1997   Conquest Consultants
;		Version 1.10 (Jul 16 1997)
;
;	File:	ic17.532
;	Date:	Sun Jul 04 19:13:47 2021
;	CPU:	Motorola 6800/6802/6808
;
	org	$7000
;
ic17:
u17rom:
	adda	#$CE
	bcc	L7004
L7004:
	staa	$00,x
	ldab	$03,x
	clr	$03,x
	staa	$02,x
	stab	$03,x
	ldaa	X008C
	asla
	bne	L7018
	staa	X008B
	staa	X0089
	inca
L7018:
	staa	X008C
	staa	$02,x
	cmpa	$02,x
	bne	L702F
	ldx	X008A
	ldaa	$20,x
	tab
	comb
	andb	$10,x
	anda	$28,x
	aba
	coma
	staa	X2400
L702F:
	ldx	X008A
	ldab	X0089
	andb	#$07
	bne	L7066
	ldaa	#$FF
	staa	X2802
	ldab	X0089
	stab	X2800
	bne	L70AD
	inc	X0095
	ldaa	X0060
	staa	X008D
	ldaa	X005C
	staa	X008E
	ldaa	X005E
	staa	X008F
	ldab	X005A
	rol	X008E
	bcc	L705B
	ldab	X005B
L705B:
	ldaa	X0058
	rol	X008F
	bcc	L70A5
	ldaa	X0059
	bra	L70A5
;
L7066:
	stab	X0090
	decb
	beq	L706F
	subb	#$03
	bne	L707C
L706F:
	rol	X008D
	rorb
	rol	X008D
	rorb
	orab	X2102
	bra	L7081
;
L707C:
	ldab	X2102
	andb	#$3F
L7081:
	stab	X2102
	ldaa	#$FF
	staa	X2802
	ldaa	X0089
	staa	X2800
	ldaa	$38,x
	rol	X008E
	bcc	L7097
	ldaa	$48,x
L7097:
	ldab	$40,x
	rol	X008F
	bcc	L70A0
	ldab	$50,x
L70A0:
	ror	X0090
	bcs	L70C7
L70A5:
	lsrb
	lsrb
	lsrb
	lsrb
	anda	#$F0
	bra	L70CD
;
L70AD:
	ldaa	X005D
	staa	X008E
	ldaa	X005F
	staa	X008F
	ldab	X005A
	rol	X008E
	bcc	L70BE
	ldab	X005B
L70BE:
	ldaa	X0058
	rol	X008F
	bcc	L70C7
	ldaa	X0059
L70C7:
	asla
	asla
	asla
	asla
	andb	#$0F
L70CD:
	aba
	staa	X2802
	ldaa	X0089
	inca
	staa	X0089
	rora
	bcs	L70FC
	ldaa	#$01
	staa	X3002
	ldx	#$0000
L70E1:
	ldaa	$61,x
	eora	X3000
	tab
	anda	$69,x
	oraa	$71,x
	staa	$71,x
	stab	$69,x
	comb
	andb	$71,x
	orab	$79,x
	stab	$79,x
	inx
	asl	X3002
	bcc	L70E1
L70FC:
	ldaa	X0094
	beq	L710D
	dec	X0094
	bne	L710D
	ldx	X0091
	ldaa	$00,x
	eora	X0093
	staa	$00,x
L710D:
	rti
;
	db	$7F, $3E, $C0, $3E
	db	$FF, $3C, $FF, $34
	db	$FF, $3C, $FF, $3C
	db	$FF, $3C, $FF, $3C
	db	$00, $3C, $FF, $3C
	db	$24, $03, $24, $01
	db	$30, $03, $30, $01
	db	$22, $01, $28, $03
	db	$21, $03, $21, $01
	db	$22, $03, $00, $10
	db	$00, $30, $00, $28
	db	$00, $20, $DF, $9E
	db	$CE, $00, $10, $37
	db	$8D, $58, $37, $EA
	db	$00, $E7, $00, $DF
	db	$9C, $D6, $9D, $C1
	db	$18, $33, $24, $05
	db	$53, $E4, $20, $E7
	db	$20, $33, $DE, $9E
	db	$39, $DF, $9E, $CE
	db	$00, $10, $37, $8D
	db	$39, $37, $53, $E4
	db	$00, $20, $DE, $DF
	db	$9E, $CE, $00, $30
	db	$20, $D1, $DF, $9E
	db	$CE, $00, $10, $37
	db	$8D, $24, $E8, $00
	db	$E7, $00, $20, $D9
	db	$CE, $00, $20, $20
	db	$BE, $CE, $00, $20
	db	$20, $D8, $CE, $00
	db	$20, $20, $E8, $CE
	db	$00, $28, $20, $AF
	db	$CE, $00, $28, $20
	db	$C9, $CE, $00, $28
	db	$20, $D9, $36, $44
	db	$44, $44, $BD, $EE
	db	$FF, $32, $7E, $EB
	db	$8E, $8D, $71, $17
	db	$43, $A4, $00, $8D
	db	$07, $BD, $F2, $55
	db	$24, $F5, $20, $5D
	db	$A7, $00, $DF, $9C
	db	$96, $9D, $81, $18
	db	$24, $06, $17, $43
	db	$A4, $20, $A7, $20
	db	$39, $8D, $51, $17
	db	$A8, $00, $A7, $00
	db	$BD, $F2, $55, $24
	db	$F6, $20, $3E, $8D
	db	$4F, $26, $3A, $BD
	db	$F2, $64, $25, $08
	db	$27, $F9, $17, $43
	db	$A4, $00, $A7, $00
	db	$8D, $6D, $EA, $00
	db	$E7, $00, $20, $25
	db	$8D, $2A, $27, $F6
	db	$8D, $61, $25, $1D
	db	$20, $F8, $8D, $20
	db	$27, $EC, $8D, $57
	db	$24, $FA, $DE, $9E
	db	$96, $A0, $D6, $A1
	db	$20, $9F, $8D, $10
	db	$17, $AA, $00, $8D
	db	$A7, $8D, $44, $24
	db	$F7, $96, $A0, $D6
	db	$A1, $DE, $9E, $39
	db	$BD, $F2, $2C, $96
	db	$A2, $BD, $F1, $9C
	db	$17, $A4, $00, $39
	db	$8D, $04, $96, $A3
	db	$20, $F3, $DF, $9E
	db	$97, $A0, $D7, $A1
	db	$FE, $E0, $4F, $16
	db	$58, $C4, $7F, $BD
	db	$EF, $4D, $EE, $00
	db	$DF, $A2, $CE, $F1
	db	$34, $49, $49, $49
	db	$48, $84, $07, $BD
	db	$EE, $FF, $EE, $00
	db	$D6, $A3, $D0, $A2
	db	$D7, $9A, $39, $58
	db	$24, $02, $59, $08
	db	$96, $9A, $80, $01
	db	$97, $9A, $17, $A4
	db	$00, $39, $54, $24
	db	$F3, $56, $09, $20
	db	$EF, $8D, $B9, $26
	db	$06, $8D, $F3, $24
	db	$FA, $20, $9E, $53
	db	$E4, $00, $E7, $00
	db	$20, $97, $8D, $9C
	db	$DF, $9C, $D7, $9B
	db	$97, $A4, $8D, $CF
	db	$25, $04, $8D, $1A
	db	$20, $F6, $DE, $9C
	db	$D6, $9B, $8D, $12
	db	$20, $38, $8D, $90
	db	$DF, $9C, $D7, $9B
	db	$97, $A4, $8D, $C6
	db	$25, $EC, $8D, $02
	db	$20, $F6, $36, $17
	db	$43, $A4, $00, $7D
	db	$00, $A4, $27, $01
	db	$1B, $A7, $00, $32
	db	$39, $BD, $F2, $26
	db	$26, $06, $8D, $AA
	db	$25, $10, $27, $FA
	db	$17, $A8, $00, $A7
	db	$00, $BD, $F2, $64
	db	$25, $04, $EA, $00
	db	$E7, $00, $7E, $F2
	db	$13, $BD, $F2, $1A
	db	$27, $07, $BD, $F2
	db	$55, $24, $F9, $20
	db	$F1, $0C, $20, $EE
	db	$BD, $F2, $1A, $26
	db	$F8, $BD, $F2, $55
	db	$24, $F9, $20, $E2
	db	$CE, $00, $61, $20
	db	$0D, $CE, $00, $30
	db	$20, $08, $CE, $00
	db	$28, $20, $03, $CE
	db	$00, $10, $BD, $F1
	db	$9C, $E5, $00, $39
	db	$84, $3F, $BD, $F2
	db	$1A, $97, $AA, $17
	db	$43, $A4, $18, $9A
	db	$AA, $A7, $18, $BD
	db	$F2, $55, $24, $F1
	db	$20, $B4, $EF, $F3
	db	$D3, $F3, $F4, $F4
	db	$36, $F4, $42, $F4
	db	$4F, $F4, $A1, $F5
	db	$40, $F5, $44, $F5
	db	$48, $F5, $58, $F5
	db	$62, $F5, $6B, $F5
	db	$78, $F5, $7D, $F5
	db	$87, $F5, $87, $F3
	db	$DB, $F3, $B5, $F3
	db	$AF, $EA, $67, $F3
	db	$E2, $F3, $EA, $F3
	db	$EF, $F2, $08, $F1
	db	$A7, $F1, $EE, $F1
	db	$F8, $F2, $6B, $F2
	db	$94, $F2, $7C, $F1
	db	$C7, $F1, $3C, $F1
	db	$5B, $F1, $70, $F1
	db	$69, $F1, $7E, $F1
	db	$83, $F1, $88, $EC
	db	$96, $EC, $05, $EB
	db	$FE, $F4, $AA, $F4
	db	$BF, $F4, $CA, $F4
	db	$D2, $F4, $EF, $F4
	db	$F6, $F4, $FD, $F5
	db	$27, $F5, $CD, $F5
	db	$CD, $F5, $CD, $F5
	db	$CD, $F5, $4F, $F5
	db	$A4, $F5, $BC, $F5
	db	$66, $F6, $53, $F6
	db	$5A, $F4, $95, $F6
	db	$36, $F6, $3B, $F6
	db	$47, $F6, $4E, $F6
	db	$61, $F6, $66, $F6
	db	$70, $F6, $6B, $F6
	db	$72, $F6, $77, $F6
	db	$7C, $F6, $7F, $F6
	db	$86, $97, $00, $D7
	db	$01, $32, $97, $D1
	db	$32, $97, $D2, $BD
	db	$E0, $A9, $BD, $F4
	db	$95, $16, $54, $54
	db	$54, $C4, $1E, $CE
	db	$F3, $19, $BD, $EF
	db	$4D, $EE, $00, $6E
	db	$00, $DF, $D1, $97
	db	$00, $D7, $01, $20
	db	$E2, $CE, $F3, $39
	db	$BD, $F4, $8E, $6E
	db	$00, $DE, $D1, $09
	db	$DF, $D1, $20, $D3
	db	$DE, $D1, $96, $00
	db	$D6, $01, $6E, $00
	db	$BD, $F6, $A5, $20
	db	$C6, $BD, $F6, $D5
	db	$20, $C1, $16, $C4
	db	$0F, $C0, $08, $25
	db	$1D, $58, $CE, $F3
	db	$47, $BD, $EF, $4D
	db	$EE, $00, $16, $58
	db	$58, $C4, $80, $BD
	db	$F4, $95, $36, $84
	db	$7F, $1B, $AD, $00
	db	$32, $4D, $2B, $F3
	db	$20, $9D, $CE, $F3
	db	$57, $16, $84, $03
	db	$BD, $F4, $8E, $C5
	db	$04, $26, $03, $5F
	db	$20, $E1, $8D, $6B
	db	$16, $BD, $F5, $18
	db	$AD, $00, $5D, $2B
	db	$F5, $7E, $F3, $B5
	db	$16, $C4, $0F, $C0
	db	$08, $24, $BE, $CE
	db	$F3, $5F, $20, $D9
	db	$16, $C4, $0F, $8D
	db	$4E, $BD, $EB, $23
	db	$5A, $26, $F8, $20
	db	$E4, $84, $0F, $26
	db	$08, $BD, $F4, $EA
	db	$BD, $EB, $FA, $20
	db	$D8, $81, $04, $24
	db	$0C, $CE, $F3, $63
	db	$BD, $F4, $8E, $8D
	db	$2E, $AD, $00, $20
	db	$C8, $16, $C0, $02
	db	$CE, $11, $30, $8D
	db	$22, $A7, $00, $08
	db	$5A, $26, $F8, $86
	db	$7E, $A7, $00, $86
	db	$F3, $A7, $01, $86
	db	$CD, $A7, $02, $96
	db	$00, $D6, $01, $7E
	db	$11, $30, $84, $0F
	db	$48, $BD, $EE, $FF
	db	$EE, $00, $39, $DF
	db	$9A, $DE, $D1, $A6
	db	$00, $08, $DF, $D1
	db	$DE, $9A, $39, $CE
	db	$F3, $6B, $16, $BD
	db	$F4, $8C, $6E, $00
	db	$8D, $E9, $16, $8D
	db	$69, $97, $9E, $54
	db	$54, $54, $54, $17
	db	$8D, $60, $9B, $9E
	db	$8D, $4D, $7E, $F3
	db	$B5, $8D, $D4, $16
	db	$8D, $54, $54, $54
	db	$54, $54, $20, $F0
	db	$8D, $C9, $DE, $B1
	db	$A7, $0D, $20, $EA
	db	$8D, $C1, $97, $B7
	db	$DE, $D1, $96, $00
	db	$D6, $01, $BD, $EA
	db	$24, $7E, $F3, $CB
	db	$8D, $06, $D7, $9A
	db	$97, $9B, $20, $B4
	db	$8D, $A9, $16, $20
	db	$A6, $8D, $F9, $BD
	db	$EA, $F3, $20, $C6
	db	$8D, $F2, $BD, $EA
	db	$FB, $20, $BF, $8D
	db	$E3, $96, $D2, $36
	db	$96, $D1, $36, $DF
	db	$D1, $20, $B3, $DF
	db	$9A, $C4, $0F, $D7
	db	$9D, $7F, $00, $9C
	db	$DE, $9C, $A7, $00
	db	$20, $86, $DF, $9A
	db	$84, $0F, $97, $9D
	db	$7F, $00, $9C, $DE
	db	$9C, $A6, $00, $20
	db	$EF, $8D, $B9, $96
	db	$D2, $36, $96, $D1
	db	$36, $96, $00, $D6
	db	$01, $AD, $00, $97
	db	$00, $32, $97, $D1
	db	$32, $97, $D2, $7E
	db	$F3, $CF, $8D, $D6
	db	$20, $90, $84, $0F
	db	$20, $8C, $8D, $44
	db	$DF, $D1, $7E, $F3
	db	$B5, $BD, $F4, $E2
	db	$96, $00, $D6, $01
	db	$6E, $00, $8D, $34
	db	$D6, $D2, $37, $D6
	db	$D1, $37, $20, $E8
	db	$8D, $2A, $20, $C3
	db	$BD, $F4, $E2, $20
	db	$DF, $16, $8D, $AA
	db	$97, $9C, $8D, $58
	db	$9B, $9C, $8D, $93
	db	$20, $D4, $16, $8D
	db	$4F, $20, $F7, $84
	db	$0F, $16, $8D, $48
	db	$BD, $ED, $03, $20
	db	$C5, $84, $1F, $BD
	db	$EC, $FC, $20, $BE
	db	$84, $0F, $85, $08
	db	$27, $02, $8A, $F0
	db	$16, $8D, $31, $9B
	db	$D2, $97, $9B, $D9
	db	$D1, $D7, $9A, $DE
	db	$9A, $39, $8D, $0A
	db	$EA, $00, $E7, $00
	db	$96, $A8, $2B, $F6
	db	$20, $17, $8D, $18
	db	$97, $A8, $84, $3F
	db	$CE, $00, $61, $7E
	db	$F1, $9C, $8D, $F2
	db	$53, $E4, $00, $E7
	db	$00, $96, $A8, $2B
	db	$F5, $7E, $F3, $B5
	db	$7E, $F4, $95, $37
	db	$8D, $28, $BD, $F6
	db	$92, $33, $1B, $36
	db	$C5, $02, $26, $05
	db	$BD, $F4, $E2, $20
	db	$12, $8D, $E9, $C6
	db	$FF, $81, $80, $C9
	db	$00, $9B, $D2, $D9
	db	$D1, $97, $9B, $D7
	db	$9A, $DE, $9A, $32
	db	$46, $24, $D2, $7E
	db	$F5, $05, $8D, $D0
	db	$81, $D0, $25, $3C
	db	$81, $F0, $24, $13
	db	$81, $E0, $25, $03
	db	$7E, $F5, $18, $CE
	db	$01, $93, $84, $0F
	db	$48, $BD, $EE, $FF
	db	$7E, $EF, $53, $81
	db	$F3, $25, $13, $36
	db	$8D, $DC, $16, $D7
	db	$9A, $32, $81, $F9
	db	$25, $08, $36, $37
	db	$8D, $D0, $97, $9A
	db	$33, $32, $CE, $F3
	db	$8B, $BD, $F4, $8C
	db	$96, $9A, $6E, $00
	db	$8D, $5A, $88, $01
	db	$39, $BD, $F2, $F9
	db	$26, $1E, $BD, $F2
	db	$EF, $26, $19, $20
	db	$10, $BD, $F2, $DE
	db	$25, $12, $20, $09
	db	$BD, $F2, $CF, $20
	db	$F7, $96, $C8, $26
	db	$07, $86, $80, $39
	db	$96, $C9, $27, $F9
	db	$86, $81, $39, $BD
	db	$F2, $F4, $20, $DD
	db	$BD, $F2, $EA, $20
	db	$D8, $8D, $1E, $94
	db	$9A, $39, $1B, $39
	db	$8D, $17, $9A, $9A
	db	$39, $11, $27, $E4
	db	$20, $DB, $11, $20
	db	$CB, $BD, $EB, $00
	db	$24, $DA, $20, $D1
	db	$D7, $9A, $94, $9A
	db	$39, $36, $17, $8D
	db	$03, $97, $9A, $32
	db	$4D, $2B, $F5, $BD
	db	$F2, $F9, $27, $BD
	db	$81, $40, $24, $C0
	db	$BD, $F2, $EF, $26
	db	$B4, $20, $B9, $36
	db	$B6, $01, $8E, $84
	db	$0F, $27, $0B, $46
	db	$25, $26, $B6, $E0
	db	$56, $BD, $EB, $FE
	db	$32, $39, $DF, $DC
	db	$CE, $01, $12, $20
	db	$0C, $36, $B6, $01
	db	$90, $46, $25, $10
	db	$DF, $DC, $CE, $01
	db	$16, $BD, $F7, $7F
	db	$BD, $E0, $A7, $86
	db	$01, $20, $2C, $36
	db	$DF, $DA, $CE, $01
	db	$A9, $BD, $EF, $53
	db	$91, $D0, $23, $18
	db	$BD, $E0, $A5, $B6
	db	$E0, $5F, $BD, $F1
	db	$3C, $B6, $E0, $60
	db	$BD, $F1, $3C, $7C
	db	$00, $D0, $CE, $01
	db	$22, $BD, $F7, $7F
	db	$DE, $DA, $32, $39
	db	$DF, $DC, $36, $37
	db	$8D, $45, $24, $22
	db	$BD, $EF, $63, $09
	db	$09, $1B, $19, $24
	db	$02, $86, $99, $BD
	db	$EF, $AF, $D1, $5A
	db	$26, $0E, $C6, $0E
	db	$D7, $AA, $CE, $F7
	db	$5F, $BD, $EA, $78
	db	$24, $02, $97, $5A
	db	$8D, $04, $DE, $DC
	db	$20, $30, $36, $BD
	db	$F7, $49, $86, $EF
	db	$25, $02, $86, $0F
	db	$BD, $EB, $23, $B6
	db	$E0, $61, $BD, $F1
	db	$5B, $BD, $EF, $63
	db	$27, $03, $BD, $F1
	db	$3C, $32, $39, $36
	db	$37, $CE, $01, $AB
	db	$BD, $EF, $63, $CE
	db	$01, $6E, $5D, $0D
	db	$27, $04, $BD, $FE
	db	$1F, $11, $33, $32
	db	$39, $CE, $01, $6E
	db	$BD, $EF, $63, $D1
	db	$5A, $27, $13, $96
	db	$5A, $8B, $01, $19
	db	$97, $5A, $FE, $E0
	db	$B7, $11, $27, $04
	db	$AD, $00, $20, $E5
	db	$AD, $00, $7E, $EA
	db	$67, $36, $86, $01
	db	$20, $01, $36, $37
	db	$DF, $9A, $BD, $EF
	db	$63, $37, $BD, $EF
	db	$63, $1B, $19, $16
	db	$32, $89, $00, $19
	db	$DE, $9A, $BD, $EF
	db	$AF, $BD, $EF, $69
	db	$DE, $9A, $20, $BA
	db	$90, $03, $7E, $EA
	db	$67, $52, $0E, $53
	db	$20, $04, $43, $8B
	db	$06, $48, $16, $58
	db	$CE, $01, $02, $BD
	db	$EF, $4D, $BD, $F7
	db	$7F, $CE, $01, $AF
	db	$BD, $EE, $FF, $BD
	db	$EF, $63, $8D, $6E
	db	$CE, $01, $62, $8D
	db	$44, $8D, $42, $CE
	db	$01, $B9, $BD, $EF
	db	$63, $11, $25, $33
	db	$CE, $01, $B5, $BD
	db	$EF, $63, $8D, $56
	db	$8D, $36, $97, $9A
	db	$CE, $01, $64, $BD
	db	$EF, $69, $CE, $01
	db	$B7, $BD, $EF, $63
	db	$CE, $01, $62, $BD
	db	$EF, $53, $8D, $3E
	db	$8D, $1E, $4D, $27
	db	$02, $8D, $2C, $9B
	db	$9A, $19, $CE, $01
	db	$0E, $BD, $F7, $84
	db	$7E, $F6, $FE, $B6
	db	$E0, $5E, $7E, $EC
	db	$FC, $BD, $FE, $1F
	db	$1B, $7E, $EF, $AF
	db	$D7, $9D, $27, $0D
	db	$16, $86, $99, $8B
	db	$01, $19, $D0, $9D
	db	$24, $F9, $DB, $9D
	db	$39, $17, $39, $CE
	db	$00, $00, $FF, $01
	db	$64, $FF, $01, $62
	db	$39, $42, $36, $17
	db	$5F, $4D, $27, $5E
	db	$8B, $99, $19, $5C
	db	$20, $F7, $A7, $00
	db	$08, $5A, $26, $FA
	db	$39, $FE, $E0, $B9
	db	$AD, $00, $BD, $F9
	db	$94, $8D, $49, $8D
	db	$25, $8D, $03, $7E
	db	$F8, $D2, $BD, $E0
	db	$AD, $7C, $00, $CC
	db	$D6, $CC, $8D, $4B
	db	$CE, $E0, $57, $BD
	db	$EF, $4D, $A6, $00
	db	$BD, $EC, $FC, $58
	db	$58, $CE, $00, $38
	db	$BD, $EF, $4D, $6F
	db	$03, $39, $4F, $97
	db	$D6, $97, $D0, $97
	db	$CD, $97, $C9, $97
	db	$60, $C6, $08, $BD
	db	$EA, $FB, $4A, $97
	db	$CC, $86, $F1, $97
	db	$58, $C6, $0C, $CE
	db	$00, $1C, $36, $4F
	db	$8D, $A8, $32, $39
	db	$86, $FF, $C6, $10
	db	$CE, $00, $38, $8D
	db	$9D, $4F, $97, $5C
	db	$97, $5D, $97, $5E
	db	$97, $5F, $39, $36
	db	$37, $8D, $0B, $8D
	db	$15, $DE, $9A, $C6
	db	$06, $8D, $DB, $33
	db	$32, $39, $86, $1A
	db	$CE, $11, $26, $BD
	db	$EE, $FF, $5A, $2A
	db	$FA, $39, $DF, $9A
	db	$CE, $E0, $77, $C6
	db	$14, $7E, $EF, $BC
	db	$8D, $5F, $D6, $CD
	db	$8D, $7A, $FE, $E0
	db	$BB, $AD, $00, $BD
	db	$EA, $2F, $05, $8D
	db	$36, $43, $94, $60
	db	$97, $60, $8D, $3C
	db	$DE, $B1, $86, $07
	db	$A7, $0D, $CE, $00
	db	$5C, $BD, $EF, $4D
	db	$A6, $00, $8A, $7F
	db	$A7, $00, $BD, $EA
	db	$2F, $05, $BD, $E0
	db	$AB, $A6, $00, $84
	db	$80, $A7, $00, $BD
	db	$EB, $A1, $DE, $B1
	db	$86, $04, $A7, $0D
	db	$96, $D6, $27, $C7
	db	$7E, $EA, $67, $D6
	db	$CD, $CE, $EB, $99
	db	$BD, $EF, $4D, $A6
	db	$00, $AA, $04, $39
	db	$DE, $CE, $86, $FF
	db	$A7, $10, $A7, $11
	db	$A7, $12, $A7, $13
	db	$39, $96, $61, $84
	db	$FC, $97, $61, $4F
	db	$97, $C8, $97, $D3
	db	$97, $CA, $86, $18
	db	$BD, $EB, $23, $96
	db	$CD, $48, $48, $CE
	db	$00, $38, $BD, $EE
	db	$FF, $DF, $CE, $39
	db	$CE, $00, $10, $DF
	db	$9A, $BD, $F8, $BC
	db	$DF, $9C, $CE, $E0
	db	$77, $A6, $14, $16
	db	$53, $E4, $00, $08
	db	$DF, $9E, $DE, $9C
	db	$A4, $00, $08, $DF
	db	$9C, $1B, $DE, $9A
	db	$A7, $00, $08, $8C
	db	$00, $1C, $26, $03
	db	$CE, $00, $30, $DF
	db	$9A, $DE, $9E, $8C
	db	$E0, $8B, $26, $D9
	db	$CE, $00, $02, $DF
	db	$9A, $DE, $9C, $C6
	db	$06, $8D, $52, $7E
	db	$F7, $2C, $CE, $11
	db	$28, $86, $0F, $E6
	db	$00, $27, $07, $BD
	db	$EC, $05, $6A, $00
	db	$26, $F9, $08, $4A
	db	$85, $08, $26, $EF
	db	$39, $8D, $E7, $BD
	db	$F3, $AB, $71, $5A
	db	$FE, $01, $01, $FA
	db	$55, $0A, $00, $04
	db	$FE, $E0, $BD, $AD
	db	$00, $7F, $00, $D6
	db	$D6, $CD, $8D, $05
	db	$8D, $1E, $7E, $F8
	db	$D2, $BD, $F8, $BC
	db	$DF, $9A, $CE, $00
	db	$10, $C6, $0C, $8D
	db	$0C, $CE, $00, $30
	db	$C6, $08, $8D, $05
	db	$CE, $00, $02, $C6
	db	$06, $7E, $EF, $BC
	db	$96, $CA, $27, $20
	db	$CE, $01, $2A, $BD
	db	$F7, $7F, $96, $D0
	db	$26, $16, $96, $CD
	db	$91, $CC, $4C, $25
	db	$0D, $B6, $01, $94
	db	$98, $58, $84, $0F
	db	$27, $1A, $7C, $00
	db	$58, $4F, $97, $CD
	db	$39, $CE, $00, $48
	db	$DF, $9A, $86, $04
	db	$C6, $04, $CE, $01
	db	$66, $BD, $FF, $D1
	db	$4A, $26, $F5, $39
	db	$BD, $E0, $AF, $CE
	db	$00, $30, $C6, $08
	db	$BD, $F8, $94, $8D
	db	$67, $BD, $FB, $39
	db	$B6, $E0, $5D, $BD
	db	$EC, $FC, $B6, $E0
	db	$65, $F6, $E0, $64
	db	$BD, $F3, $AB, $31
	db	$F8, $17, $00, $15
	db	$01, $04, $7C, $00
	db	$C9, $FE, $E0, $67
	db	$BD, $EA, $C4, $CE
	db	$01, $81, $BD, $EF
	db	$53, $26, $03, $7E
	db	$EA, $67, $4F, $BD
	db	$F8, $A4, $B6, $E0
	db	$62, $BD, $F1, $5B
	db	$BD, $EA, $2F, $90
	db	$8D, $A3, $D6, $60
	db	$43, $7D, $00, $48
	db	$26, $0A, $97, $48
	db	$97, $4C, $97, $50
	db	$97, $54, $86, $33
	db	$97, $60, $86, $7F
	db	$BD, $F8, $A4, $B6
	db	$E0, $62, $BD, $F1
	db	$69, $BD, $EA, $2F
	db	$70, $BD, $E0, $B1
	db	$D7, $60, $20, $C6
	db	$CE, $01, $81, $BD
	db	$EF, $53, $27, $5A
	db	$7F, $00, $A1, $C6
	db	$04, $D7, $A0, $CE
	db	$00, $35, $DF, $A4
	db	$C6, $04, $D7, $A8
	db	$CE, $01, $66, $BD
	db	$EF, $63, $DF, $A6
	db	$DE, $A4, $BD, $EC
	db	$86, $11, $22, $3B
	db	$26, $57, $08, $DF
	db	$A4, $DE, $A6, $7A
	db	$00, $A8, $26, $E7
	db	$7A, $00, $A0, $26
	db	$DB, $96, $A1, $27
	db	$25, $B6, $E0, $5C
	db	$BD, $EC, $FC, $8D
	db	$59, $CE, $01, $A7
	db	$BD, $EF, $53, $CE
	db	$01, $4E, $BD, $F7
	db	$84, $BD, $F6, $FE
	db	$B6, $01, $66, $84
	db	$0F, $27, $07, $86
	db	$99, $8D, $33, $7F
	db	$01, $66, $39, $CE
	db	$01, $66, $7C, $00
	db	$A1, $DF, $9A, $8D
	db	$18, $C6, $04, $09
	db	$BD, $EF, $E4, $7C
	db	$01, $66, $B6, $01
	db	$67, $4C, $84, $0F
	db	$26, $B6, $7F, $01
	db	$67, $8D, $02, $20
	db	$AF, $DE, $A4, $96
	db	$A8, $7F, $00, $A8
	db	$BD, $EE, $FF, $DF
	db	$A4, $39, $CE, $01
	db	$66, $C6, $04, $BD
	db	$EF, $AF, $5A, $26
	db	$FA, $39, $BD, $EA
	db	$2F, $02, $96, $C1
	db	$26, $F8, $39, $B6
	db	$01, $8C, $46, $25
	db	$E4, $8D, $3F, $48
	db	$48, $48, $48, $81
	db	$A0, $24, $F6, $97
	db	$58, $7F, $00, $9A
	db	$C6, $04, $D7, $9B
	db	$CE, $00, $38, $A1
	db	$03, $26, $03, $7C
	db	$00, $9A, $BD, $EF
	db	$4D, $7A, $00, $9B
	db	$26, $F1, $D6, $9A
	db	$27, $12, $B6, $E0
	db	$5B, $BD, $EC, $FC
	db	$8D, $C0, $17, $CE
	db	$01, $1A, $BD, $F7
	db	$84, $BD, $F6, $FE
	db	$B6, $E0, $63, $7E
	db	$F1, $3C, $37, $96
	db	$D7, $16, $56, $56
	db	$97, $9A, $D8, $9A
	db	$59, $49, $97, $D7
	db	$9B, $89, $33, $39
	db	$CE, $01, $AB, $BD
	db	$EF, $63, $CE, $01
	db	$6E, $BD, $FE, $1F
	db	$26, $03, $5D, $26
	db	$16, $D6, $C9, $26
	db	$15, $D6, $58, $C1
	db	$F1, $26, $0F, $D6
	db	$CC, $F1, $E0, $4E
	db	$24, $05, $8D, $0B
	db	$BD, $F8, $58, $7E
	db	$EA, $67, $8D, $03
	db	$7E, $F8, $47, $4D
	db	$27, $0D, $8B, $99
	db	$19, $BD, $EF, $AF
	db	$96, $5A, $8B, $99
	db	$19, $97, $5A, $BD
	db	$F7, $2C, $BD, $F8
	db	$29, $CE, $01, $1E
	db	$7E, $F7, $7F, $7C
	db	$00, $D3, $B6, $01
	db	$92, $84, $0F, $91
	db	$D3, $22, $A8, $B6
	db	$E0, $66, $97, $C8
	db	$BD, $F3, $AB, $14
	db	$00, $55, $0C, $00
	db	$31, $F8, $04, $39
	db	$FE, $43, $FE, $62
	db	$FE, $8D, $FE, $CB
	db	$FE, $F0, $00, $FD
	db	$23, $01, $FD, $30
	db	$0C, $FD, $A9, $0D
	db	$FD, $B1, $12, $FE
	db	$26, $13, $FD, $EF
	db	$14, $FE, $09, $1A
	db	$FE, $33, $2A, $FD
	db	$2E, $32, $FE, $3E
	db	$33, $8D, $45, $2B
	db	$03, $7E, $EA, $67
	db	$8D, $54, $8D, $47
	db	$2B, $75, $4F, $7F
	db	$00, $0E, $CE, $FB
	db	$FA, $36, $BD, $F4
	db	$8E, $32, $16, $5A
	db	$D7, $5A, $BD, $EA
	db	$C4, $BD, $EA, $2F
	db	$10, $8D, $21, $2A
	db	$FC, $8D, $28, $2B
	db	$45, $D7, $0E, $8D
	db	$17, $2B, $FC, $20
	db	$F0, $36, $96, $CB
	db	$2B, $0C, $8D, $17
	db	$2B, $08, $96, $0E
	db	$27, $04, $4F, $97
	db	$0E, $4A, $32, $39
	db	$F6, $28, $00, $BD
	db	$EA, $2F, $02, $F6
	db	$28, $01, $39, $F6
	db	$28, $02, $BD, $EA
	db	$2F, $02, $F6, $28
	db	$03, $39, $5F, $BD
	db	$EA, $FB, $86, $18
	db	$BD, $EB, $23, $7C
	db	$00, $CB, $CE, $00
	db	$00, $C6, $89, $7E
	db	$F8, $94, $C6, $28
	db	$CE, $00, $10, $8D
	db	$F6, $BD, $EA, $FB
	db	$4C, $81, $05, $26
	db	$8E, $8D, $DB, $7F
	db	$00, $58, $86, $04
	db	$97, $5A, $BD, $EA
	db	$2F, $10, $BD, $F8
	db	$9A, $8D, $36, $D6
	db	$58, $BD, $F8, $34
	db	$CE, $FC, $01, $08
	db	$08, $08, $E1, $03
	db	$24, $F9, $EE, $01
	db	$AD, $00, $BD, $FC
	db	$6A, $2A, $FB, $8D
	db	$1C, $BD, $FC, $6A
	db	$2A, $DC, $8D, $1A
	db	$26, $F7, $8D, $31
	db	$9B, $58, $19, $81
	db	$51, $27, $35, $81
	db	$99, $26, $02, $86
	db	$50, $97, $58, $20
	db	$E4, $86, $08, $97
	db	$0F, $39, $96, $0F
	db	$27, $05, $7A, $00
	db	$0F, $81, $08, $39
	db	$8D, $EF, $BD, $FC
	db	$6A, $2B, $CC, $96
	db	$69, $85, $04, $27
	db	$F3, $8D, $E7, $26
	db	$F1, $86, $99, $BD
	db	$FC, $75, $2A, $02
	db	$86, $01, $16, $39
	db	$86, $FF, $97, $58
	db	$97, $5A, $BD, $EA
	db	$2F, $50, $7E, $E8
	db	$00, $FE, $E0, $00
	db	$DF, $39, $B6, $E0
	db	$02, $97, $3B, $39
	db	$C0, $1E, $58, $58
	db	$CE, $00, $FE, $BD
	db	$EF, $4D, $BD, $EF
	db	$53, $97, $3A, $BD
	db	$EF, $53, $97, $3B
	db	$C1, $20, $27, $01
	db	$39, $CE, $01, $4E
	db	$BD, $EF, $53, $97
	db	$3E, $BD, $EF, $53
	db	$97, $3F, $CE, $01
	db	$12, $C6, $03, $D7
	db	$9A, $BD, $EF, $63
	db	$BD, $EF, $53, $9B
	db	$3F, $19, $97, $3F
	db	$17, $99, $3E, $19
	db	$97, $3E, $7A, $00
	db	$9A, $26, $EA, $CE
	db	$00, $46, $C6, $07
	db	$BD, $F8, $94, $DE
	db	$3E, $DF, $48, $86
	db	$99, $97, $4D, $16
	db	$90, $3B, $D0, $3A
	db	$8B, $01, $19, $97
	db	$4F, $17, $89, $00
	db	$19, $97, $4E, $D6
	db	$47, $CE, $00, $46
	db	$0C, $A6, $04, $A9
	db	$09, $19, $A7, $04
	db	$09, $8C, $00, $41
	db	$26, $F3, $D1, $47
	db	$26, $E9, $39, $BD
	db	$FA, $0B, $86, $7F
	db	$97, $5C, $39, $CE
	db	$01, $81, $C0, $0D
	db	$58, $BD, $EF, $4D
	db	$DF, $D1, $58, $CE
	db	$01, $4E, $BD, $EF
	db	$4D, $BD, $EF, $53
	db	$97, $3E, $BD, $EF
	db	$53, $97, $3F, $5F
	db	$DE, $D1, $8D, $14
	db	$16, $BD, $EC, $F3
	db	$84, $F0, $D7, $38
	db	$97, $39, $5F, $D7
	db	$3A, $D7, $3B, $BD
	db	$FC, $FC, $20, $E8
	db	$8D, $37, $1B, $19
	db	$BD, $EF, $AF, $20
	db	$33, $5F, $CE, $01
	db	$AD, $BD, $FD, $E6
	db	$C6, $99, $81, $09
	db	$24, $F4, $97, $3B
	db	$16, $27, $03, $BD
	db	$EF, $D0, $BD, $FC
	db	$FC, $20, $E7, $CE
	db	$01, $AF, $C0, $14
	db	$58, $BD, $EF, $4D
	db	$BD, $FE, $1F, $97
	db	$3B, $B6, $01, $AE
	db	$84, $0F, $27, $0B
	db	$39, $BD, $EF, $53
	db	$09, $09, $4D, $39
	db	$CE, $01, $AB, $5F
	db	$8D, $BA, $97, $3B
	db	$BD, $FC, $FC, $20
	db	$F7, $CE, $01, $8B
	db	$C0, $1A, $58, $BD
	db	$EF, $4D, $20, $EB
	db	$CE, $01, $70, $20
	db	$E6, $4F, $CE, $00
	db	$38, $C6, $24, $BD
	db	$F8, $40, $BD, $EA
	db	$2F, $18, $BD, $FC
	db	$57, $2A, $EF, $73
	db	$00, $60, $8B, $11
	db	$19, $24, $E7, $D6
	db	$CB, $2A, $E2, $39
	db	$BD, $F8, $9A, $4F
	db	$97, $60, $97, $58
	db	$86, $FE, $C6, $FF
	db	$F7, $21, $00, $BD
	db	$EA, $2F, $00, $B7
	db	$21, $00, $BD, $EA
	db	$2F, $40, $BD, $FC
	db	$57, $2A, $EB, $7C
	db	$00, $58, $48, $4C
	db	$2B, $E4, $D6, $CB
	db	$2A, $D9, $39, $C6
	db	$AA, $D7, $58, $D7
	db	$0F, $96, $10, $43
	db	$CE, $00, $10, $C6
	db	$08, $BD, $F8, $40
	db	$BD, $EA, $2F, $1B
	db	$7A, $00, $0F, $26
	db	$EC, $D6, $CB, $2A
	db	$E8, $39, $BD, $FC
	db	$80, $5A, $D7, $CB
	db	$8D, $8F, $7F, $00
	db	$5A, $8D, $A9, $7C
	db	$00, $5A, $8D, $CF
	db	$7C, $00, $5A, $8D
	db	$08, $CE, $01, $4A
	db	$BD, $F7, $7F, $20
	db	$E7, $C6, $01, $D7
	db	$58, $86, $20, $BD
	db	$EB, $23, $BD, $EA
	db	$2F, $40, $BD, $FC
	db	$57, $2A, $F4, $16
	db	$96, $58, $8B, $01
	db	$19, $97, $58, $17
	db	$4C, $81, $39, $25
	db	$E6, $D6, $CB, $2A
	db	$DC, $39, $86, $FF
	db	$97, $58, $BD, $EA
	db	$2F, $00, $B6, $E0
	db	$4D, $4A, $CE, $00
	db	$69, $BD, $F1, $9C
	db	$E5, $00, $27, $14
	db	$36, $4C, $C6, $01
	db	$BD, $F8, $16, $97
	db	$58, $4F, $C6, $01
	db	$BD, $ED, $53, $32
	db	$BD, $EA, $2F, $40
	db	$4A, $2B, $D3, $20
	db	$DD, $C6, $20, $A8
	db	$00, $84, $F0, $27
	db	$54, $C6, $10, $20
	db	$50, $0F, $CE, $28
	db	$00, $6F, $01, $86
	db	$F0, $A7, $00, $C6
	db	$3C, $E7, $01, $A7
	db	$00, $4F, $CE, $10
	db	$00, $A7, $00, $08
	db	$8C, $14, $00, $26
	db	$F8, $35, $09, $A1
	db	$00, $26, $D2, $8C
	db	$10, $00, $26, $F6
	db	$43, $26, $E7, $C6
	db	$20, $CE, $FF, $FF
	db	$DF, $9A, $CB, $10
	db	$C1, $70, $22, $1F
	db	$26, $05, $B6, $E0
	db	$4C, $2B, $18, $96
	db	$9A, $80, $08, $97
	db	$9A, $4F, $A9, $00
	db	$09, $9C, $9A, $26
	db	$F9, $81, $80, $27
	db	$DF, $53, $F7, $28
	db	$00, $20, $FE, $C6
	db	$90, $B6, $01, $BB
	db	$7C, $01, $BB, $B1
	db	$01, $BB, $27, $ED
	db	$C6, $80, $CE, $12
	db	$00, $DF, $9A, $CE
	db	$01, $00, $8D, $37
	db	$86, $F1, $97, $9E
	db	$CE, $01, $00, $96
	db	$9E, $A7, $00, $8D
	db	$4B, $08, $8C, $02
	db	$00, $26, $F6, $CE
	db	$01, $00, $96, $9E
	db	$16, $E8, $00, $C4
	db	$0F, $26, $12, $8D
	db	$37, $08, $8C, $02
	db	$00, $26, $F1, $7C
	db	$00, $9E, $26, $D8
	db	$8D, $1D, $7E, $E8
	db	$00, $8D, $18, $C6
	db	$80, $20, $AA, $36
	db	$BD, $EF, $53, $DF
	db	$9C, $DE, $9A, $A7
	db	$00, $08, $DF, $9A
	db	$DE, $9C, $5A, $26
	db	$EF, $32, $39, $CE
	db	$01, $00, $DF, $9A
	db	$CE, $12, $00, $C6
	db	$80, $7E, $EF, $E4
	db	$4C, $26, $02, $86
	db	$F1, $39, $E0, $BF
	db	$E0, $C2, $FF, $2B
	db	$E8, $00
