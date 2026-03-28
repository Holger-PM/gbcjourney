	db DEX_KAKUNA     ; Pokedex ID

; --- Base Stats ---
    db  45            ; HP
    db  25            ; Attack
    db  50            ; Defense
    db  35            ; Speed
    db  25            ; Special

; --- Types & Training ---
    db BUG            ; Type 1
    db POISON         ; Type 2
    db 120            ; Catch rate
    db  71            ; Base exp yield

; --- Graphics ---
IF GEN_2_GRAPHICS
    INCBIN "gfx/pokemon/gsfront/kakuna.pic", 0, 1 ; Sprite dimensions
ELSE
    INCBIN "gfx/pokemon/front/kakuna.pic", 0, 1   ; Sprite dimensions
ENDC
    dw KakunaPicFront, KakunaPicBack

; --- Moves & Growth ---
    db POISON_STING, STRING_SHOT, HARDEN, NO_MOVE  ; Level 1 learnset
    db GROWTH_MEDIUM_FAST                          ; Growth rate

; --- TM/HM Learnset ---
    tmhm
; end

    db BANK(KakunaPicFront)
