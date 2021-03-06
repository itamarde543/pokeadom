Route15Script: ; 597ae (16:57ae)
	call EnableAutoTextBoxDrawing
	ld hl, Route15TrainerHeaders
	ld de, Route15ScriptPointers
	ld a, [W_ROUTE15CURSCRIPT]
	call ExecuteCurMapScriptInTable
	ld [W_ROUTE15CURSCRIPT], a
	ret

Route15ScriptPointers: ; 597c1 (16:57c1)
	dw CheckFightingMapTrainers
	dw Func_324c
	dw EndTrainerBattle

Route15TextPointers: ; 597c7 (16:57c7)
	dw Route15Text1
	dw Route15Text2
	dw Route15Text3
	dw Route15Text4
	dw Route15Text5
	dw Route15Text6
	dw Route15Text7
	dw Route15Text8
	dw Route15Text9
	dw Route15Text10
	dw Predef5CText
	dw Route15Text12

Route15TrainerHeaders: ; 597df (16:57df)
Route15TrainerHeader0: ; 597df (16:57df)
	db $1 ; flag's bit
	db ($2 << 4) ; trainer's view range
	dw wd7dd ; flag's byte
	dw Route15BattleText1 ; 0x5898 TextBeforeBattle
	dw Route15AfterBattleText1 ; 0x58a2 TextAfterBattle
	dw Route15EndBattleText1 ; 0x589d TextEndBattle
	dw Route15EndBattleText1 ; 0x589d TextEndBattle

Route15TrainerHeader1: ; 597eb (16:57eb)
	db $2 ; flag's bit
	db ($3 << 4) ; trainer's view range
	dw wd7dd ; flag's byte
	dw Route15BattleText2 ; 0x58a7 TextBeforeBattle
	dw Route15AfterBattleText2 ; 0x58b1 TextAfterBattle
	dw Route15EndBattleText2 ; 0x58ac TextEndBattle
	dw Route15EndBattleText2 ; 0x58ac TextEndBattle

Route15TrainerHeader2: ; 597f7 (16:57f7)
	db $3 ; flag's bit
	db ($3 << 4) ; trainer's view range
	dw wd7dd ; flag's byte
	dw Route15BattleText3 ; 0x58b6 TextBeforeBattle
	dw Route15AfterBattleText3 ; 0x58c0 TextAfterBattle
	dw Route15EndBattleText3 ; 0x58bb TextEndBattle
	dw Route15EndBattleText3 ; 0x58bb TextEndBattle

Route15TrainerHeader3: ; 59803 (16:5803)
	db $4 ; flag's bit
	db ($3 << 4) ; trainer's view range
	dw wd7dd ; flag's byte
	dw Route15BattleText4 ; 0x58c5 TextBeforeBattle
	dw Route15AfterBattleText4 ; 0x58cf TextAfterBattle
	dw Route15EndBattleText4 ; 0x58ca TextEndBattle
	dw Route15EndBattleText4 ; 0x58ca TextEndBattle

Route15TrainerHeader4: ; 5980f (16:580f)
	db $5 ; flag's bit
	db ($2 << 4) ; trainer's view range
	dw wd7dd ; flag's byte
	dw Route15BattleText5 ; 0x58d4 TextBeforeBattle
	dw Route15AfterBattleText5 ; 0x58de TextAfterBattle
	dw Route15EndBattleText5 ; 0x58d9 TextEndBattle
	dw Route15EndBattleText5 ; 0x58d9 TextEndBattle

Route15TrainerHeader5: ; 5981b (16:581b)
	db $6 ; flag's bit
	db ($3 << 4) ; trainer's view range
	dw wd7dd ; flag's byte
	dw Route15BattleText6 ; 0x58e3 TextBeforeBattle
	dw Route15AfterBattleText6 ; 0x58ed TextAfterBattle
	dw Route15EndBattleText6 ; 0x58e8 TextEndBattle
	dw Route15EndBattleText6 ; 0x58e8 TextEndBattle

Route15TrainerHeader6: ; 59827 (16:5827)
	db $7 ; flag's bit
	db ($3 << 4) ; trainer's view range
	dw wd7dd ; flag's byte
	dw Route15BattleText7 ; 0x58f2 TextBeforeBattle
	dw Route15AfterBattleText7 ; 0x58fc TextAfterBattle
	dw Route15EndBattleText7 ; 0x58f7 TextEndBattle
	dw Route15EndBattleText7 ; 0x58f7 TextEndBattle

Route15TrainerHeader7: ; 59833 (16:5833)
	db $8 ; flag's bit
	db ($3 << 4) ; trainer's view range
	dw wd7dd ; flag's byte
	dw Route15BattleText8 ; 0x5901 TextBeforeBattle
	dw Route15AfterBattleText8 ; 0x590b TextAfterBattle
	dw Route15EndBattleText8 ; 0x5906 TextEndBattle
	dw Route15EndBattleText8 ; 0x5906 TextEndBattle

Route15TrainerHeader8: ; 5983f (16:583f)
	db $9 ; flag's bit
	db ($3 << 4) ; trainer's view range
	dw wd7dd ; flag's byte
	dw Route15BattleText9 ; 0x5910 TextBeforeBattle
	dw Route15AfterBattleText9 ; 0x591a TextAfterBattle
	dw Route15EndBattleText9 ; 0x5915 TextEndBattle
	dw Route15EndBattleText9 ; 0x5915 TextEndBattle

Route15TrainerHeader9: ; 5984b (16:584b)
	db $a ; flag's bit
	db ($3 << 4) ; trainer's view range
	dw wd7dd ; flag's byte
	dw Route15BattleText10 ; 0x591f TextBeforeBattle
	dw Route15AfterBattleText10 ; 0x5929 TextAfterBattle
	dw Route15EndBattleText10 ; 0x5924 TextEndBattle
	dw Route15EndBattleText10 ; 0x5924 TextEndBattle

	db $ff

Route15Text1: ; 59858 (16:5858)
	db $8 ; asm
	ld hl, Route15TrainerHeader0
	jr asm_33cb7 ; 0x5985c $34

Route15Text2: ; 5985e (16:585e)
	db $8 ; asm
	ld hl, Route15TrainerHeader1
	jr asm_33cb7 ; 0x59862 $2e

Route15Text3: ; 59864 (16:5864)
	db $8 ; asm
	ld hl, Route15TrainerHeader2
	jr asm_33cb7 ; 0x59868 $28

Route15Text4: ; 5986a (16:586a)
	db $8 ; asm
	ld hl, Route15TrainerHeader3
	jr asm_33cb7 ; 0x5986e $22

Route15Text5: ; 59870 (16:5870)
	db $8 ; asm
	ld hl, Route15TrainerHeader4
	jr asm_33cb7 ; 0x59874 $1c

Route15Text6: ; 59876 (16:5876)
	db $8 ; asm
	ld hl, Route15TrainerHeader5
	jr asm_33cb7 ; 0x5987a $16

Route15Text7: ; 5987c (16:587c)
	db $8 ; asm
	ld hl, Route15TrainerHeader6
	jr asm_33cb7 ; 0x59880 $10

Route15Text8: ; 59882 (16:5882)
	db $8 ; asm
	ld hl, Route15TrainerHeader7
	jr asm_33cb7 ; 0x59886 $a

Route15Text9: ; 59888 (16:5888)
	db $8 ; asm
	ld hl, Route15TrainerHeader8
	jr asm_33cb7 ; 0x5988c $4

Route15Text10: ; 5988e (16:588e)
	db $8 ; asm
	ld hl, Route15TrainerHeader9
asm_33cb7: ; 59892 (16:5892)
	call TalkToTrainer
	jp TextScriptEnd

Route15BattleText1: ; 59898 (16:5898)
	TX_FAR _Route15BattleText1
	db "@"

Route15EndBattleText1: ; 5989d (16:589d)
	TX_FAR _Route15EndBattleText1
	db "@"

Route15AfterBattleText1: ; 598a2 (16:58a2)
	TX_FAR _Route15AfterBattleText1
	db "@"

Route15BattleText2: ; 598a7 (16:58a7)
	TX_FAR _Route15BattleText2
	db "@"

Route15EndBattleText2: ; 598ac (16:58ac)
	TX_FAR _Route15EndBattleText2
	db "@"

Route15AfterBattleText2: ; 598b1 (16:58b1)
	TX_FAR _Route15AfterBattleText2
	db "@"

Route15BattleText3: ; 598b6 (16:58b6)
	TX_FAR _Route15BattleText3
	db "@"

Route15EndBattleText3: ; 598bb (16:58bb)
	TX_FAR _Route15EndBattleText3
	db "@"

Route15AfterBattleText3: ; 598c0 (16:58c0)
	TX_FAR _Route15AfterBattleText3
	db "@"

Route15BattleText4: ; 598c5 (16:58c5)
	TX_FAR _Route15BattleText4
	db "@"

Route15EndBattleText4: ; 598ca (16:58ca)
	TX_FAR _Route15EndBattleText4
	db "@"

Route15AfterBattleText4: ; 598cf (16:58cf)
	TX_FAR _Route15AfterBattleText4
	db "@"

Route15BattleText5: ; 598d4 (16:58d4)
	TX_FAR _Route15BattleText5
	db "@"

Route15EndBattleText5: ; 598d9 (16:58d9)
	TX_FAR _Route15EndBattleText5
	db "@"

Route15AfterBattleText5: ; 598de (16:58de)
	TX_FAR _Route15AfterBattleText5
	db "@"

Route15BattleText6: ; 598e3 (16:58e3)
	TX_FAR _Route15BattleText6
	db "@"

Route15EndBattleText6: ; 598e8 (16:58e8)
	TX_FAR _Route15EndBattleText6
	db "@"

Route15AfterBattleText6: ; 598ed (16:58ed)
	TX_FAR _Route15AfterBattleText6
	db "@"

Route15BattleText7: ; 598f2 (16:58f2)
	TX_FAR _Route15BattleText7
	db "@"

Route15EndBattleText7: ; 598f7 (16:58f7)
	TX_FAR _Route15EndBattleText7
	db "@"

Route15AfterBattleText7: ; 598fc (16:58fc)
	TX_FAR _Route15AfterBattleText7
	db "@"

Route15BattleText8: ; 59901 (16:5901)
	TX_FAR _Route15BattleText8
	db "@"

Route15EndBattleText8: ; 59906 (16:5906)
	TX_FAR _Route15EndBattleText8
	db "@"

Route15AfterBattleText8: ; 5990b (16:590b)
	TX_FAR _Route15AfterBattleText8
	db "@"

Route15BattleText9: ; 59910 (16:5910)
	TX_FAR _Route15BattleText9
	db "@"

Route15EndBattleText9: ; 59915 (16:5915)
	TX_FAR _Route15EndBattleText9
	db "@"

Route15AfterBattleText9: ; 5991a (16:591a)
	TX_FAR _Route15AfterBattleText9
	db "@"

Route15BattleText10: ; 5991f (16:591f)
	TX_FAR _Route15BattleText10
	db "@"

Route15EndBattleText10: ; 59924 (16:5924)
	TX_FAR _Route15EndBattleText10
	db "@"

Route15AfterBattleText10: ; 59929 (16:5929)
	TX_FAR _Route15AfterBattleText10
	db "@"

Route15Text12: ; 5992e (16:592e)
	TX_FAR _Route15Text12
	db "@"
