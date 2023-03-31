;ChangeMonitorSettings v1.0 
;Author: Luis J Zuluaga B
;Email: luiszuluaga90@gmail.com
;v1.0: 	Increase and decrease brightness and switch between inputs, all of these with keyboard shortcuts
;		This script needs and external software named ControlMyMonitor.exe
;		that can be downloaded from https://www.nirsoft.net/utils/control_my_monitor.html.
;		The commands and the values to execute this script can be obtained by executing ControlMyMonitor.exe manually.
;Symbols used in this script:
;| Name 	| Symbol 	|
;| LeftAlt	| <!		|


;Decrease brightness: LeftAlt + Down Arrow
<!Down::Run, C:\controlmymonitor\ControlMyMonitor.exe /ChangeValue "\\.\DISPLAY1\Monitor0" 10 -10

;Increase brightness: LeftAlt + Up Arrow
<!Up::Run, C:\controlmymonitor\ControlMyMonitor.exe /ChangeValue "\\.\DISPLAY1\Monitor0" 10 10	

;Decrease Contrast: LeftAlt + Left Arrow
<!Left::Run, C:\controlmymonitor\ControlMyMonitor.exe /ChangeValue "\\.\DISPLAY1\Monitor0" 10 -10

;Increase Contrast: LeftAlt + Right Arrow
<!Right::Run, C:\controlmymonitor\ControlMyMonitor.exe /ChangeValue "\\.\DISPLAY1\Monitor0" 10 10	

;Swith to DisplayPort: LeftAlt + F9
<!F9::Run, C:\controlmymonitor\ControlMyMonitor.exe /SetValue "\\.\DISPLAY1\Monitor0" 60 15		

;Swith to HDMI 1: LeftAlt + F10
<!F10::Run, C:\controlmymonitor\ControlMyMonitor.exe /SetValue "\\.\DISPLAY1\Monitor0" 60 18
