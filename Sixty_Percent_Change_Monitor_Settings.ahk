;ChangeMonitorSettings v1.1
;Author: Luis J Zuluaga B
;Email: luiszuluaga90@gmail.com
;v1.0: 	Increase and decrease brightness and switch between inputs, all of these with keyboard shortcuts
;		This script needs and external software named ControlMyMonitor.exe
;		that can be downloaded from https://www.nirsoft.net/utils/control_my_monitor.html.
;		The commands and the values to execute this script can be obtained by executing ControlMyMonitor.exe manually.
;v1.1: 	Change LAlt by RShift.
;Symbols used in this script:
; <! 	==	LAlt
; >! 	==	RAlt
; >+ 	==	RShift
; <+	==	LShift
; <^	==	LCtrl
; >^	==	RCtrl

RemoveToolTip:
        ToolTip
        return

;Decrease brightness: LeftAlt + Down Arrow
<!Down::
        Run, C:\controlmymonitor\ControlMyMonitor.exe /ChangeValue "\\.\DISPLAY2\Monitor0" 10 -5
        Run, C:\controlmymonitor\ControlMyMonitor.exe /ChangeValue "\\.\DISPLAY3\Monitor0" 10 -5
Return

;Increase brightness: LeftAlt + Up Arrow
<!Up:: 
        Run, C:\controlmymonitor\ControlMyMonitor.exe /ChangeValue "\\.\DISPLAY2\Monitor0" 10 5	
        Run, C:\controlmymonitor\ControlMyMonitor.exe /ChangeValue "\\.\DISPLAY3\Monitor0" 10 5
Return

;Decrease Contrast: LeftAlt + Left Arrow
<!Left::
        Run, C:\controlmymonitor\ControlMyMonitor.exe /ChangeValue "\\.\DISPLAY2\Monitor0" 12 -5
        Run, C:\controlmymonitor\ControlMyMonitor.exe /ChangeValue "\\.\DISPLAY3\Monitor0" 12 -5
Return

;Increase Contrast: LeftAlt + Right Arrow
<!Right::
        Run, C:\controlmymonitor\ControlMyMonitor.exe /ChangeValue "\\.\DISPLAY2\Monitor0" 12 5
        Run, C:\controlmymonitor\ControlMyMonitor.exe /ChangeValue "\\.\DISPLAY3\Monitor0" 12 5
Return

;Swith to Laptop: LeftAlt + 1
<!1::
        Run, C:\controlmymonitor\ControlMyMonitor.exe /SetValue "\\.\DISPLAY2\Monitor0" 60 17
        Run, C:\controlmymonitor\ControlMyMonitor.exe /SetValue "\\.\DISPLAY3\Monitor0" 60 18

;Swith to PC: LeftAlt + 2
<!2::
        Run, C:\controlmymonitor\ControlMyMonitor.exe /SetValue "\\.\DISPLAY2\Monitor0" 60 15
        Run, C:\controlmymonitor\ControlMyMonitor.exe /SetValue "\\.\DISPLAY3\Monitor0" 60 18
