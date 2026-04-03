	db DEX_DUGTRIO    ; Pokedex ID

; --- Base Stats ---
    db  35            ; HP
    db  90            ; Attack
    db  50            ; Defense
    db 120            ; Speed
    db  70            ; Special

; --- Types & Training ---
    db GROUND         ; Type 1
    db GROUND         ; Type 2
    db  50            ; Catch rate
    db 153            ; Base exp yield

; --- Graphics ---
IF GEN_2_GRAPHICS
    INCBIN "gfx/pokemon/gsfront/dugtrio.pic", 0, 1 ; Sprite dimensions
ELSE
    INCBIN "gfx/pokemon/front/dugtrio.pic", 0, 1   ; Sprite dimensions
ENDC
    dw DugtrioPicFront, DugtrioPicBack

; --- Moves & Growth ---
    db SCRATCH, NO_MOVE, NO_MOVE, NO_MOVE          ; Level 1 learnset
    db GROWTH_MEDIUM_FAST                          ; Growth rate

; --- TM/HM Learnset ---
    tmhm \
    TOXIC,        \
    BODY_SLAM,    \
    TAKE_DOWN,    \
    DOUBLE_EDGE,  \
    HYPER_BEAM,   \
    RAGE,         \
    EARTHQUAKE,   \
    FISSURE,      \
    DIG,          \
    MIMIC,        \
    DOUBLE_TEAM,  \
    REST,         \
    ROCK_SLIDE,   \
    SUBSTITUTE,   \
    CUT,          \
    TRI_ATTACK
; end

    db BANK(DugtrioPicFront)
