;;  A collection of useful keyboard shortcuts that use on a daily basis.
;;  :org:                   ITESM QRO
;;  :author:                Luis Montoya

; Pull requests are welcome!
; To auto start on Windows 10:
; 1. https://www.maketecheasier.com/schedule-autohotkey-startup-windows/



; Useful things to have
#InstallKeybdHook 
SetNumLockState, AlwaysOn  ; Will not allow to turn NumLock Off

; Google that for me
LAlt & g::
    clipboard =      ; Empty clipboard
    Send ^c          ; Copy whatever is selected
    ClipWait, 0
    if ErrorLevel{      ; If empty just open Google                  
        Run, http://www.google.com/          
        Send {CtrlDown}l{CtrlUp}    ; Select navigation bar
        return
    }else{
        Run, http://www.google.com/search?q=%clipboard% ; Google whatever is on clipboard
    }

    return


; --------------- Number Pad shortcuts ---------------
; Maps that for me
Rcontrol & Numpad0:: 
    clipboard =      ; Empty the clipboard
    Send ^c
    ClipWait, 0
    if ErrorLevel{      ; If empty just open Google Maps (It has QRO coordinatees, but it defaults to Texas :( )                
        Run, https://www.google.com/maps/@20.5618375,-100.3729132,14z         
        return
    }else{
        Run, https://www.google.com/maps/search/%clipboard%/@20.6122818,-100.4059563 ; Search whatever was at clipboard on maps
    }

    return

; Calculator that for me
Rcontrol & NumpadEnter::
    Run, calc.exe
    return

    
