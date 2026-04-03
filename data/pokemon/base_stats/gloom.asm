	db DEX_GLOOM      ; Pokedex ID
 
; --- Base Stats ---
    db  70            ; HP
    db  65            ; Attack
    db  70            ; Defense
    db  40            ; Speed
    db  85            ; Special

; --- Types & Training ---
    db GRASS          ; Type 1
    db POISON         ; Type 2
    db 120            ; Catch rate
    db 132            ; Base exp yield

; --- Graphics ---
IF GEN_2_GRAPHICS
    INCBIN "gfx/pokemon/gsfront/gloom.pic", 0, 1 ; Sprite dimensions
ELSE
    INCBIN "gfx/pokemon/front/gloom.pic", 0, 1   ; Sprite dimensions
ENDC
    dw GloomPicFront, GloomPicBack

; --- Moves & Growth ---
    db TACKLE, STUN_SPORE, NO_MOVE, NO_MOVE        ; Level 1 learnset
    db GROWTH_MEDIUM_SLOW                          ; Growth rate

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

    db BANK(GloomPicFront)
