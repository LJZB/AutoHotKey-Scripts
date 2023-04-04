<^c::                                       ; LeftControl + C: Convert text to upper
    Send, ^c                                ; Send Ctrl + C
    StringUpper Clipboard, Clipboard        ; Input variable: Clipboard. Output variable: Clipboard in uppercase. 
    Sendinput, ^v                           ; Send the Clipboard value
RETURN
