	db DEX_HITMONCHAN ; Pokedex ID
 
; --- Base Stats ---
    db  60            ; HP
    db  50            ; Attack
    db  79            ; Defense
	db  76            ; Speed
    db 105            ; Special

; --- Types & Training ---
    db FIGHTING       ; Type 1
    db FIGHTING       ; Type 2
    db  45            ; Catch rate
    db 140            ; Base exp yield

; --- Graphics ---
IF GEN_2_GRAPHICS
    INCBIN "gfx/pokemon/gsfront/hitmonchan.pic", 0, 1 ; Sprite dimensions
ELSE
    INCBIN "gfx/pokemon/front/hitmonchan.pic", 0, 1   ; Sprite dimensions
ENDC
    dw HitmonchanPicFront, HitmonchanPicBack

; --- Moves & Growth ---
    db COMET_PUNCH, AGILITY, NO_MOVE, NO_MOVE      ; Level 1 learnset
    db GROWTH_MEDIUM_FAST                          ; Growth rate

; --- TM/HM Learnset ---
    tmhm \
    MEGA_PUNCH,   \
    MEGA_KICK,    \
    TOXIC,        \
    BODY_SLAM,    \
    TAKE_DOWN,    \
    DOUBLE_EDGE,  \
    SUBMISSION,   \
    COUNTER,      \
    SEISMIC_TOSS, \
    RAGE,         \
    MIMIC,        \
    DOUBLE_TEAM,  \
    METRONOME,    \
    SWIFT,        \
    SKULL_BASH,   \
    REST,         \
    SUBSTITUTE,   \
    STRENGTH,     \
    ROCK_SLIDE
; end

    db BANK(HitmonchanPicFront)
