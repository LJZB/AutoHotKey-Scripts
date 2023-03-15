;Shortcut to emulate keyboard behaviour in Template creation
<!F12::				;LeftAlt + F12 to activate this function
    Send {TAB}		;Jump to next field
    Send {TAB}		;Jump to next field
    Send {TAB}		;Jump to next field
    
    sleep, 500			;Wait for 0.5 seconds, please release any pressed keys.
    Send  V1.2			;Version field
	
	Send {TAB}		;Jump to next field
	
	Sendinput, ^v	;Paste clipboard content, Version Name
	Send {TAB}		;Jump to next field
	
	Send  b1		;Version field
	Send {TAB}		;Jump to next field
	Send  a1		;Tab name
	Send {TAB}		;Jump to next field
	Send  c1		;Template name
	Send {TAB}		;Jump to next field
	Send {TAB}		;Jump to next field
	
	Send  3 		;Required Row field
	Send {TAB}		;Jump to next field
	Send  r			;Required Row Value
	Send {TAB}		;Jump to next field
	
	Send  3			;Unique Row field
	Send {TAB}		;Jump to next field
	Send  u			;Unique Row value
	Send {TAB}		;Jump to next field
	
	Send  5			;Datatype Row field
	Send {TAB}		;Jump to next field
	
	Send  7			;Data starts on row field
	Send {TAB}		;Jump to next field
	
	Send  2			;Column Headings start on field
	Send {TAB}		;Jump to next field
	Send {TAB}		;Jump to next field
	
	Sendinput, ^v	;Paste clipboard content, Label field
	Send {TAB}		;Jump to next field
	
	Send s			;Category field
	Send {TAB}		;Jump to next field
	
	Send p			;SubCategory field
	Send {TAB}		;Jump to next field
	
	Send {SPACE}	;Check submission template checkbox
return ;End of Function

;Shortcut to emulate keyboard behaviour in Submission profile creation
<!F11::				;LeftAlt + F11 to activate this function
	sleep, 500		;Wait for 0.5 seconds, please release any pressed keys.
	Send {TAB}		;Jump to next field
	Send {TAB}		;Jump to next field
	Send {TAB}		;Jump to next field
	Send {TAB}		;Jump to next field
	Send {TAB}		;Jump to next field

	Send _			;Provider field
	Send {TAB}		;Jump to next field

	Send l			;Contact field
	Send {TAB}		;Jump to next field

	Send p			;Class field
	Send {TAB}		;Jump to next field

	Sendinput, ^v	;Paste clipboard content, Submission Name field
	Send {TAB}		;Jump to next field

	Sendinput, ^v	;Paste clipboard content, Template field
	Send {ENTER}	;Choose template
	Send {TAB}		;Jump to next field

	Send m			;Frequency field
	Send {TAB}		;Jump to next field

	Send a			;First Period Due field
	Send a			;First Period Due field
	Send {TAB}		;Jump to next field

	Send 2			;First Year Due field
	Send 2			;First Year Due field
	Send 2			;First Year Due field
	Send {TAB}		;Jump to next field

	Send 5			;Notice Period field
	Send {TAB}		;Jump to next field

	Send 5			;Days Before Submission Due field
	Send {TAB}		;Jump to next field

	Send {ENTER}	;Save profile
return ;End Of Function
