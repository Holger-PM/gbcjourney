	db DEX_BULBASAUR  ; Pokedex ID

; --- Base Stats ---
    db 45             ; HP
    db 49             ; Attack
    db 49             ; Defense
    db 45             ; Speed
    db 65             ; Special

; --- Types & Training ---
    db GRASS          ; Type 1
    db POISON         ; Type 2
    db 45             ; Catch rate
    db 64             ; Base exp yield

; --- Graphics ---
IF GEN_2_GRAPHICS
    INCBIN "gfx/pokemon/gsfront/bulbasaur.pic", 0, 1 ; Sprite dimensions
ELSE
    INCBIN "gfx/pokemon/front/bulbasaur.pic", 0, 1   ; Sprite dimensions
ENDC
    dw BulbasaurPicFront, BulbasaurPicBack

; --- Moves & Growth ---
    db TACKLE, GROWL, NO_MOVE, NO_MOVE               ; Level 1 learnset
    db GROWTH_MEDIUM_SLOW                            ; Growth rate

; --- TM/HM Learnset ---
    tmhm \
    SWORDS_DANCE, \
    TOXIC,        \
    BODY_SLAM,    \
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

    db BANK(BulbasaurPicFront)