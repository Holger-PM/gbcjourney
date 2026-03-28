	db DEX_IVYSAUR    ; Pokedex ID

; --- Base Stats ---
    db  60            ; HP
    db  62            ; Attack
    db  63            ; Defense
    db  60            ; Speed
    db  80            ; Special

; --- Types & Training ---
    db GRASS          ; Type 1
    db POISON         ; Type 2
    db  45            ; Catch rate
    db 141            ; Base exp yield

; --- Graphics ---
IF GEN_2_GRAPHICS
    INCBIN "gfx/pokemon/gsfront/ivysaur.pic", 0, 1 ; Sprite dimensions
ELSE
    INCBIN "gfx/pokemon/front/ivysaur.pic", 0, 1   ; Sprite dimensions
ENDC
    dw IvysaurPicFront, IvysaurPicBack

; --- Moves & Growth ---
    db TACKLE, GROWL, NO_MOVE, NO_MOVE             ; Level 1 learnset
    db GROWTH_MEDIUM_SLOW                          ; Growth rate

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
    BIDE,         \
    REST,         \
    SUBSTITUTE,   \
    CUT
; end

    db BANK(IvysaurPicFront)
