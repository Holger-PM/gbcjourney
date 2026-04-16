PhysicalToSpecialMoves:
; Flying
        db GUST
; Poison
		db POISON_GAS
		db SMOG
        db ACID
        db SLUDGE
; Normal
        db HYPER_BEAM
        db RAZOR_WIND
        db SWIFT
   ;    db TRI_ATTACK
        db -1 ; end

SpecialToPhysicalMoves:
; Fire
        db FIRE_PUNCH
; Water
        db CLAMP
        db CRABHAMMER
        db WATERFALL
; Grass
        db RAZOR_LEAF
        db VINE_WHIP
; Electric
        db THUNDERPUNCH
; Ice
        db ICE_PUNCH
; Dragon
        db SLAM
        db -1 ; end