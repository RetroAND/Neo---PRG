org $0100
    dc.b "NEO-GEO",$00

    dc.w $1234          ;NGH
    dc.l $00080000      ;P ROM size
    dc.l $00100000      ;debug DIPs pointer
    dc.w $01            ;size of DIP data
    dc.b $00            ;let the BIOS show the logo
    dc.b $1B            ;first tile of the logo is $1B00
    dc.l Config         ;Japanese config menu pointer
    dc.l Config         ;US config menu pointer
    dc.l Config         ;European config menu pointer

    jmp        USER
    jmp        PLAYER_START
    jmp        DEMO_END
    jmp        COIN_SOUND

    org $0182
    dc.l Code         ;code pointer
Code:
    dc.l $76004A6D,$0A146600,$003C206D,$0A043E2D
    dc.l $0A0813C0,$00300001,$32100C01,$00FF671A
    dc.l $30280002,$B02D0ACE,$66103028,$0004B02D
    dc.l $0ACF6606,$B22D0AD0,$67085088,$51CFFFD4
    dc.l $36074E75,$206D0A04,$3E2D0A08,$3210E049
    dc.l $0C0100FF,$671A3010,$B02D0ACE,$66123028
    dc.l $0002E048,$B02D0ACF,$6606B22D,$0AD06708
    dc.l $588851CF,$FFD83607
    dc.w $4e75

    ; Configuration menu layouts (soft DIPs)
 Config:
    dc.b    "___GAME__NAME___"                            ; Game name
    dc.b    $FF,$FF,$FF,$FF,$FF,$FF                       ; Special list
    dc.b    $24,$02,$00,$00,$00,$00,$00,$00,$00,$00       ; Option list
    dc.b    "LIVES       "
    dc.b    "1           "
    dc.b    "2           "
    dc.b    "3           "
    dc.b    "4           "
    dc.b    "HOW TO PLAY "
    dc.b    "WITH        "
    dc.b    "WITHOUT     "
