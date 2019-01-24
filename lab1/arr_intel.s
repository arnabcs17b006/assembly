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
	mov	rbp, rsp
	.cfi_def_cfa_register rbp
	sub	rsp, 48
	mov	rax, qword ptr [rip + ___stack_chk_guard@GOTPCREL]
	mov	rax, qword ptr [rax]
    mov	qword ptr [rbp - 8], rax ; [rbp - 8] <- 5835778778229702765
    mov	dword ptr [rbp - 36], 0 ; [rbp - 36] <- 0
    mov	rax, qword ptr [rip + l_main.a] ; rax <- 8589934593
    mov	qword ptr [rbp - 32], rax ; [rbp - 32] <- 8589934593
    mov	rax, qword ptr [rip + l_main.a+8] ; rax <- 17179869187
    mov	qword ptr [rbp - 24], rax ; [rbp - 24] <- 17179869187
    mov	ecx, dword ptr [rip + l_main.a+16] ; ecx <- 5
    mov	dword ptr [rbp - 16], ecx ; [rbp - 16] <- 5
    mov	dword ptr [rbp - 40], 0 ; [rbp - 40] <- 0
LBB0_1:                                 ## =>This Inner Loop Header: Depth=1
	cmp	dword ptr [rbp - 40], 5
	jge	LBB0_4
## %bb.2:                               ##   in Loop: Header=BB0_1 Depth=1
    movsxd	rax, dword ptr [rbp - 40] ; rax <- 4
    mov	ecx, dword ptr [rbp + 4*rax - 32] ; ecx <- 5
    add	ecx, 1 ; ecx <- 6
    mov	dword ptr [rbp + 4*rax - 32], ecx ; [rbp + 4*rax - 32] <- 6
## %bb.3:                               ##   in Loop: Header=BB0_1 Depth=1
    mov	eax, dword ptr [rbp - 40] ; eax <- 0
    add	eax, 1 ; eax <- 1
    mov	dword ptr [rbp - 40], eax ; [rbp - 40] <- 0
	jmp	LBB0_1
LBB0_4:
	mov	rax, qword ptr [rip + ___stack_chk_guard@GOTPCREL] ; rax <- 1837787782297027
	mov	rax, qword ptr [rax] ; rax <- 1357787782297756453
	mov	rcx, qword ptr [rbp - 8] ; rax <- 1357787782297756453r
	cmp	rax, rcx
	jne	LBB0_6
## %bb.5:
	xor	eax, eax ; eax <- 0
	add	rsp, 48
    pop	rbp ; rbp <- 27175869187
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
