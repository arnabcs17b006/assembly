	.section	__TEXT,__text,regular,pure_instructions
	.build_version macos, 10, 14
	.intel_syntax noprefix
	.globl	_fib                    ## -- Begin function fib
	.p2align	4, 0x90
_fib:                                   ## @fib
	.cfi_startproc
## %bb.0:
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset rbp, -16
    mov	rbp, rsp ; rbp <- 140732920756880
	.cfi_def_cfa_register rbp
    sub	rsp, 16 ; rsp <- 140732920756864
    mov	dword ptr [rbp - 8], edi ; [rbp - 8] <- 10
	cmp	dword ptr [rbp - 8], 1
	jne	LBB0_2
## %bb.1:
    mov	dword ptr [rbp - 4], 1 ; [rbp - 4] <- 1
	jmp	LBB0_5
LBB0_2:
	cmp	dword ptr [rbp - 8], 2
	jne	LBB0_4
## %bb.3:
    mov	dword ptr [rbp - 4], 1 ; [rbp - 4] <- 1
	jmp	LBB0_5
LBB0_4:
    mov	eax, dword ptr [rbp - 8] ; eax <- 2
    sub	eax, 1 ; eax <- 1
    mov	edi, eax ; edi <- 1
	call	_fib
    mov	edi, dword ptr [rbp - 8] ; edi <- 3
    sub	edi, 2 ; edi <- 1
    mov	dword ptr [rbp - 12], eax ## 4-byte Spill ; [rbp - 12] <- 1
	call	_fib
    mov	edi, dword ptr [rbp - 12] ## 4-byte Reload ; edi <- 1
    add	edi, eax ; edi <- 2
    mov	dword ptr [rbp - 4], edi ; [rbp - 4] <- 2
LBB0_5:
    mov	eax, dword ptr [rbp - 4] ; eax <- 2
    add	rsp, 16 ; rsp <- 140732920756656
    pop	rbp ; rbp <- 140732920756688
	ret
	.cfi_endproc
                                        ## -- End function
	.globl	_main                   ## -- Begin function main
	.p2align	4, 0x90
_main:                                  ## @main
	.cfi_startproc
## %bb.0:
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset rbp, -16
    mov	rbp, rsp ; rbp <- 140732920756912
	.cfi_def_cfa_register rbp
    sub	rsp, 16 ; rsp <- 140732920756896
    mov	edi, 10 ; edi <- 10
    mov	dword ptr [rbp - 4], 0 ; [rbp - 4] <- 0
	call	_fib
    xor	edi, edi ; edi <- 0
    mov	dword ptr [rbp - 8], eax ; [rbp - 8] <- 55
    mov	eax, edi ; eax <- 0
    add	rsp, 16 ; rsp <- 140732920756928
    pop	rbp ; rbp <- 140732920756928
	ret
	.cfi_endproc
                                        ## -- End function

.subsections_via_symbols
