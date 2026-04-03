	db DEX_BELLSPROUT ; Pokedex ID

; --- Base Stats ---
    db 50             ; HP
    db 75             ; Attack
    db 35             ; Defense
    db 40             ; Speed
    db 70             ; Special

; --- Types & Training ---
    db GRASS          ; Type 1
    db POISON         ; Type 2
    db 255            ; Catch rate
    db 84             ; Base exp yield

; --- Graphics ---
IF GEN_2_GRAPHICS
    INCBIN "gfx/pokemon/gsfront/bellsprout.pic", 0, 1 ; Sprite dimensions
ELSE
    INCBIN "gfx/pokemon/front/bellsprout.pic", 0, 1   ; Sprite dimensions
ENDC
    dw BellsproutPicFront, BellsproutPicBack

; --- Moves & Growth ---
    db VINE_WHIP, NO_MOVE, NO_MOVE, NO_MOVE            ; Level 1 learnset
    db GROWTH_MEDIUM_SLOW                             ; Growth rate

; --- TM/HM Learnset ---
    tmhm \
    SWORDS_DANCE, \
    TOXIC,        \
    TAKE_DOWN,    \
    DOUBLE_EDGE,  \
    RAGE,         \
    MEGA_DRAIN,   \
    SOLARBEAM,    \
    MIMIC,        \
    DOUBLE_TEAM,  \
    REFLECT,      \
    REST,         \
    SUBSTITUTE,   \
    CUT
; end

    db BANK(BellsproutPicFront)
