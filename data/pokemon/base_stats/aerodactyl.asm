db DEX_AERODACTYL ; Pokedex ID

; --- Base Stats ---
    db 80             ; HP
    db 105            ; Attack
    db 65             ; Defense
    db 130            ; Speed
    db 60             ; Special

; --- Types & Training ---
    db ROCK           ; Type 1
    db FLYING         ; Type 2
    db 45             ; Catch rate
    db 202            ; Base exp yield

; --- Graphics ---
IF GEN_2_GRAPHICS
    INCBIN "gfx/pokemon/gsfront/aerodactyl.pic", 0, 1 ; Sprite dimensions
ELSE
    INCBIN "gfx/pokemon/front/aerodactyl.pic", 0, 1   ; Sprite dimensions
ENDC
    dw AerodactylPicFront, AerodactylPicBack

; --- Moves & Growth ---
    db WING_ATTACK, AGILITY, NO_MOVE, NO_MOVE         ; Level 1 learnset
    db GROWTH_SLOW                                    ; Growth rate

; --- TM/HM Learnset ---
    tmhm \
    RAZOR_WIND,   \
    TOXIC,        \
    TAKE_DOWN,    \
    DOUBLE_EDGE,  \
    ROCK_SLIDE,   \
    HYPER_BEAM,   \
    RAGE,         \
    DRAGON_RAGE,  \
    EARTHQUAKE,   \
    MIMIC,        \
    DOUBLE_TEAM,  \
    REFLECT,      \
    BIDE,         \
    FIRE_BLAST,   \
    SWIFT,        \
    SKY_ATTACK,   \
    REST,         \
    SUBSTITUTE,   \
    FLY,          \
    FLAMETHROWER
; end

    db BANK(AerodactylPicFront)
