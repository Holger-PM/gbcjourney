	db DEX_EKANS      ; Pokedex ID

; --- Base Stats ---
    db  35            ; HP
    db  60            ; Attack
    db  44            ; Defense
    db  55            ; Speed
    db  40            ; Special

; --- Types & Training ---
    db POISON         ; Type 1
    db POISON         ; Type 2
    db 195 ; 255      ; Catch rate
    db  62            ; Base exp yield

; --- Graphics ---
IF GEN_2_GRAPHICS
    INCBIN "gfx/pokemon/gsfront/ekans.pic", 0, 1 ; Sprite dimensions
ELSE
    INCBIN "gfx/pokemon/front/ekans.pic", 0, 1   ; Sprite dimensions
ENDC
    dw EkansPicFront, EkansPicBack

; --- Moves & Growth ---
    db POISON_STING, LEER, NO_MOVE, NO_MOVE        ; Level 1 learnset
    db GROWTH_MEDIUM_FAST                          ; Growth rate

; --- TM/HM Learnset ---
    tmhm \
    TOXIC,        \
    BODY_SLAM,    \
    TAKE_DOWN,    \
    DOUBLE_EDGE,  \
    RAGE,         \
    MEGA_DRAIN,   \
    EARTHQUAKE,   \
    FISSURE,      \
    DIG,          \
    MIMIC,        \
    DOUBLE_TEAM,  \
    SKULL_BASH,   \
    REST,         \
    ROCK_SLIDE,   \
    SUBSTITUTE,   \
    STRENGTH
; end

    db BANK(EkansPicFront)
