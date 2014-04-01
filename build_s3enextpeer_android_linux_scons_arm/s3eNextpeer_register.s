	.arch armv5te
	.eabi_attribute 27, 3
	.fpu vfp
	.eabi_attribute 20, 1
	.eabi_attribute 21, 1
	.eabi_attribute 23, 3
	.eabi_attribute 24, 1
	.eabi_attribute 25, 1
	.eabi_attribute 26, 2
	.eabi_attribute 30, 6
	.eabi_attribute 18, 4
	.file	"s3eNextpeer_register.cpp"
	.section	.debug_abbrev,"",%progbits
.Ldebug_abbrev0:
	.section	.debug_info,"",%progbits
.Ldebug_info0:
	.section	.debug_line,"",%progbits
.Ldebug_line0:
	.text
.Ltext0:
	.section	.rodata
	.align	2
.LC0:
	.ascii	"NEXTPEER_VERBOSE\000"
	.align	2
.LC1:
	.ascii	"calling s3eNextpeer func on main thread: s3eNextpee"
	.ascii	"rInitWithProductKey\000"
	.section	.text._ZL34s3eNextpeerInitWithProductKey_wrapPKc,"ax",%progbits
	.align	2
	.type	_ZL34s3eNextpeerInitWithProductKey_wrapPKc, %function
_ZL34s3eNextpeerInitWithProductKey_wrapPKc:
.LFB33:
	.file 1 "C:\\Marmalade\\7.2\\examples\\HelloWorld\\s3eNextpeer\\source\\generic\\s3eNextpeer_register.cpp"
	.loc 1 28 0
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, lr}
.LCFI0:
	sub	sp, sp, #8
.LCFI1:
	.loc 1 30 0
	ldr	r4, .L4
.LPIC3:
	add	r4, pc, r4
	.loc 1 28 0
	str	r0, [sp, #4]
	.loc 1 29 0
	ldr	r3, .L4+4
.LPIC0:
	add	r3, pc, r3
	mov	r0, r3
	mov	r1, #1
	bl	IwDebugTraceIsChannelOn(PLT)
	mov	r3, r0
	cmp	r3, #0
	moveq	r3, #0
	movne	r3, #1
	and	r3, r3, #255
	cmp	r3, #0
	beq	.L2
	ldr	r3, .L4+8
.LPIC1:
	add	r3, pc, r3
	mov	r0, r3
	bl	IwDebugTraceSetTraceChannel(PLT)
	ldr	r3, .L4+12
.LPIC2:
	add	r3, pc, r3
	mov	r0, r3
	bl	IwDebugTraceLinePrintf(PLT)
.L2:
	.loc 1 30 0
	ldr	r3, .L4+16
	ldr	r3, [r4, r3]
	mov	r0, r3
	mov	r1, #1
	ldr	r2, [sp, #4]
	bl	s3eEdkThreadRunOnOS(PLT)
	.loc 1 31 0
	add	sp, sp, #8
	ldmfd	sp!, {r4, pc}
.L5:
	.align	2
.L4:
	.word	_GLOBAL_OFFSET_TABLE_-(.LPIC3+8)
	.word	.LC0-(.LPIC0+8)
	.word	.LC0-(.LPIC1+8)
	.word	.LC1-(.LPIC2+8)
	.word	s3eNextpeerInitWithProductKey(GOT)
.LFE33:
	.size	_ZL34s3eNextpeerInitWithProductKey_wrapPKc, .-_ZL34s3eNextpeerInitWithProductKey_wrapPKc
	.section	.rodata
	.align	2
.LC2:
	.ascii	"calling s3eNextpeer func on main thread: s3eNextpee"
	.ascii	"rLaunchDashboard\000"
	.section	.text._ZL31s3eNextpeerLaunchDashboard_wrapv,"ax",%progbits
	.align	2
	.type	_ZL31s3eNextpeerLaunchDashboard_wrapv, %function
_ZL31s3eNextpeerLaunchDashboard_wrapv:
.LFB34:
	.loc 1 34 0
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, lr}
.LCFI2:
	.loc 1 36 0
	ldr	r4, .L9
.LPIC7:
	add	r4, pc, r4
	.loc 1 35 0
	ldr	r3, .L9+4
.LPIC4:
	add	r3, pc, r3
	mov	r0, r3
	mov	r1, #1
	bl	IwDebugTraceIsChannelOn(PLT)
	mov	r3, r0
	cmp	r3, #0
	moveq	r3, #0
	movne	r3, #1
	and	r3, r3, #255
	cmp	r3, #0
	beq	.L7
	ldr	r3, .L9+8
.LPIC5:
	add	r3, pc, r3
	mov	r0, r3
	bl	IwDebugTraceSetTraceChannel(PLT)
	ldr	r3, .L9+12
.LPIC6:
	add	r3, pc, r3
	mov	r0, r3
	bl	IwDebugTraceLinePrintf(PLT)
.L7:
	.loc 1 36 0
	ldr	r3, .L9+16
	ldr	r3, [r4, r3]
	mov	r0, r3
	mov	r1, #0
	bl	s3eEdkThreadRunOnOS(PLT)
	.loc 1 37 0
	ldmfd	sp!, {r4, pc}
.L10:
	.align	2
.L9:
	.word	_GLOBAL_OFFSET_TABLE_-(.LPIC7+8)
	.word	.LC0-(.LPIC4+8)
	.word	.LC0-(.LPIC5+8)
	.word	.LC2-(.LPIC6+8)
	.word	s3eNextpeerLaunchDashboard(GOT)
.LFE34:
	.size	_ZL31s3eNextpeerLaunchDashboard_wrapv, .-_ZL31s3eNextpeerLaunchDashboard_wrapv
	.section	.rodata
	.align	2
.LC3:
	.ascii	"calling s3eNextpeer func on main thread: s3eNextpee"
	.ascii	"rLaunchDashboardWithCurrencyAmount\000"
	.section	.text._ZL49s3eNextpeerLaunchDashboardWithCurrencyAmount_wrapj,"ax",%progbits
	.align	2
	.type	_ZL49s3eNextpeerLaunchDashboardWithCurrencyAmount_wrapj, %function
_ZL49s3eNextpeerLaunchDashboardWithCurrencyAmount_wrapj:
.LFB35:
	.loc 1 40 0
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, lr}
.LCFI3:
	sub	sp, sp, #8
.LCFI4:
	.loc 1 42 0
	ldr	r4, .L14
.LPIC11:
	add	r4, pc, r4
	.loc 1 40 0
	str	r0, [sp, #4]
	.loc 1 41 0
	ldr	r3, .L14+4
.LPIC8:
	add	r3, pc, r3
	mov	r0, r3
	mov	r1, #1
	bl	IwDebugTraceIsChannelOn(PLT)
	mov	r3, r0
	cmp	r3, #0
	moveq	r3, #0
	movne	r3, #1
	and	r3, r3, #255
	cmp	r3, #0
	beq	.L12
	ldr	r3, .L14+8
.LPIC9:
	add	r3, pc, r3
	mov	r0, r3
	bl	IwDebugTraceSetTraceChannel(PLT)
	ldr	r3, .L14+12
.LPIC10:
	add	r3, pc, r3
	mov	r0, r3
	bl	IwDebugTraceLinePrintf(PLT)
.L12:
	.loc 1 42 0
	ldr	r3, .L14+16
	ldr	r3, [r4, r3]
	mov	r0, r3
	mov	r1, #1
	ldr	r2, [sp, #4]
	bl	s3eEdkThreadRunOnOS(PLT)
	.loc 1 43 0
	add	sp, sp, #8
	ldmfd	sp!, {r4, pc}
.L15:
	.align	2
.L14:
	.word	_GLOBAL_OFFSET_TABLE_-(.LPIC11+8)
	.word	.LC0-(.LPIC8+8)
	.word	.LC0-(.LPIC9+8)
	.word	.LC3-(.LPIC10+8)
	.word	s3eNextpeerLaunchDashboardWithCurrencyAmount(GOT)
.LFE35:
	.size	_ZL49s3eNextpeerLaunchDashboardWithCurrencyAmount_wrapj, .-_ZL49s3eNextpeerLaunchDashboardWithCurrencyAmount_wrapj
	.section	.rodata
	.align	2
.LC4:
	.ascii	"calling s3eNextpeer func on main thread: s3eNextpee"
	.ascii	"rDismissDashboard\000"
	.section	.text._ZL32s3eNextpeerDismissDashboard_wrapv,"ax",%progbits
	.align	2
	.type	_ZL32s3eNextpeerDismissDashboard_wrapv, %function
_ZL32s3eNextpeerDismissDashboard_wrapv:
.LFB36:
	.loc 1 46 0
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, lr}
.LCFI5:
	.loc 1 48 0
	ldr	r4, .L19
.LPIC15:
	add	r4, pc, r4
	.loc 1 47 0
	ldr	r3, .L19+4
.LPIC12:
	add	r3, pc, r3
	mov	r0, r3
	mov	r1, #1
	bl	IwDebugTraceIsChannelOn(PLT)
	mov	r3, r0
	cmp	r3, #0
	moveq	r3, #0
	movne	r3, #1
	and	r3, r3, #255
	cmp	r3, #0
	beq	.L17
	ldr	r3, .L19+8
.LPIC13:
	add	r3, pc, r3
	mov	r0, r3
	bl	IwDebugTraceSetTraceChannel(PLT)
	ldr	r3, .L19+12
.LPIC14:
	add	r3, pc, r3
	mov	r0, r3
	bl	IwDebugTraceLinePrintf(PLT)
.L17:
	.loc 1 48 0
	ldr	r3, .L19+16
	ldr	r3, [r4, r3]
	mov	r0, r3
	mov	r1, #0
	bl	s3eEdkThreadRunOnOS(PLT)
	.loc 1 49 0
	ldmfd	sp!, {r4, pc}
.L20:
	.align	2
.L19:
	.word	_GLOBAL_OFFSET_TABLE_-(.LPIC15+8)
	.word	.LC0-(.LPIC12+8)
	.word	.LC0-(.LPIC13+8)
	.word	.LC4-(.LPIC14+8)
	.word	s3eNextpeerDismissDashboard(GOT)
.LFE36:
	.size	_ZL32s3eNextpeerDismissDashboard_wrapv, .-_ZL32s3eNextpeerDismissDashboard_wrapv
	.section	.rodata
	.align	2
.LC5:
	.ascii	"calling s3eNextpeer func on main thread: s3eNextpee"
	.ascii	"rShutDown\000"
	.section	.text._ZL24s3eNextpeerShutDown_wrapv,"ax",%progbits
	.align	2
	.type	_ZL24s3eNextpeerShutDown_wrapv, %function
_ZL24s3eNextpeerShutDown_wrapv:
.LFB37:
	.loc 1 52 0
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, lr}
.LCFI6:
	.loc 1 54 0
	ldr	r4, .L24
.LPIC19:
	add	r4, pc, r4
	.loc 1 53 0
	ldr	r3, .L24+4
.LPIC16:
	add	r3, pc, r3
	mov	r0, r3
	mov	r1, #1
	bl	IwDebugTraceIsChannelOn(PLT)
	mov	r3, r0
	cmp	r3, #0
	moveq	r3, #0
	movne	r3, #1
	and	r3, r3, #255
	cmp	r3, #0
	beq	.L22
	ldr	r3, .L24+8
.LPIC17:
	add	r3, pc, r3
	mov	r0, r3
	bl	IwDebugTraceSetTraceChannel(PLT)
	ldr	r3, .L24+12
.LPIC18:
	add	r3, pc, r3
	mov	r0, r3
	bl	IwDebugTraceLinePrintf(PLT)
.L22:
	.loc 1 54 0
	ldr	r3, .L24+16
	ldr	r3, [r4, r3]
	mov	r0, r3
	mov	r1, #0
	bl	s3eEdkThreadRunOnOS(PLT)
	.loc 1 55 0
	ldmfd	sp!, {r4, pc}
.L25:
	.align	2
.L24:
	.word	_GLOBAL_OFFSET_TABLE_-(.LPIC19+8)
	.word	.LC0-(.LPIC16+8)
	.word	.LC0-(.LPIC17+8)
	.word	.LC5-(.LPIC18+8)
	.word	s3eNextpeerShutDown(GOT)
.LFE37:
	.size	_ZL24s3eNextpeerShutDown_wrapv, .-_ZL24s3eNextpeerShutDown_wrapv
	.section	.rodata
	.align	2
.LC6:
	.ascii	"s3eNextpeer\000"
	.section	.text._Z22s3eNextpeerRegisterExtv,"ax",%progbits
	.align	2
	.global	_Z22s3eNextpeerRegisterExtv
	.hidden	_Z22s3eNextpeerRegisterExtv
	.type	_Z22s3eNextpeerRegisterExtv, %function
_Z22s3eNextpeerRegisterExtv:
.LFB38:
	.loc 1 66 0
	@ args = 0, pretend = 0, frame = 136
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, lr}
.LCFI7:
	sub	sp, sp, #152
.LCFI8:
.LBB2:
	.loc 1 74 0
	ldr	r4, .L28
.LPIC25:
	add	r4, pc, r4
	.loc 1 69 0
	ldr	r3, .L28+4
.LPIC20:
	add	r3, pc, r3
	str	r3, [sp, #84]
	.loc 1 70 0
	ldr	r3, .L28+8
.LPIC21:
	add	r3, pc, r3
	str	r3, [sp, #88]
	.loc 1 71 0
	ldr	r3, .L28+12
.LPIC22:
	add	r3, pc, r3
	str	r3, [sp, #92]
	.loc 1 72 0
	ldr	r3, .L28+16
.LPIC23:
	add	r3, pc, r3
	str	r3, [sp, #96]
	.loc 1 73 0
	ldr	r3, .L28+20
.LPIC24:
	add	r3, pc, r3
	str	r3, [sp, #100]
	.loc 1 74 0
	ldr	r3, .L28+24
	ldr	r3, [r4, r3]
	str	r3, [sp, #104]
	.loc 1 75 0
	ldr	r3, .L28+28
	ldr	r3, [r4, r3]
	str	r3, [sp, #108]
	.loc 1 76 0
	ldr	r3, .L28+32
	ldr	r3, [r4, r3]
	str	r3, [sp, #112]
	.loc 1 77 0
	ldr	r3, .L28+36
	ldr	r3, [r4, r3]
	str	r3, [sp, #116]
	.loc 1 78 0
	ldr	r3, .L28+40
	ldr	r3, [r4, r3]
	str	r3, [sp, #120]
	.loc 1 79 0
	ldr	r3, .L28+44
	ldr	r3, [r4, r3]
	str	r3, [sp, #124]
	.loc 1 80 0
	ldr	r3, .L28+48
	ldr	r3, [r4, r3]
	str	r3, [sp, #128]
	.loc 1 81 0
	ldr	r3, .L28+52
	ldr	r3, [r4, r3]
	str	r3, [sp, #132]
	.loc 1 82 0
	ldr	r3, .L28+56
	ldr	r3, [r4, r3]
	str	r3, [sp, #136]
	.loc 1 83 0
	ldr	r3, .L28+60
	ldr	r3, [r4, r3]
	str	r3, [sp, #140]
	.loc 1 84 0
	ldr	r3, .L28+64
	ldr	r3, [r4, r3]
	str	r3, [sp, #144]
	.loc 1 85 0
	ldr	r3, .L28+68
	ldr	r3, [r4, r3]
	str	r3, [sp, #148]
	.loc 1 90 0
	add	r2, sp, #16
	mov	r3, #68
	mov	r0, r2
	mov	r1, #0
	mov	r2, r3
	bl	memset(PLT)
	.loc 1 95 0
	add	r2, sp, #84
	add	ip, sp, #16
	ldr	r3, .L28+72
	ldr	r3, [r4, r3]
	str	r3, [sp, #0]
	ldr	r3, .L28+76
	ldr	r3, [r4, r3]
	str	r3, [sp, #4]
	mov	r3, #0
	str	r3, [sp, #8]
	ldr	r3, .L28+80
.LPIC26:
	add	r3, pc, r3
	mov	r0, r3
	mov	r1, r2
	mov	r2, #68
	mov	r3, ip
	bl	s3eEdkRegister(PLT)
.LBE2:
	.loc 1 96 0
	add	sp, sp, #152
	ldmfd	sp!, {r4, pc}
.L29:
	.align	2
.L28:
	.word	_GLOBAL_OFFSET_TABLE_-(.LPIC25+8)
	.word	_ZL34s3eNextpeerInitWithProductKey_wrapPKc-(.LPIC20+8)
	.word	_ZL31s3eNextpeerLaunchDashboard_wrapv-(.LPIC21+8)
	.word	_ZL49s3eNextpeerLaunchDashboardWithCurrencyAmount_wrapj-(.LPIC22+8)
	.word	_ZL32s3eNextpeerDismissDashboard_wrapv-(.LPIC23+8)
	.word	_ZL24s3eNextpeerShutDown_wrapv-(.LPIC24+8)
	.word	s3eNextpeerReportScoreForCurrentTournament(GOT)
	.word	s3eNextpeerIsCurrentlyInTournament(GOT)
	.word	s3eNextpeerTimeLeftInTournament(GOT)
	.word	s3eNextpeerReportForfeitForCurrentTournament(GOT)
	.word	s3eNextpeerPushDataToOtherPlayers(GOT)
	.word	s3eNextpeerPushNotificationToOtherPlayers(GOT)
	.word	s3eNextpeerHandleOpenURL(GOT)
	.word	s3eNextpeerRegisterOpenURLCallback(GOT)
	.word	s3eNextpeerSetUnifiedVirtualCurrencySupport(GOT)
	.word	s3eNextpeerOpenFeed(GOT)
	.word	s3eNextpeerRegisterCallback(GOT)
	.word	s3eNextpeerUnRegisterCallback(GOT)
	.word	_Z15s3eNextpeerInitv(GOT)
	.word	_Z20s3eNextpeerTerminatev(GOT)
	.word	.LC6-(.LPIC26+8)
.LFE38:
	.size	_Z22s3eNextpeerRegisterExtv, .-_Z22s3eNextpeerRegisterExtv
	.section	.text.RegisterExt,"ax",%progbits
	.align	2
	.global	RegisterExt
	.type	RegisterExt, %function
RegisterExt:
.LFB39:
	.loc 1 115 0
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, lr}
.LCFI9:
	.loc 1 116 0
	bl	_Z22s3eNextpeerRegisterExtv(PLT)
	.loc 1 117 0
	ldmfd	sp!, {r4, pc}
.LFE39:
	.size	RegisterExt, .-RegisterExt
	.section	.debug_frame,"",%progbits
.Lframe0:
	.4byte	.LECIE0-.LSCIE0
.LSCIE0:
	.4byte	0xffffffff
	.byte	0x1
	.ascii	"\000"
	.uleb128 0x1
	.sleb128 -4
	.byte	0xe
	.byte	0xc
	.uleb128 0xd
	.uleb128 0x0
	.align	2
.LECIE0:
.LSFDE0:
	.4byte	.LEFDE0-.LASFDE0
.LASFDE0:
	.4byte	.Lframe0
	.4byte	.LFB33
	.4byte	.LFE33-.LFB33
	.byte	0x4
	.4byte	.LCFI0-.LFB33
	.byte	0xe
	.uleb128 0x8
	.byte	0x4
	.4byte	.LCFI1-.LCFI0
	.byte	0xe
	.uleb128 0x10
	.byte	0x11
	.uleb128 0xe
	.sleb128 1
	.byte	0x11
	.uleb128 0x4
	.sleb128 2
	.align	2
.LEFDE0:
.LSFDE2:
	.4byte	.LEFDE2-.LASFDE2
.LASFDE2:
	.4byte	.Lframe0
	.4byte	.LFB34
	.4byte	.LFE34-.LFB34
	.byte	0x4
	.4byte	.LCFI2-.LFB34
	.byte	0xe
	.uleb128 0x8
	.byte	0x11
	.uleb128 0xe
	.sleb128 1
	.byte	0x11
	.uleb128 0x4
	.sleb128 2
	.align	2
.LEFDE2:
.LSFDE4:
	.4byte	.LEFDE4-.LASFDE4
.LASFDE4:
	.4byte	.Lframe0
	.4byte	.LFB35
	.4byte	.LFE35-.LFB35
	.byte	0x4
	.4byte	.LCFI3-.LFB35
	.byte	0xe
	.uleb128 0x8
	.byte	0x4
	.4byte	.LCFI4-.LCFI3
	.byte	0xe
	.uleb128 0x10
	.byte	0x11
	.uleb128 0xe
	.sleb128 1
	.byte	0x11
	.uleb128 0x4
	.sleb128 2
	.align	2
.LEFDE4:
.LSFDE6:
	.4byte	.LEFDE6-.LASFDE6
.LASFDE6:
	.4byte	.Lframe0
	.4byte	.LFB36
	.4byte	.LFE36-.LFB36
	.byte	0x4
	.4byte	.LCFI5-.LFB36
	.byte	0xe
	.uleb128 0x8
	.byte	0x11
	.uleb128 0xe
	.sleb128 1
	.byte	0x11
	.uleb128 0x4
	.sleb128 2
	.align	2
.LEFDE6:
.LSFDE8:
	.4byte	.LEFDE8-.LASFDE8
.LASFDE8:
	.4byte	.Lframe0
	.4byte	.LFB37
	.4byte	.LFE37-.LFB37
	.byte	0x4
	.4byte	.LCFI6-.LFB37
	.byte	0xe
	.uleb128 0x8
	.byte	0x11
	.uleb128 0xe
	.sleb128 1
	.byte	0x11
	.uleb128 0x4
	.sleb128 2
	.align	2
.LEFDE8:
.LSFDE10:
	.4byte	.LEFDE10-.LASFDE10
.LASFDE10:
	.4byte	.Lframe0
	.4byte	.LFB38
	.4byte	.LFE38-.LFB38
	.byte	0x4
	.4byte	.LCFI7-.LFB38
	.byte	0xe
	.uleb128 0x8
	.byte	0x4
	.4byte	.LCFI8-.LCFI7
	.byte	0xe
	.uleb128 0xa0
	.byte	0x11
	.uleb128 0xe
	.sleb128 1
	.byte	0x11
	.uleb128 0x4
	.sleb128 2
	.align	2
.LEFDE10:
.LSFDE12:
	.4byte	.LEFDE12-.LASFDE12
.LASFDE12:
	.4byte	.Lframe0
	.4byte	.LFB39
	.4byte	.LFE39-.LFB39
	.byte	0x4
	.4byte	.LCFI9-.LFB39
	.byte	0xe
	.uleb128 0x8
	.byte	0x11
	.uleb128 0xe
	.sleb128 1
	.byte	0x11
	.uleb128 0x4
	.sleb128 2
	.align	2
.LEFDE12:
	.text
.Letext0:
	.section	.debug_loc,"",%progbits
.Ldebug_loc0:
.LLST0:
	.4byte	.LFB33
	.4byte	.LCFI0
	.2byte	0x2
	.byte	0x7d
	.sleb128 0
	.4byte	.LCFI0
	.4byte	.LCFI1
	.2byte	0x2
	.byte	0x7d
	.sleb128 8
	.4byte	.LCFI1
	.4byte	.LFE33
	.2byte	0x2
	.byte	0x7d
	.sleb128 16
	.4byte	0x0
	.4byte	0x0
.LLST1:
	.4byte	.LFB34
	.4byte	.LCFI2
	.2byte	0x2
	.byte	0x7d
	.sleb128 0
	.4byte	.LCFI2
	.4byte	.LFE34
	.2byte	0x2
	.byte	0x7d
	.sleb128 8
	.4byte	0x0
	.4byte	0x0
.LLST2:
	.4byte	.LFB35
	.4byte	.LCFI3
	.2byte	0x2
	.byte	0x7d
	.sleb128 0
	.4byte	.LCFI3
	.4byte	.LCFI4
	.2byte	0x2
	.byte	0x7d
	.sleb128 8
	.4byte	.LCFI4
	.4byte	.LFE35
	.2byte	0x2
	.byte	0x7d
	.sleb128 16
	.4byte	0x0
	.4byte	0x0
.LLST3:
	.4byte	.LFB36
	.4byte	.LCFI5
	.2byte	0x2
	.byte	0x7d
	.sleb128 0
	.4byte	.LCFI5
	.4byte	.LFE36
	.2byte	0x2
	.byte	0x7d
	.sleb128 8
	.4byte	0x0
	.4byte	0x0
.LLST4:
	.4byte	.LFB37
	.4byte	.LCFI6
	.2byte	0x2
	.byte	0x7d
	.sleb128 0
	.4byte	.LCFI6
	.4byte	.LFE37
	.2byte	0x2
	.byte	0x7d
	.sleb128 8
	.4byte	0x0
	.4byte	0x0
.LLST5:
	.4byte	.LFB38
	.4byte	.LCFI7
	.2byte	0x2
	.byte	0x7d
	.sleb128 0
	.4byte	.LCFI7
	.4byte	.LCFI8
	.2byte	0x2
	.byte	0x7d
	.sleb128 8
	.4byte	.LCFI8
	.4byte	.LFE38
	.2byte	0x3
	.byte	0x7d
	.sleb128 160
	.4byte	0x0
	.4byte	0x0
.LLST6:
	.4byte	.LFB39
	.4byte	.LCFI9
	.2byte	0x2
	.byte	0x7d
	.sleb128 0
	.4byte	.LCFI9
	.4byte	.LFE39
	.2byte	0x2
	.byte	0x7d
	.sleb128 8
	.4byte	0x0
	.4byte	0x0
	.file 2 "../../../../s3e/h/s3eTypes.h"
	.section	.debug_info
	.4byte	0x191
	.2byte	0x2
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.4byte	.LASF19
	.byte	0x4
	.4byte	.LASF20
	.4byte	.LASF21
	.4byte	0x0
	.4byte	0x0
	.4byte	.Ldebug_ranges0+0x0
	.4byte	.Ldebug_line0
	.uleb128 0x2
	.byte	0x1
	.byte	0x8
	.4byte	.LASF0
	.uleb128 0x2
	.byte	0x1
	.byte	0x6
	.4byte	.LASF1
	.uleb128 0x2
	.byte	0x2
	.byte	0x7
	.4byte	.LASF2
	.uleb128 0x2
	.byte	0x2
	.byte	0x5
	.4byte	.LASF3
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.4byte	.LASF4
	.uleb128 0x3
	.byte	0x4
	.byte	0x5
	.ascii	"int\000"
	.uleb128 0x2
	.byte	0x8
	.byte	0x5
	.4byte	.LASF5
	.uleb128 0x2
	.byte	0x8
	.byte	0x7
	.4byte	.LASF6
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.4byte	.LASF7
	.uleb128 0x4
	.4byte	.LASF22
	.byte	0x2
	.byte	0x6d
	.4byte	0x45
	.uleb128 0x5
	.byte	0x4
	.uleb128 0x2
	.byte	0x4
	.byte	0x5
	.4byte	.LASF8
	.uleb128 0x6
	.byte	0x4
	.byte	0x7
	.uleb128 0x2
	.byte	0x1
	.byte	0x6
	.4byte	.LASF9
	.uleb128 0x7
	.byte	0x4
	.4byte	0x8c
	.uleb128 0x8
	.4byte	0x7f
	.uleb128 0x9
	.4byte	0x73
	.uleb128 0xa
	.4byte	.LASF10
	.byte	0x1
	.byte	0x1b
	.4byte	.LFB33
	.4byte	.LFE33
	.4byte	.LLST0
	.4byte	0xbc
	.uleb128 0xb
	.4byte	.LASF12
	.byte	0x1
	.byte	0x1b
	.4byte	0x86
	.byte	0x2
	.byte	0x91
	.sleb128 -12
	.byte	0x0
	.uleb128 0xc
	.4byte	.LASF14
	.byte	0x1
	.byte	0x21
	.4byte	.LFB34
	.4byte	.LFE34
	.4byte	.LLST1
	.uleb128 0xa
	.4byte	.LASF11
	.byte	0x1
	.byte	0x27
	.4byte	.LFB35
	.4byte	.LFE35
	.4byte	.LLST2
	.4byte	0xf5
	.uleb128 0xb
	.4byte	.LASF13
	.byte	0x1
	.byte	0x27
	.4byte	0x68
	.byte	0x2
	.byte	0x91
	.sleb128 -12
	.byte	0x0
	.uleb128 0xc
	.4byte	.LASF15
	.byte	0x1
	.byte	0x2d
	.4byte	.LFB36
	.4byte	.LFE36
	.4byte	.LLST3
	.uleb128 0xc
	.4byte	.LASF16
	.byte	0x1
	.byte	0x33
	.4byte	.LFB37
	.4byte	.LFE37
	.4byte	.LLST4
	.uleb128 0xd
	.byte	0x1
	.4byte	.LASF23
	.byte	0x1
	.byte	0x41
	.4byte	.LASF24
	.4byte	.LFB38
	.4byte	.LFE38
	.4byte	.LLST5
	.4byte	0x160
	.uleb128 0xe
	.4byte	.LBB2
	.4byte	.LBE2
	.uleb128 0xf
	.4byte	.LASF17
	.byte	0x1
	.byte	0x44
	.4byte	0x160
	.byte	0x3
	.byte	0x91
	.sleb128 -76
	.uleb128 0xf
	.4byte	.LASF18
	.byte	0x1
	.byte	0x5a
	.4byte	0x170
	.byte	0x3
	.byte	0x91
	.sleb128 -144
	.byte	0x0
	.byte	0x0
	.uleb128 0x10
	.4byte	0x73
	.4byte	0x170
	.uleb128 0x11
	.4byte	0x7c
	.byte	0x10
	.byte	0x0
	.uleb128 0x10
	.4byte	0x4c
	.4byte	0x180
	.uleb128 0x11
	.4byte	0x7c
	.byte	0x10
	.byte	0x0
	.uleb128 0x12
	.byte	0x1
	.4byte	.LASF25
	.byte	0x1
	.byte	0x72
	.4byte	.LFB39
	.4byte	.LFE39
	.4byte	.LLST6
	.byte	0x0
	.section	.debug_abbrev
	.uleb128 0x1
	.uleb128 0x11
	.byte	0x1
	.uleb128 0x25
	.uleb128 0xe
	.uleb128 0x13
	.uleb128 0xb
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x1b
	.uleb128 0xe
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x52
	.uleb128 0x1
	.uleb128 0x55
	.uleb128 0x6
	.uleb128 0x10
	.uleb128 0x6
	.byte	0x0
	.byte	0x0
	.uleb128 0x2
	.uleb128 0x24
	.byte	0x0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x3e
	.uleb128 0xb
	.uleb128 0x3
	.uleb128 0xe
	.byte	0x0
	.byte	0x0
	.uleb128 0x3
	.uleb128 0x24
	.byte	0x0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x3e
	.uleb128 0xb
	.uleb128 0x3
	.uleb128 0x8
	.byte	0x0
	.byte	0x0
	.uleb128 0x4
	.uleb128 0x16
	.byte	0x0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0x0
	.byte	0x0
	.uleb128 0x5
	.uleb128 0xf
	.byte	0x0
	.uleb128 0xb
	.uleb128 0xb
	.byte	0x0
	.byte	0x0
	.uleb128 0x6
	.uleb128 0x24
	.byte	0x0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x3e
	.uleb128 0xb
	.byte	0x0
	.byte	0x0
	.uleb128 0x7
	.uleb128 0xf
	.byte	0x0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0x0
	.byte	0x0
	.uleb128 0x8
	.uleb128 0x26
	.byte	0x0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0x0
	.byte	0x0
	.uleb128 0x9
	.uleb128 0x15
	.byte	0x0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0x0
	.byte	0x0
	.uleb128 0xa
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x1
	.uleb128 0x40
	.uleb128 0x6
	.uleb128 0x1
	.uleb128 0x13
	.byte	0x0
	.byte	0x0
	.uleb128 0xb
	.uleb128 0x5
	.byte	0x0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0xa
	.byte	0x0
	.byte	0x0
	.uleb128 0xc
	.uleb128 0x2e
	.byte	0x0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x1
	.uleb128 0x40
	.uleb128 0x6
	.byte	0x0
	.byte	0x0
	.uleb128 0xd
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3f
	.uleb128 0xc
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x2007
	.uleb128 0xe
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x1
	.uleb128 0x40
	.uleb128 0x6
	.uleb128 0x1
	.uleb128 0x13
	.byte	0x0
	.byte	0x0
	.uleb128 0xe
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x1
	.byte	0x0
	.byte	0x0
	.uleb128 0xf
	.uleb128 0x34
	.byte	0x0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0xa
	.byte	0x0
	.byte	0x0
	.uleb128 0x10
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0x0
	.byte	0x0
	.uleb128 0x11
	.uleb128 0x21
	.byte	0x0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0xb
	.byte	0x0
	.byte	0x0
	.uleb128 0x12
	.uleb128 0x2e
	.byte	0x0
	.uleb128 0x3f
	.uleb128 0xc
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x1
	.uleb128 0x40
	.uleb128 0x6
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.section	.debug_pubnames,"",%progbits
	.4byte	0x39
	.2byte	0x2
	.4byte	.Ldebug_info0
	.4byte	0x195
	.4byte	0x11b
	.ascii	"s3eNextpeerRegisterExt\000"
	.4byte	0x180
	.ascii	"RegisterExt\000"
	.4byte	0x0
	.section	.debug_aranges,"",%progbits
	.4byte	0x4c
	.2byte	0x2
	.4byte	.Ldebug_info0
	.byte	0x4
	.byte	0x0
	.2byte	0x0
	.2byte	0x0
	.4byte	.LFB33
	.4byte	.LFE33-.LFB33
	.4byte	.LFB34
	.4byte	.LFE34-.LFB34
	.4byte	.LFB35
	.4byte	.LFE35-.LFB35
	.4byte	.LFB36
	.4byte	.LFE36-.LFB36
	.4byte	.LFB37
	.4byte	.LFE37-.LFB37
	.4byte	.LFB38
	.4byte	.LFE38-.LFB38
	.4byte	.LFB39
	.4byte	.LFE39-.LFB39
	.4byte	0x0
	.4byte	0x0
	.section	.debug_ranges,"",%progbits
.Ldebug_ranges0:
	.4byte	.LFB33
	.4byte	.LFE33
	.4byte	.LFB34
	.4byte	.LFE34
	.4byte	.LFB35
	.4byte	.LFE35
	.4byte	.LFB36
	.4byte	.LFE36
	.4byte	.LFB37
	.4byte	.LFE37
	.4byte	.LFB38
	.4byte	.LFE38
	.4byte	.LFB39
	.4byte	.LFE39
	.4byte	0x0
	.4byte	0x0
	.section	.debug_str,"MS",%progbits,1
.LASF5:
	.ascii	"long long int\000"
.LASF16:
	.ascii	"s3eNextpeerShutDown_wrap\000"
.LASF23:
	.ascii	"s3eNextpeerRegisterExt\000"
.LASF4:
	.ascii	"unsigned int\000"
.LASF20:
	.ascii	"C:\\Marmalade\\7.2\\examples\\HelloWorld\\s3eNextpe"
	.ascii	"er\\source\\generic\\s3eNextpeer_register.cpp\000"
.LASF21:
	.ascii	"c:\\\\Marmalade\\\\7.2\\\\examples\\\\HelloWorld\\\\"
	.ascii	"s3eNextpeer\\\\build_s3enextpeer_android_linux_scon"
	.ascii	"s_arm\000"
.LASF18:
	.ascii	"flags\000"
.LASF22:
	.ascii	"uint32\000"
.LASF14:
	.ascii	"s3eNextpeerLaunchDashboard_wrap\000"
.LASF7:
	.ascii	"long unsigned int\000"
.LASF6:
	.ascii	"long long unsigned int\000"
.LASF13:
	.ascii	"unifiedVirtualCurrencyAmount\000"
.LASF19:
	.ascii	"GNU C++ 4.4.3\000"
.LASF0:
	.ascii	"unsigned char\000"
.LASF15:
	.ascii	"s3eNextpeerDismissDashboard_wrap\000"
.LASF9:
	.ascii	"char\000"
.LASF12:
	.ascii	"productKey\000"
.LASF8:
	.ascii	"long int\000"
.LASF25:
	.ascii	"RegisterExt\000"
.LASF2:
	.ascii	"short unsigned int\000"
.LASF17:
	.ascii	"funcPtrs\000"
.LASF24:
	.ascii	"_Z22s3eNextpeerRegisterExtv\000"
.LASF11:
	.ascii	"s3eNextpeerLaunchDashboardWithCurrencyAmount_wrap\000"
.LASF3:
	.ascii	"short int\000"
.LASF10:
	.ascii	"s3eNextpeerInitWithProductKey_wrap\000"
.LASF1:
	.ascii	"signed char\000"
	.ident	"GCC: (GNU) 4.4.3"
	.section	.note.GNU-stack,"",%progbits
