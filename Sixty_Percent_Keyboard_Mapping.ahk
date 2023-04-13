;Sixty_Percent_Keyboard_Mapping
;Version: v2.1
;Author: Luis J Zuluaga B
;Email: luiszuluaga90@gmail.com
; This script enables you to overlay a numpad on your 60% (English layout) keyboard as shown below.
; |-----------------------|        |------------------------|
; | [7] [8] [9] [0]       |  ----> | [7] [8] [9] [/]        |
; |  [u] [i] [o] [p]      |  ----> |  [4] [5] [6] [*]       |
; |   [j] [k] [l] [;] ['] |  ----> |   [1] [2] [3] [+] [-]  |
; |    [m] [,] [.]        |  ----> |    [0] [,] [.]         |
; |-----------------------|        |------------------------|
; á = U+00E1 | é = U+00E9 | í = U+00ED | ó = U+00F3 | ú = U+00FA | ü = U+00FC | ñ = U+00F1 | ¿ = U+00BF | ¡ = U+00A1
; Á = U+00C1 | É = U+00C9 | Í = U+00CD | Ó = U+00D3 | Ú = U+00DA | Ü = U+00DC | Ñ = U+00D1 |
; <! 	==	LAlt
; >! 	==	RAlt
; >+ 	==	RShift
; <+	==	LShift
; <^	==	LCtrl
; >^	==	RCtrl
#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.

;---------------------------------------------------------- á/Á ----------------------------------------------------------
CapsLock & a::
	if (GetKeyState("CapsLock","t") = 1) {
        Send {U+00E1} ;á
	}
	else{
		Send {U+00C1} ;Á
	}
return

; ---------------------------------------------------------- é/É ----------------------------------------------------------
CapsLock & e::
	if (GetKeyState("CapsLock","t") = 1){
		Send {U+00E9} ;é
	}
	else{
		Send {U+00C9} ;É
	}
return

; ---------------------------------------------------------- í/Í -----------------------------------------------------------
CapsLock & i::
	if (GetKeyState("CapsLock","t") = 1){
		Send {U+00ED} ;í
	}
	else
	{
		Send {U+00CD} ;Í
	}
return

; ---------------------------------------------------------- ó/Ó ----------------------------------------------------------
CapsLock & o::
	if (GetKeyState("CapsLock","t") = 1){
		Send {U+00F3} ;ó
	}
	else{
		Send {U+00D3} ;Ó
	}
return

; ---------------------------------------------------------- ú/Ú ----------------------------------------------------------
CapsLock & u::
	if (GetKeyState("CapsLock","t") = 1){
		Send {U+00FA} ;ú
	}
	else{
		Send {U+00DA} ;Ú
	}
return

; ---------------------------------------------------------- ü/Ü ----------------------------------------------------------
<+u::
	if (GetKeyState("CapsLock","t") = 0) 
	{
		Send {U+00FC} ;
	}
	else{
		Send {U+00DC}
	}
return
; 
; ---------------------------------------------------------- ñ/Ñ ----------------------------------------------------------
CapsLock & n::
	if (GetKeyState("CapsLock","t") = 1){
		Send {U+00F1}
	}
	else{
		Send {U+00D1}
	}
return
; ---------------------------------------------------------- ¿ ----------------------------------------------------------
CapsLock & ?::
	Send {U+00BF}
return

; ---------------------------------------------------------- ¡ ----------------------------------------------------------
CapsLock & !::
	Send {U+00A1}
return

; ------------------------------------------------------- NumPad -------------------------------------------------------
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
<!;::send	    {NumpadAdd}			    ;+
<!'::send		{NumpadSub}    		    ;-
<!p::send		{NumpadMult}			;*
<!0::send		{NumpadDiv}				;/
<!.::send		{NumpadDot}				;,
<!,::send		{,}				        ;,
