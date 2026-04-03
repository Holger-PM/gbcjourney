	db DEX_ARBOK      ; Pokedex ID

; --- Base Stats ---
    db 62             ; HP
    db 95             ; Attack
    db 69             ; Defense
    db 90             ; Speed
    db 65             ; Special

; --- Types & Training ---
	db POISON         ; Type 1
    db POISON         ; Type 2
    db 90             ; Catch rate
    db 147            ; Base exp yield

; --- Graphics ---
IF GEN_2_GRAPHICS
    INCBIN "gfx/pokemon/gsfront/arbok.pic", 0, 1 ; Sprite dimensions
ELSE
    INCBIN "gfx/pokemon/front/arbok.pic", 0, 1   ; Sprite dimensions
ENDC
    dw ArbokPicFront, ArbokPicBack

; --- Moves & Growth ---
    db POISON_STING, LEER, NO_MOVE, NO_MOVE      ; Level 1 learnset
    db GROWTH_MEDIUM_FAST                        ; Growth rate

; --- TM/HM Learnset ---
    tmhm \
    TOXIC,        \
    BODY_SLAM,    \
    TAKE_DOWN,    \
    DOUBLE_EDGE,  \
    HYPER_BEAM,   \
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

    db BANK(ArbokPicFront)
