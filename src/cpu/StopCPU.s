.ifndef StopCPU
.cpu arm7tdmi
.section .iwram, "ax"
.arm
.align 2
.global StopCPU
.type   StopCPU, STT_FUNC

@------------------------------------------------------------------------------
@ void StopCPU()
@------------------------------------------------------------------------------
@ Description: Stops the CPU
@------------------------------------------------------------------------------
@ Parameters:
@ None
@------------------------------------------------------------------------------
@ Returns:
@ Nothing.
@------------------------------------------------------------------------------

StopCPU:
    swi #0x30000
    bx lr

.size StopCPU, .-StopCPU
.endif