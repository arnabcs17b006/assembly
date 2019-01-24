	.section	__TEXT,__text,regular,pure_instructions
	.build_version macos, 10, 14
	.intel_syntax noprefix
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
    sub	rsp, 32 ; rsp <- 140732920756880
    mov	eax, 20 ; eax <- 20
    mov	edi, eax ; edi <- 20
    mov	dword ptr [rbp - 4], 0 ; [rbp - 4] <- 0
	call	_malloc
    mov	qword ptr [rbp - 16], rax ; [rbp - 16] <- 4299161600
    mov	dword ptr [rbp - 20], 0 ; [rbp - 20] <- 0
LBB0_1:                                 ## =>This Inner Loop Header: Depth=1
	cmp	dword ptr [rbp - 20], 5
	jge	LBB0_4
## %bb.2:                               ##   in Loop: Header=BB0_1 Depth=1
    mov	eax, dword ptr [rbp - 20] ; eax <- 0
    mov	rcx, qword ptr [rbp - 16] ; rcx <- 4299161600
    movsxd	rdx, dword ptr [rbp - 20] ; rdx <- 0
    mov	dword ptr [rcx + 4*rdx], eax ; [rcx + 4*rdx] <- 0
## %bb.3:                               ##   in Loop: Header=BB0_1 Depth=1
    mov	eax, dword ptr [rbp - 20] ; eax <- 4
    add	eax, 1 ; eax <- 5
    mov	dword ptr [rbp - 20], eax ; [rbp - 20] <- 5
	jmp	LBB0_1
LBB0_4:
    xor	eax, eax ; eax <- 0
    add	rsp, 32 ; rsp <- 140732920756920
    pop	rbp ; rbp <- 140732920756928
	ret
	.cfi_endproc
                                        ## -- End function

.subsections_via_symbols
