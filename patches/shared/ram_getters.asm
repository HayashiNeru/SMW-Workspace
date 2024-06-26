@asar 1.90

includeonce

incsrc "shared.asm"

; Gets the RAM address corresponding to the supplied X and Y status bar coordinates
; or $00, if the status bar coordinate doesn’t have a corresponding address.
; ==========================================================================
; TODO: Add support for Super Status Bar
function get_status_ram(X, Y) = remap_ram(\
	select(and(equal(Y,$2),and(greaterequal(X,$2),less(X,$1E))),X-$2+$0EF9,\	; if (y == $2 && x >= $2 && x < $1E) return X-$2+$0EF9;
	select(and(equal(Y,$3),and(greaterequal(X,$3),less(X,$1E))),X-$3+$0F15,\	; if (y == $3 && x >= $3 && x < $1E) return X-$3+$0F15;
$0)))
