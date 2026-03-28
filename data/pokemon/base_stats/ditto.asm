	db DEX_DITTO      ; Pokedex ID

; --- Base Stats ---
    db 48             ; HP
    db 48             ; Attack
    db 48             ; Defense
    db 48             ; Speed
    db 48             ; Special

; --- Types & Training ---
    db NORMAL         ; Type 1
    db NORMAL         ; Type 2
    db 35             ; Catch rate
    db 61             ; Base exp yield

; --- Graphics ---
IF GEN_2_GRAPHICS
    INCBIN "gfx/pokemon/gsfront/ditto.pic", 0, 1 ; Sprite dimensions
ELSE
    INCBIN "gfx/pokemon/front/ditto.pic", 0, 1   ; Sprite dimensions
ENDC
    dw DittoPicFront, DittoPicBack

; --- Moves & Growth ---
    db TRANSFORM, NO_MOVE, NO_MOVE, NO_MOVE        ; Level 1 learnset
    db GROWTH_MEDIUM_FAST                          ; Growth rate

; --- TM/HM Learnset ---
    tmhm
; end

    db BANK(DittoPicFront)