;
;	Disassembled by:
;		DASMx object code disassembler
;		(c) Copyright 1996, 1997   Conquest Consultants
;		Version 1.10 (Jul 16 1997)
;
;	File:	ic20.716
;	Date:	Sun Jul 04 19:40:45 2021
;	CPU:	Motorola 6800/6802/6808
;
	org	$6800
;
ic20:
u20rom:
	sei
	lds	#$F10D
	ldab	#$0A
	ldx	#$2100
	ldaa	#$04
	staa	$01,x
	ldaa	#$7F
	staa	$00,x
	stx	X009A
	cpx	X009A
	bne	L683C
L6817:
	ldx	X009A
L6819:
	clr	$01,x
	pula
	staa	$00,x
	pula
	staa	$01,x
	cpx	#$2100
	beq	L6828
	clr	$00,x
L6828:
	inx
	inx
	decb
	beq	L6840
	bitb	#$01
	bne	L6819
	ldaa	X009A
	asla
	anda	#$1F
	oraa	#$20
	staa	X009A
	bra	L6817
L683C:
	jmp	LFF2B
;
	db	$0B
;
L6840:
	ldx	#$13FF
	txs
L6844:
	clr	$00,x
	dex
	cpx	#$0FFF
	bne	L6844
	jsr	LEF22
	ldaa	XE055
	staa	X00B5
	ldx	#$1100
	stx	X0096
	ldx	#$1118
	stx	X0098
	ldx	#$017D
	jsr	LEF53
	jsr	LEF63
	aba
	cmpa	#$57
	beq	L686F
L686C:
	jsr	LEF7D
L686F:
	ldx	#$016E
	jsr	LEF53
	staa	X005A
	jsr	LFE1F
	clr	$00,x
	clr	$01,x
	cmpa	#$15
	bne	L6888
	ldx	#$FEAC
	jsr	LEAC4
L6888:
	cmpa	#$45
	beq	L686C
	cmpa	#$35
	bne	L6893
	jsr	LEF6F
L6893:
	jsr	LF72C
	dec	X0061
	jsr	LF89A
	staa	X003B
	cli
	ldx	XE0B3
	jsr	$00,x		;INFO: index jump
	ldx	#$FA34
	jsr	LEAC4
	jmp	LE9FC
;
	db	$CE, $00, $AD, $DF
	db	$B3, $DF, $B1, $FE
	db	$E0, $B5, $AD, $00
	db	$0F, $96, $95, $7F
	db	$00, $95, $0E, $97
	db	$AC, $96, $CB, $27
	db	$03, $7E, $E9, $46
	db	$B6, $28, $01, $2A
	db	$06, $CE, $FC, $23
	db	$BD, $EA, $C4, $CE
	db	$00, $00, $A6, $81
	db	$43, $A4, $71, $27
	db	$03, $BD, $EE, $61
	db	$A6, $81, $A4, $79
	db	$27, $03, $BD, $EE
	db	$BB, $08, $8C, $00
	db	$08, $26, $E7, $D6
	db	$D6, $27, $19, $96
	db	$AC, $DE, $D4, $BD
	db	$EE, $FF, $DF, $D4
	db	$8C, $0E, $FF, $2B
	db	$0B, $5F, $D7, $D4
	db	$D7, $D5, $CE, $01
	db	$26, $BD, $F7, $7F
	db	$CE, $11, $00, $9C
	db	$96, $27, $32, $A6
	db	$00, $90, $AC, $22
	db	$26, $DF, $A8, $A6
	db	$01, $97, $A5, $7F
	db	$00, $A0, $16, $57
	db	$57, $57, $D7, $A1
	db	$BD, $EB, $8E, $D7
	db	$A2, $DE, $A0, $A6
	db	$61, $97, $A4, $BD
	db	$EE, $04, $DE, $A8
	db	$24, $07, $BD, $EF
	db	$0F, $20, $D0, $A7
	db	$00, $08, $08, $20
	db	$CA, $DE, $AD, $27
	db	$0D, $A6, $02, $90
	db	$AC, $24, $01, $4F
	db	$A7, $02, $EE, $00
	db	$20, $F1, $96, $B6
	db	$90, $AC, $22, $11
	db	$CE, $00, $00, $C6
	db	$08, $A6, $10, $A8
	db	$30, $A7, $10, $08
	db	$5A, $26, $F6, $96
	db	$B5, $97, $B6, $96
	db	$94, $26, $18, $CE
	db	$11, $18, $9C, $98
	db	$27, $11, $A6, $00
	db	$E6, $01, $E7, $00
	db	$08, $9C, $98, $26
	db	$F7, $09, $DF, $98
	db	$BD, $EB, $47, $96
	db	$C1, $27, $55, $96
	db	$BA, $85, $10, $27
	db	$09, $F6, $21, $02
	db	$C4, $20, $27, $5F
	db	$20, $0E, $96, $BE
	db	$90, $AC, $97, $BE
	db	$96, $BD, $82, $00
	db	$97, $BD, $24, $4F
	db	$86, $7F, $BD, $ED
	db	$A0, $96, $BA, $2B
	db	$1C, $7A, $00, $B8
	db	$27, $1C, $D6, $C1
	db	$2B, $0B, $DE, $BF
	db	$DF, $BD, $96, $B9
	db	$BD, $ED, $9E, $20
	db	$32, $8A, $80, $97
	db	$BA, $DE, $BF, $DF
	db	$BB, $BD, $ED, $A7
	db	$20, $25, $D6, $C6
	db	$27, $0A, $96, $C7
	db	$BD, $ED, $53, $7F
	db	$00, $C6, $20, $17
	db	$7F, $00, $C1, $CE
	db	$11, $27, $86, $08
	db	$08, $4A, $2B, $0B
	db	$E6, $00, $27, $F8
	db	$6A, $00, $8A, $08
	db	$BD, $EB, $FE, $CE
	db	$00, $AD, $EE, $00
	db	$26, $03, $7E, $E8
	db	$AD, $A6, $02, $26
	db	$F5, $DF, $B1, $DF
	db	$B3, $C6, $08, $A6
	db	$03, $36, $08, $5A
	db	$26, $F9, $A6, $04
	db	$36, $A6, $03, $36
	db	$A6, $06, $E6, $07
	db	$EE, $08, $39, $97
	db	$9C, $DF, $9A, $96
	db	$B7, $30, $EE, $00
	db	$20, $0A, $DF, $9A
	db	$97, $9C, $30, $EE
	db	$00, $A6, $00, $08
	db	$DF, $9E, $DE, $B1
	db	$A7, $02, $96, $9E
	db	$A7, $0B, $96, $9F
	db	$A7, $0C, $E7, $0F
	db	$96, $9C, $A7, $0E
	db	$96, $9A, $A7, $10
	db	$96, $9B, $A7, $11
	db	$31, $31, $C6, $08
	db	$32, $A7, $0A, $09
	db	$5A, $26, $F9, $DE
	db	$B1, $8E, $13, $F7
	db	$20, $98, $CE, $00
	db	$AD, $DF, $9C, $EE
	db	$00, $27, $8C, $9C
	db	$B1, $26, $F6, $8D
	db	$56, $20, $EA, $DF
	db	$9A, $0D, $DE, $AF
	db	$27, $44, $36, $A6
	db	$00, $97, $AF, $A6
	db	$01, $97, $B0, $DF
	db	$9C, $DE, $B3, $A6
	db	$00, $97, $9E, $A6
	db	$01, $97, $9F, $96
	db	$9C, $A7, $00, $96
	db	$9D, $A7, $01, $EE
	db	$00, $DF, $B3, $96
	db	$9E, $A7, $00, $96
	db	$9F, $A7, $01, $96
	db	$9A, $A7, $0B, $96
	db	$9B, $A7, $0C, $96
	db	$AA, $A7, $0D, $96
	db	$A6, $A7, $10, $96
	db	$A7, $A7, $11, $32
	db	$A7, $0E, $E7, $0F
	db	$6F, $02, $39, $36
	db	$86, $06, $97, $AA
	db	$32, $20, $AC, $36
	db	$A6, $00, $97, $9A
	db	$A6, $01, $97, $9B
	db	$96, $AF, $A7, $00
	db	$96, $B0, $A7, $01
	db	$DF, $AF, $9C, $B3
	db	$26, $04, $DE, $B1
	db	$DF, $B3, $DE, $9C
	db	$96, $9A, $A7, $00
	db	$96, $9B, $A7, $01
	db	$32, $39, $8D, $0B
	db	$25, $03, $8D, $D3
	db	$0C, $39, $8D, $F6
	db	$24, $FC, $39, $37
	db	$D7, $9A, $CE, $00
	db	$AD, $DF, $9C, $DE
	db	$AD, $0D, $27, $14
	db	$16, $E8, $0D, $53
	db	$D4, $9A, $D1, $9A
	db	$27, $06, $DF, $9C
	db	$EE, $00, $20, $ED
	db	$9C, $B1, $27, $F6
	db	$33, $39, $36, $37
	db	$DF, $9A, $DE, $98
	db	$8C, $11, $18, $27
	db	$11, $0D, $8C, $11
	db	$28, $27, $06, $A7
	db	$00, $08, $DF, $98
	db	$0C, $33, $32, $DE
	db	$9A, $39, $D6, $94
	db	$26, $F1, $8D, $02
	db	$20, $F2, $37, $16
	db	$C4, $E0, $27, $1A
	db	$C1, $E0, $27, $0A
	db	$D7, $94, $8D, $1C
	db	$DF, $91, $D7, $93
	db	$20, $02, $8D, $14
	db	$25, $0C, $0F, $EA
	db	$00, $E7, $00, $0E
	db	$33, $39, $8D, $08
	db	$25, $F4, $53, $0F
	db	$E4, $00, $20, $F1
	db	$84, $1F, $81, $0F
	db	$22, $0B, $CE, $22
	db	$00, $81, $07, $23
	db	$02, $08, $08, $20
	db	$0C, $80, $10, $CE
	db	$F1, $22, $BD, $F4
	db	$8E, $C6, $08, $0D
	db	$39, $36, $84, $07
	db	$5F, $0D, $59, $4A
	db	$2A, $FC, $32, $39
	db	$40, $04, $80, $08
	db	$10, $01, $20, $02
	db	$C6, $40, $8D, $2B
	db	$26, $0C, $DE, $CE
	db	$E6, $00, $5C, $27
	db	$05, $CE, $EB, $99
	db	$8D, $11, $C6, $08
	db	$8D, $19, $26, $16
	db	$DE, $CE, $E6, $02
	db	$C1, $F0, $24, $0E
	db	$CE, $EB, $9D, $96
	db	$CD, $BD, $EE, $FF
	db	$A6, $00, $9A, $60
	db	$97, $60, $39, $96
	db	$CD, $CE, $00, $5C
	db	$BD, $EE, $FF, $E5
	db	$00, $39, $D6, $CA
	db	$26, $3D, $73, $00
	db	$CA, $D6, $D0, $27
	db	$36, $7A, $00, $D0
	db	$26, $31, $36, $B6
	db	$E0, $5F, $BD, $F1
	db	$5B, $B6, $E0, $60
	db	$BD, $F1, $5B, $32
	db	$39, $36, $17, $20
	db	$03, $36, $84, $07
	db	$BD, $EC, $FC, $32
	db	$36, $37, $7A, $00
	db	$D7, $DF, $D8, $BD
	db	$E0, $A3, $8D, $CA
	db	$8D, $0A, $8D, $8C
	db	$BD, $EC, $AC, $DE
	db	$D8, $33, $32, $39
	db	$DE, $CE, $EE, $00
	db	$DF, $DE, $DE, $CE
	db	$C6, $04, $D7, $D6
	db	$D7, $A0, $97, $A2
	db	$5F, $D7, $A3, $D7
	db	$A1, $16, $C4, $07
	db	$26, $27, $5C, $D7
	db	$9E, $D6, $A2, $54
	db	$54, $54, $8D, $45
	db	$9B, $9E, $8D, $3A
	db	$5A, $26, $F9, $D6
	db	$A1, $27, $26, $A7
	db	$03, $09, $7A, $00
	db	$A0, $27, $2A, $8D
	db	$30, $7F, $00, $A1
	db	$1B, $8D, $23, $20
	db	$EA, $5A, $26, $06
	db	$C6, $10, $D7, $9E
	db	$20, $D3, $8D, $1D
	db	$A7, $03, $7A, $00
	db	$A0, $09, $5A, $20
	db	$C3, $D6, $A3, $27
	db	$06, $81, $10, $24
	db	$02, $8B, $F0, $A7
	db	$03, $39, $19, $24
	db	$03, $7C, $00, $A1
	db	$39, $A6, $03, $4C
	db	$27, $07, $4A, $81
	db	$F0, $25, $05, $8B
	db	$10, $7C, $00, $A3
	db	$39, $36, $37, $16
	db	$C4, $07, $CE, $11
	db	$30, $09, $5A, $2A
	db	$FC, $44, $44, $44
	db	$AB, $00, $A7, $00
	db	$33, $32, $39, $CE
	db	$00, $DE, $8D, $33
	db	$D7, $DE, $DE, $CE
	db	$8D, $2D, $86, $04
	db	$97, $DF, $CE, $01
	db	$83, $BD, $EF, $53
	db	$11, $22, $1A, $91
	db	$DE, $23, $16, $DF
	db	$AA, $86, $04, $90
	db	$DF, $48, $48, $CE
	db	$01, $52, $BD, $EE
	db	$FF, $BD, $F7, $7F
	db	$DE, $AA, $BD, $F6
	db	$BF, $7A, $00, $DF
	db	$26, $DB, $39, $A6
	db	$00, $E6, $01, $8D
	db	$04, $8D, $07, $1B
	db	$16, $2A, $02, $CB
	db	$10, $39, $48, $48
	db	$48, $48, $54, $54
	db	$54, $54, $39, $37
	db	$C6, $01, $8D, $02
	db	$33, $39, $DF, $AA
	db	$36, $37, $D6, $C1
	db	$27, $1C, $16, $48
	db	$1B, $FE, $E0, $53
	db	$BD, $EE, $FF, $A6
	db	$02, $4C, $26, $02
	db	$EE, $00, $A6, $00
	db	$D6, $BA, $C5, $40
	db	$26, $08, $8D, $1D
	db	$25, $04, $33, $32
	db	$20, $2A, $4D, $2A
	db	$6B, $D6, $C6, $27
	db	$06, $D6, $C5, $8D
	db	$0C, $25, $61, $97
	db	$C5, $33, $32, $97
	db	$C7, $D7, $C6, $20
	db	$59, $36, $37, $84
	db	$0F, $C4, $0F, $11
	db	$33, $32, $26, $05
	db	$C5, $20, $26, $01
	db	$0D, $39, $DF, $AA
	db	$36, $37, $D7, $B8
	db	$16, $86, $7F, $8D
	db	$42, $17, $97, $C2
	db	$48, $1B, $FE, $E0
	db	$53, $BD, $EE, $FF
	db	$A6, $02, $81, $FF
	db	$27, $19, $E6, $00
	db	$C4, $7F, $D7, $BA
	db	$E6, $01, $D7, $BE
	db	$7F, $00, $BD, $DE
	db	$BD, $DF, $BF, $C6
	db	$40, $D7, $C1, $8D
	db	$18, $20, $11, $EE
	db	$00, $C6, $80, $D7
	db	$C1, $EA, $00, $D7
	db	$BA, $08, $DF, $BF
	db	$DF, $BB, $8D, $0E
	db	$33, $32, $DE, $AA
	db	$39, $97, $B9, $BD
	db	$E0, $A1, $B7, $21
	db	$00, $39, $DE, $BB
	db	$A6, $00, $16, $C4
	db	$C0, $27, $21, $2B
	db	$12, $84, $3F, $97
	db	$C3, $08, $A6, $00
	db	$97, $C4, $96, $BA
	db	$84, $EF, $97, $BA
	db	$08, $20, $E5, $7F
	db	$00, $C3, $84, $7F
	db	$26, $EE, $96, $BA
	db	$8A, $10, $20, $EE
	db	$8D, $CB, $08, $DF
	db	$BB, $A6, $00, $81
	db	$3F, $26, $06, $96
	db	$BA, $84, $7F, $97
	db	$BA, $DE, $C3, $DF
	db	$BD, $39, $36, $B6
	db	$E0, $4D, $91, $A5
	db	$23, $12, $C5, $40
	db	$26, $05, $7D, $00
	db	$C8, $26, $09, $C5
	db	$20, $26, $06, $7D
	db	$00, $C9, $27, $01
	db	$0D, $32, $39, $BD
	db	$EE, $F7, $E6, $00
	db	$96, $A4, $95, $A2
	db	$27, $06, $C5, $08
	db	$27, $2D, $20, $04
	db	$C5, $10, $27, $27
	db	$8D, $CC, $25, $23
	db	$4F, $C5, $40, $27
	db	$02, $8A, $04, $97
	db	$AA, $96, $A5, $EE
	db	$01, $C5, $07, $26
	db	$02, $EE, $02, $5D
	db	$2A, $05, $DF, $A6
	db	$CE, $F3, $CB, $BD
	db	$E0, $9F, $BD, $EA
	db	$78, $25, $69, $DE
	db	$A0, $96, $A2, $A8
	db	$61, $A7, $61, $DE
	db	$A0, $D6, $A2, $53
	db	$17, $E4, $69, $E7
	db	$69, $16, $E4, $71
	db	$E7, $71, $16, $A4
	db	$79, $A7, $79, $E4
	db	$81, $E7, $81, $39
	db	$DF, $A0, $E6, $61
	db	$D7, $A4, $97, $A3
	db	$8D, $2D, $25, $28
	db	$8D, $3C, $8D, $6A
	db	$27, $1D, $9B, $AC
	db	$DE, $96, $8C, $11
	db	$18, $27, $ED, $A7
	db	$00, $96, $A5, $A7
	db	$01, $08, $08, $DF
	db	$96, $DE, $A0, $A6
	db	$81, $9A, $A2, $A7
	db	$81, $20, $D9, $BD
	db	$EE, $04, $20, $D4
	db	$DE, $A0, $39, $4F
	db	$0D, $D6, $A3, $27
	db	$0C, $49, $95, $A3
	db	$27, $FB, $97, $A2
	db	$98, $A3, $97, $A3
	db	$0C, $39, $96, $A1
	db	$48, $48, $48, $D6
	db	$A2, $56, $25, $03
	db	$4C, $20, $FA, $97
	db	$A5, $39, $97, $A3
	db	$DF, $A0, $8D, $D7
	db	$25, $D2, $8D, $E6
	db	$CE, $11, $00, $9C
	db	$96, $27, $F3, $A1
	db	$01, $26, $07, $8D
	db	$3D, $BD, $EE, $48
	db	$20, $E8, $08, $08
	db	$20, $ED, $8D, $1A
	db	$A6, $00, $84, $07
	db	$27, $08, $48, $CE
	db	$E0, $67, $8D, $16
	db	$20, $02, $EE, $01
	db	$96, $A4, $94, $A2
	db	$27, $01, $08, $A6
	db	$00, $39, $96, $A5
	db	$16, $48, $1B, $FE
	db	$E0, $51, $36, $DF
	db	$A6, $9B, $A7, $97
	db	$A7, $24, $03, $7C
	db	$00, $A6, $DE, $A6
	db	$32, $39, $DF, $A6
	db	$DE, $96, $09, $09
	db	$DF, $96, $A6, $00
	db	$E6, $01, $DE, $A6
	db	$A7, $00, $E7, $01
	db	$39, $F6, $E0, $4B
	db	$CE, $11, $A8, $DF
	db	$AF, $DF, $9C, $96
	db	$9D, $8B, $12, $A7
	db	$01, $86, $00, $99
	db	$9C, $A7, $00, $5A
	db	$27, $04, $EE, $00
	db	$20, $EB, $E7, $00
	db	$E7, $01, $D7, $AD
	db	$D7, $AE, $CE, $00
	db	$AD, $DF, $B3, $39
	db	$36, $17, $8D, $AE
	db	$32, $39, $37, $A6
	db	$00, $E6, $01, $08
	db	$08, $C4, $0F, $48
	db	$48, $48, $48, $1B
	db	$33, $39, $36, $8D
	db	$ED, $16, $32, $39
	db	$36, $17, $8D, $42
	db	$32, $39, $CE, $00
	db	$66, $20, $03, $CE
	db	$01, $00, $6F, $FF
	db	$09, $26, $FB, $39
	db	$8D, $F5, $CE, $01
	db	$7D, $DF, $9A, $CE
	db	$E0, $03, $C6, $18
	db	$8D, $59, $C6, $01
	db	$B6, $21, $00, $2A
	db	$01, $5C, $8D, $3B
	db	$8D, $06, $CE, $FC
	db	$A3, $7E, $EA, $C4
	db	$4F, $BD, $FB, $24
	db	$CE, $01, $81, $8D
	db	$AD, $16, $BD, $EC
	db	$F3, $CE, $01, $66
	db	$8D, $BA, $36, $A7
	db	$01, $44, $44, $44
	db	$44, $A7, $00, $08
	db	$08, $32, $39, $36
	db	$A6, $00, $08, $DF
	db	$9C, $DE, $9A, $A7
	db	$00, $08, $DF, $9A
	db	$DE, $9C, $5A, $26
	db	$EF, $32, $39, $F7
	db	$01, $AE, $CE, $01
	db	$AF, $DF, $9A, $58
	db	$17, $48, $1B, $CE
	db	$E0, $15, $BD, $EE
	db	$FF, $C6, $06, $36
	db	$A6, $00, $08, $DF
	db	$9C, $DE, $9A, $8D
	db	$C1, $DF, $9A, $DE
	db	$9C, $5A, $26, $F0
	db	$32, $39, $86, $FF
	db	$D6, $89, $56, $25
	db	$31, $7C, $00
