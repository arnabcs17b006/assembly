	.section	__TEXT,__text,regular,pure_instructions
	.build_version macos, 10, 14
	.intel_syntax noprefix
	.globl	_main                   ## -- Begin function main
	.p2align	4, 0x90
_main:                                  ## @main
	.cfi_startproc
## %bb.0:
push	rbp; stack[top-0] <- 140732920756928;
	.cfi_def_cfa_offset 16
	.cfi_offset rbp, -16
    mov	rbp, rsp; rbp <- [140732920756912]
	.cfi_def_cfa_register rbp
	sub	rsp, 32
	lea	rdi, [rip + L_.str]
    mov	dword ptr [rbp - 4], 0 ; [rbp - 4] <- 0
    mov	dword ptr [rbp - 8], 5 ; [rbp-8] <- 5
    mov	dword ptr [rbp - 12], 8 ; [rbp-12] <- 8
    mov	esi, dword ptr [rbp - 8] ; esi <- 5
    mov	edx, dword ptr [rbp - 12] ; edx <- 8
    mov	al, 0 ; al <- '\0'
	call	_printf
    lea	rdi, [rip + L_.str.1] ; rdi <- 4294971305
    mov	edx, dword ptr [rbp - 8] ; edx <- 5
    add	edx, dword ptr [rbp - 12] ; edx <- 13
    mov	dword ptr [rbp - 8], edx ; [rbp - 8] <- 13
    mov	edx, dword ptr [rbp - 8] ; edx <- 13
    sub	edx, dword ptr [rbp - 12] ; edx <- 5
    mov	dword ptr [rbp - 12], edx ; ptr [rbp - 12] <- 5
    mov	edx, dword ptr [rbp - 8] ; edx <- 13
    sub	edx, dword ptr [rbp - 12] ; edx <- 8
    mov	dword ptr [rbp - 8], edx ; ptr [rbp - 8] <- 8
    mov	esi, dword ptr [rbp - 8] ; esi <- 8
    mov	edx, dword ptr [rbp - 12] ; edx <- 5
    mov	dword ptr [rbp - 16], eax ; eax <- 4
    mov	al, 0 ; al <- '\0'
	call	_printf
    xor	edx, edx ; edx <- 0
    mov	dword ptr [rbp - 20], eax ## 4-byte Spill ; [rbp - 20] <- 3
    mov	eax, edx ; eax <- 0
	add	rsp, 32
    pop	rbp ; rbp <- 140732920756928
	ret
	.cfi_endproc
                                        ## -- End function
	.section	__TEXT,__cstring,cstring_literals
L_.str:                                 ## @.str
	.asciz	"%d %d\n"

L_.str.1:                               ## @.str.1
	.asciz	"%d %d"


.subsections_via_symbols
