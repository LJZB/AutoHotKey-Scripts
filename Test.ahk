; Spanish characters for an English layout keyboard. The RAlt key must be pressed, then the required vowel with the accent.

; á = {U+00E1} | é = {U+00E9} | í = {U+00ED} | ó = {U+00F3} | ú = {U+00FA} | ü = {U+00FC} | ñ = {U+00F1} | ¿ = {U+00BF} | ¡ = {U+00A1}
; Á = {U+00C1} | É = {U+00C9} | Í = {U+00CD} | Ó = {U+00D3} | Ú = {U+00DA} | Ü = {U+00DC} | Ñ = {U+00D1}
RAlt::
    Input, key, L1,, a,e,i,o,u
;---------------------------------------------------------- áÁ ----------------------------------------------------------
    if (key = "a") && (GetKeyState("CapsLock", "T") = 0) && (GetKeyState("Shift", "P") = 0)
    {
        Send {U+00E1} ;á
        return
    }
    else if (key = "a") && (GetKeyState("CapsLock", "T") = 1) 
    {
        Send {U+00C1} ;Á
        return
    }
    else if (key = "a") && (GetKeyState("Shift", "P") = 1)
    {
        Send {U+00C1} ;Á
        return
    }
; ---------------------------------------------------------- éÉ ----------------------------------------------------------
    if (key = "e") && (GetKeyState("CapsLock", "T") = 0) && (GetKeyState("Shift", "P") = 0)
    {
        Send {U+00E9} ;é
        return
    }
    else if (key = "e") && (GetKeyState("CapsLock", "T") = 1)
    {
        Send {U+00C9} ;É
        return
    }
    else if (key = "e") && (GetKeyState("Shift", "P") = 1)
    {
        Send {U+00C9} ;É
        return
    }
; ---------------------------------------------------------- íÍ -----------------------------------------------------------
    if (key = "i") && (GetKeyState("CapsLock", "T") = 0) && (GetKeyState("Shift", "P") = 0)
    {
        Send {U+00ED} ;í
        return
    }
    else if (key = "i") && (GetKeyState("CapsLock", "T") = 1)
    {
        Send {U+00CD} ;Í
        return
    }
    else if (key = "i") && (GetKeyState("Shift", "P") = 1)
    {
        Send {U+00CD} ;Í
        return
    }
; ---------------------------------------------------------- óÓ ----------------------------------------------------------
    if (key = "o") && (GetKeyState("CapsLock", "T") = 0) && (GetKeyState("Shift", "P") = 0)
    {
        Send {U+00F3} ;ó
        return
    }
    else if (key = "o") && (GetKeyState("CapsLock", "T") = 1)
    {
        Send {U+00D3} ;Ó 
        return
    }
    else if (key = "o") && (GetKeyState("Shift", "P") = 1)
    {
        Send {U+00D3} ;Ó
        return
    }
; ---------------------------------------------------------- úÚ ----------------------------------------------------------
    if (key = "u") && (GetKeyState("CapsLock", "T") = 0) && (GetKeyState("Shift", "P") = 0)
    {
        Send {U+00FA} ;ú
        return
    }
    else if (key = "u") && (GetKeyState("CapsLock", "T") = 1)
    {
        Send {U+00DA} ;Ú
        return
    }
    else if (key = "u") && (GetKeyState("Shift", "P") = 1)
    {
        Send {U+00DA} ;Ú
        return
    }
; ---------------------------------------------------------- ñÑ ----------------------------------------------------------
    if (key = "n") && (GetKeyState("CapsLock", "T") = 0) && (GetKeyState("Shift", "P") = 0)
        {
            Send {U+00F1} ;ñ
            return
        }
        else if (key = "n") && (GetKeyState("CapsLock", "T") = 1)
        {
            Send {U+00D1} ;Ñ
            return
        }
        else if (key = "n") && (GetKeyState("Shift", "P") = 1)
        {
            Send {U+00D1} ;Ñ
            return
        }
; ---------------------------------------------------------- çÇ ----------------------------------------------------------
if (key = "c") && (GetKeyState("CapsLock", "T") = 0) && (GetKeyState("Shift", "P") = 0)
    {
        Send {U+00E7} ;ç
        return
    }
    else if (key = "c") && (GetKeyState("CapsLock", "T") = 1)
    {
        Send {U+00C7} ;Ç
        return
    }
    else if (key = "c") && (GetKeyState("Shift", "P") = 1)
    {
        Send {U+00C7} ;Ç
        return
    }