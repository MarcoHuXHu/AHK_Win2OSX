^!,::Reload

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
; OSX style keys;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;


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

;Closing windows and programs (using the Win Key)
!w::Send ^{F4}
!q::Send !{F4}

;The following section replaces Ctrl+Key with  Win+Key
!a::Send ^{a}
!s::Send ^{s}
!d::Send ^{d}
!z::Send ^{z} 
!x::Send ^{x}
!c::Send ^{c}
!v::Send ^{v}
!t::Send ^{t}
!y::Send ^{y}
!h::Send ^{h}
!o::Send ^{o}