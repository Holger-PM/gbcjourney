	db DEX_DIGLETT    ; Pokedex ID

; --- Base Stats ---
    db 10             ; HP
    db 70             ; Attack
    db 25             ; Defense
    db 95             ; Speed
    db 45             ; Special

; --- Types & Training ---
    db GROUND         ; Type 1
    db GROUND         ; Type 2
    db 255            ; Catch rate
    db 81             ; Base exp yield

; --- Graphics ---
IF GEN_2_GRAPHICS
    INCBIN "gfx/pokemon/gsfront/diglett.pic", 0, 1 ; Sprite dimensions
ELSE
    INCBIN "gfx/pokemon/front/diglett.pic", 0, 1   ; Sprite dimensions
ENDC
    dw DiglettPicFront, DiglettPicBack

; --- Moves & Growth ---
    db SCRATCH, NO_MOVE, NO_MOVE, NO_MOVE          ; Level 1 learnset
    db GROWTH_MEDIUM_FAST                          ; Growth rate

; --- TM/HM Learnset ---
    tmhm \
    TOXIC,        \
    BODY_SLAM,    \
    TAKE_DOWN,    \
    DOUBLE_EDGE,  \
    RAGE,         \
    EARTHQUAKE,   \
    FISSURE,      \
    DIG,          \
    MIMIC,        \
    DOUBLE_TEAM,  \
    BIDE,         \
    REST,         \
    ROCK_SLIDE,   \
    SUBSTITUTE,   \
    CUT
; end

    db BANK(DiglettPicFront)