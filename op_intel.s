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
    mov	rbp, rsp ; rbp <- 40732920756912
	.cfi_def_cfa_register rbp
    xor	eax, eax ; eax <- 0
    mov	dword ptr [rbp - 4], 0 ; [rbp - 4] <- 0
    mov	dword ptr [rbp - 8], 2 ; [rbp - 8] <- 2
    mov	dword ptr [rbp - 12], 3 ; [rbp - 12] <- 3
    mov	dword ptr [rbp - 16], 0 ; [rbp - 16] <- 0
    mov	dword ptr [rbp - 20], 0 ; [rbp - 20] <- 0
    mov	ecx, dword ptr [rbp - 8] ; ecx <- 2
    add	ecx, dword ptr [rbp - 12] ; ecx <- 5
    mov	dword ptr [rbp - 16], ecx ; [rbp - 16] <- 5
    mov	ecx, dword ptr [rbp - 8] ; ecx <- 2
    sub	ecx, dword ptr [rbp - 12] ; ecx <- -1
    mov	dword ptr [rbp - 24], ecx ; [rbp - 24] <- -1
    mov	ecx, dword ptr [rbp - 8] ; ecx <- 2
    imul	ecx, dword ptr [rbp - 12] ; ecx <- 6
    mov	dword ptr [rbp - 28], ecx ; [rbp - 28] <- 6
    mov	ecx, dword ptr [rbp - 8] ; ecx <- 2
    mov	dword ptr [rbp - 56], eax ## 4-byte Spill ; [rbp - 56] <- 0
    mov	eax, ecx ; eax <- 2
	cdq
	idiv	dword ptr [rbp - 12]
    mov	dword ptr [rbp - 32], eax ; [rbp - 32] <- 0
    mov	eax, dword ptr [rbp - 8] ; eax <- 2
	cdq
	idiv	dword ptr [rbp - 12]
    mov	dword ptr [rbp - 36], edx ; edx <- 0
    mov	ecx, dword ptr [rbp - 8] ; ecx <- 2
    and	ecx, dword ptr [rbp - 12] ; ecx <- 2
    mov	dword ptr [rbp - 40], ecx ; [rbp - 40] <- 2
    mov	ecx, dword ptr [rbp - 8] ; ecx <- 2
    or	ecx, dword ptr [rbp - 12] ; ecx <- 3
    mov	dword ptr [rbp - 44], ecx ; [rbp - 44] <- 3
    mov	ecx, dword ptr [rbp - 8] ; ecx <- 2
    xor	ecx, dword ptr [rbp - 12] ; ecx <- 1
    mov	dword ptr [rbp - 48], ecx ; [rbp - 48] <- 1
    mov	ecx, dword ptr [rbp - 8] ; ecx <- 2
    xor	ecx, -1 ; ecx <- 4294967293
    mov	dword ptr [rbp - 52], ecx ; [rbp - 52] <- 4294967293
    mov	ecx, dword ptr [rbp - 20] ; ecx <- 0
    add	ecx, dword ptr [rbp - 16] ; ecx <- 5
    mov	dword ptr [rbp - 20], ecx ; ptr [rbp - 20] <- 5
    mov	ecx, dword ptr [rbp - 56] ## 4-byte Reload ; ecx <- 0
    mov	eax, ecx ; eax <- 0
    pop	rbp ; rbp <- 140732920756928
	ret
	.cfi_endproc
                                        ## -- End function

.subsections_via_symbols
