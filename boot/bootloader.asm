; bootloader.asm
section .text
    global _start

_start:
    ; Print welcome message
    mov si, welcome_message
    call print_string

    ; Wait for a short period before jumping to kernel
    call wait

    ; Infinite loop as the kernel will be loaded by GRUB
    jmp $

print_string:
    ; Print a string at DS:SI using BIOS interrupt
    mov ah, 0x0E  ; BIOS teletype output function
.print_loop:
    lodsb            ; Load byte at DS:SI into AL and increment SI
    cmp al, 0       ; Check if the end of the string (null terminator)
    je .done        ; If yes, jump to done
    int 0x10        ; Print character in AL
    jmp .print_loop
.done:
    ret

wait:
    ; Simple delay routine (not precise)
    mov cx, 0xFFFF
.wait_loop:
    loop .wait_loop
    ret

welcome_message db 'Welcome to ArkOS!', 0

; Fill the remaining space to ensure bootloader is 512 bytes long
times 510 - ($ - $$) db 0
dw 0xAA55