; This script allows you to send keyboard inputs with a single shortcut
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

Persistent
MyPath := "C:\Users\VIRTUAL\OneDrive - VIRTUALSOFT SERVICIOS & SOFTWARE S.A.S\Analista QA\Proyectos\Cypress"

virtualSoftPass := IniRead("C:\Users\Luis Zuluaga\pass.ini", "VirtualSoft","key")
; luiszuluaga90Pass := IniRead("C:\Users\Luis Zuluaga\pass.ini", "luiszuluaga90","key")

<!1::Send		"luis.zuluaga@virtualsoft.tech"				                ;LALT + 1
<!2::Send       virtualSoftPass                                             ;LALT + 2
<!3::Send		"luiszuluaga90@gmail.com"				                    ;LALT + 3
<!F5::Send      "{Media_Prev}"                                              ;LALT + Left
<!F6::Send      "{Media_Play_Pause}"                                        ;LALT + Space
<!F7::Send      "{Media_Next}"                                              ;LALT + Right
<!Delete::Send  "{Volume_Mute}"                                             ;LALT + Delete

<!j::                                                                       ;LALT + j
{
    Run ("C:\Users\VIRTUAL\apache-jmeter-5.6.3\bin\ApacheJMeter.jar -j"
         "C:\Users\VIRTUAL\apache-jmeter-5.6.3\jmeter.log")
}

;Este atajo para ejecutar Cypress aún tiene problemas, la aplicación no se ejecuta
; <!c::
; {
;     Run         "powershell.exe"
;     Sleep       1000
;     Send        '{Raw}cd "C:\Users\VIRTUAL\OneDrive - VIRTUALSOFT SERVICIOS & SOFTWARE S.A.S\Analista QA\Proyectos\Cypress" '
;     Send        "{ENTER}"
;     Sleep       1000
;     Send        " npx cypress open"
;     Send        "{ENTER}"
; }

<!f::
{
    TimeString := FormatTime("R","MMMM_d_yyyy_HH_mm_ss tt")
    Send        TimeString
}

return
