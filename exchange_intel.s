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
    mov	rbp, rsp ; rbp <- 140732920756896
	.cfi_def_cfa_register rbp
    sub	rsp, 80 ; rsp <- 140732920756816
    mov	rax, qword ptr [rip + ___stack_chk_guard@GOTPCREL] ; rax <- 140735578013808
    mov	rax, qword ptr [rax] ; rax <- 2079473817093931259
    mov	qword ptr [rbp - 8], rax ; [rbp - 8] <- 2079473817093931259
    mov	dword ptr [rbp - 68], 0 ; [rbp - 68] <- 0
    mov	rax, qword ptr [rip + l_main.a] ; rax <- 8589934593
    mov	qword ptr [rbp - 32], rax ; [rbp - 32] <- 8589934593
    mov	rax, qword ptr [rip + l_main.a+8] ; rax <- 17179869187
    mov	qword ptr [rbp - 24], rax ; [rbp - 24] <- 17179869187
    mov	ecx, dword ptr [rip + l_main.a+16] ; ecx <- 5
    mov	dword ptr [rbp - 16], ecx ; [rbp - 16] <- 5
    mov	dword ptr [rbp - 72], 0 ; [rbp - 72] <- 0
LBB0_1:                                 ## =>This Inner Loop Header: Depth=1
	cmp	dword ptr [rbp - 72], 5
	jge	LBB0_4
## %bb.2:                               ##   in Loop: Header=BB0_1 Depth=1
    movsxd	rax, dword ptr [rbp - 72] ; rax <- 4
    mov	ecx, dword ptr [rbp + 4*rax - 32] ; ecx <- 5
    movsxd	rax, dword ptr [rbp - 72] ; rax <- 4
    mov	dword ptr [rbp + 4*rax - 64], ecx ; [rbp + 4*rax - 64] <- 5
## %bb.3:                               ##   in Loop: Header=BB0_1 Depth=1
    mov	eax, dword ptr [rbp - 72] ; eax <- 4
    add	eax, 1 ; eax <- 5
    mov	dword ptr [rbp - 72], eax ; [rbp - 72] <-  5
	jmp	LBB0_1
LBB0_4:
	mov	rax, qword ptr [rip + ___stack_chk_guard@GOTPCREL] ; rax <- 40735578013808
	mov	rax, qword ptr [rax] ; rax <- 2079473817093931259
	mov	rcx, qword ptr [rbp - 8] ; rcx <- 2079473817093931259
	cmp	rax, rcx
	jne	LBB0_6
## %bb.5:
	xor	eax, eax ; eax <- 0
	add	rsp, 80 ; rsp <- 140732920756896
	pop	rbp ; rbp <- 140732920756896
	ret
LBB0_6:
	call	___stack_chk_fail
	ud2
	.cfi_endproc
                                        ## -- End function
	.section	__TEXT,__const
	.p2align	4               ## @main.a
l_main.a:
	.long	1                       ## 0x1
	.long	2                       ## 0x2
	.long	3                       ## 0x3
	.long	4                       ## 0x4
	.long	5                       ## 0x5


.subsections_via_symbols
