.386
.model flat, stdcall

MessageBoxA PROTO hWnd:DWORD, lpText:DWORD, lpCaption:DWORD, uType:DWORD
ExitProcess PROTO uExitCode:DWORD

.data
header  db 'by SALPSAN', 0
msg 	db 'EVERYDAY Le Club [As]', 0

.code
main:
start proc
        invoke MessageBoxA, 0, addr msg, addr header, 0
        invoke ExitProcess, eax
start endp
end main

;ml.exe 32.asm /link /subsystem:windows /defaultlib:user32.lib /defaultlib:kernel32.lib /entry:main
