; Reload
!F11::Reload
; Stop Script
!F12::
	Suspend
	return

; Run Command Line
^!/::Run cmd

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
; OSX style keys;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
; Win7/10 Startup with this script:
; Add it the shortcut to Startup folder: %appdata%\Microsoft\Windows\Start Menu\Programs\Startup

;Command-backspace deletes whole line
!BS::Send {End}{LShift down}{Home}{LShift Up}{Del}

;alt-delete deletes previous word
^BS::Send {LShift down}{LCtrl down}{Left}{LShift Up}{Lctrl up}{Del}

; Navigation of smaller chunks (skip word)
<^Left::Send {ctrl down}{Left}{ctrl up}
<^Right::Send {ctrl down}{Right}{ctrl up}

; Navigation using of bigger chunks (Skip to start/end of line/paragraph/document)
!Left::Send {Home}
!Right::Send {End}
^Up::Send {ctrl down}{Up}{ctrl up}
^Down::Send {ctrl down}{Down}{ctrl up}
!Up::Send {Lctrl down}{Home}{Lctrl up}
!Down::Send {Lctrl down}{End}{Lctrl up}

; Selection (uses a combination of the above with shift)
^+Left::Send {ctrl down}{shift down}{Left}{shift up}{ctrl up}
^+Right::Send {ctrl down}{shift down}{Right}{shift up}{ctrl up}
<!+Left::Send {shift down}{Home}}{shift up}
<!+Right::Send {shift down}{End}}{shift up}
!+Up::Send {ctrl down}{shift down}{Up}}{shift up}{ctrl up}
!+Down::Send {ctrl down}{shift down}{Down}}{shift up}{ctrl up}
^+Up::Send {Lctrl down}{shift down}{Home}}{shift up}{Lctrl up}
^+Down::Send {Lctrl down}{shift down}{End}}{shift up}{Lctrl up}

;Closing windows and programs (using the Win Key)
!w::Send ^{w}
!q::Send !{F4}

;The following section replaces Alt(my Command Key)+Key with Ctrl+Key
!a::Send ^{a}	; Select All
!s::Send ^{s}	; Save
!d::Send ^{d}	; Bookmark
!f::Send ^{f}	; Find
!z::Send ^{z} 	; Undo
!x::Send ^{x}	; Cut
!c::Send ^{c}	; Copy
!v::Send ^{v}	; Paste
; !b::Send ^{b}	; For Tmux Usage ; Disable this one as OSX also use Ctrl + B
!r::Send ^{r}	; Refresh
!t::Send ^{t}	; New Tab
!h::Send ^{h}	; History(Windows)
!o::Send ^{o}	; Open
!n::Send ^{n}	; New

; back and forward
![::Send !{Left}
!]::Send !{Right}

; Command + Left Mouse Click
!LBUTTON::Send {Ctrl Down}{Click}{Ctrl up}

; Redo
!+z::Send ^{y}	; Redo(OSX)

; Zoom in & out
!-::Send ^-
!=::Send ^{=}
!WheelUp::Send ^{WheelUp}
!WheelDown::Send ^{WheelDown}
!0::Send ^0

; Alt + ` to simulate Command + `
!`::Send !{Tab}
; Alt + Insert to simulate Ctrl + Insert
!Insert::Send ^{Insert}

; Alt + Number
!1::Send ^{1}
!2::Send ^{2}
!3::Send ^{3}
!4::Send ^{4}
!5::Send ^{5}
!6::Send ^{6}
!7::Send ^{7}
!8::Send ^{8}
!9::Send ^{9}

; Ctrl + Shift + Key -> Alt + Shift + Key
!+t::Send ^+{t} ; Simulate Command + Shift + t for reopen tabs in chrome
!+n::Send ^+{n} ; Simulate Ctrl + Shift + N in in chrome
!+p::Send ^+{p} ; Simulate Command + Shift + p for commands in Visual Studio Codes
!+v::Send ^+{v} ; Simulate Command + Shift + v for show Views
!+r::Send ^+{r} ; Simulate Ctrl + Shift + R in Eclipse
