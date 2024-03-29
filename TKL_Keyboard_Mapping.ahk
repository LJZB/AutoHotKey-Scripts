; This script enables you to overlay a numpad on your 60% (English layout) keyboard as shown below.
; |-----------------------|        |------------------------|
; | [7] [8] [9] [0]       |  ----> | [7] [8] [9] [/]        |
; |  [u] [i] [o] [p]      |  ----> |  [4] [5] [6] [*]       |
; |   [j] [k] [l] [;] ['] |  ----> |   [1] [2] [3] [+] [-]  |
; |    [m] [,] [.]        |  ----> |    [0] [,] [.]         |
; |-----------------------|        |------------------------|

; For future versions of the script, these are the unicodes for special Spanish characters.
; At least three modifier keys are needed for a 60% keyboard with English layout:
; One for the Numpad, one for the lowercase letters and one for the uppercase letters.

; á = U+00E1 | é = U+00E9 | í = U+00ED | ó = U+00F3 | ú = U+00FA | ü = U+00FC | ñ = U+00F1 | ¿ = U+00BF | ¡ = U+00A1
; Á = U+00C1 | É = U+00C9 | Í = U+00CD | Ó = U+00D3 | Ú = U+00DA | Ü = U+00DC | Ñ = U+00D1
; <! 	== LAlt
; >! 	== RAlt
; >+ 	== RShift
; <+ 	== LShift
; <^>! 	== AltGr
; <^	== LCtrl
; >^	== RCtrl
;------------------------------------ NumPad ------------------------------------
; Use LAlt as a modifier. i.e 'LAlt + remapped key' = numpad input
; It will always use numpad input when the left alt modifier is held down.
<!j::send		{Numpad1}				;1
<!k::send		{Numpad2}				;2
<!l::send		{Numpad3}   			;3
<!u::send		{Numpad4}   			;4
<!i::send		{Numpad5}   			;5
<!o::send		{Numpad6}   			;6
<!7::send		{Numpad7}   			;7
<!8::send		{Numpad8}   			;8
<!9::send		{Numpad9}   			;9
<!m::send		{Numpad0}   		 	;0
<!0::send		{NumpadDiv}				;/
<!p::send		{NumpadMult}			;*
<!SC027::send	{NumpadSub}				;-
<!-::send	    {NumpadAdd}			    ;+
<!.::send		{NumpadDot}				;.
<!,::send		{,}				        ;,
;----------------------------------------------- Shortcuts For Portuguese -----------------------------------------------
<^<!c::send     {U+00E7}	            ;LCtrl + LAlt + c = ç
<^<!<+c::send   {U+00C7}				;LCtrl + LAlt + LShift + c = Ç
return
