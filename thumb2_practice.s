.syntax unified

.word 0x20000100
.word _start

.global _start
.type _start, %function
_start:
	
	//
	//mov # to reg
	//
	movs	r1,	#1
	movs	r2,	#2
	movs	r3,	#3
    movs    r4, #4
	
	//
	//push
	//
	push	{r1, r2, r3, r4}

    //
	//pop
	//
	pop	    {r5, r6, r7, r8}

	//
	//clean the register data
	//
	movs    r5, #0
	movs    r6, #0
	movs    r7, #0
	movs    r8, #0

	//
	//push
	//
	push   {r4,r3,r2,r1}

	//
	//pop
	//
	pop    {r8, r7, r6, r5}

	//
	//b bl
	//
	bl	label01

sleep:
	b	sleep

label01:
	nop
	nop
	bx	lr
