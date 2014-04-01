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
	.file	"s3eNextpeer.cpp"
	.section	.debug_abbrev,"",%progbits
.Ldebug_abbrev0:
	.section	.debug_info,"",%progbits
.Ldebug_info0:
	.section	.debug_line,"",%progbits
.Ldebug_line0:
	.text
.Ltext0:
	.section	.text._Z15s3eNextpeerInitv,"ax",%progbits
	.align	2
	.global	_Z15s3eNextpeerInitv
	.hidden	_Z15s3eNextpeerInitv
	.type	_Z15s3eNextpeerInitv, %function
_Z15s3eNextpeerInitv:
.LFB0:
	.file 1 "C:\\Marmalade\\7.2\\examples\\HelloWorld\\s3eNextpeer\\source\\generic\\s3eNextpeer.cpp"
	.loc 1 15 0
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, lr}
.LCFI0:
	.loc 1 17 0
	bl	_Z24s3eNextpeerInit_platformv(PLT)
	mov	r3, r0
	.loc 1 18 0
	mov	r0, r3
	ldmfd	sp!, {r4, pc}
.LFE0:
	.size	_Z15s3eNextpeerInitv, .-_Z15s3eNextpeerInitv
	.section	.text._Z20s3eNextpeerTerminatev,"ax",%progbits
	.align	2
	.global	_Z20s3eNextpeerTerminatev
	.hidden	_Z20s3eNextpeerTerminatev
	.type	_Z20s3eNextpeerTerminatev, %function
_Z20s3eNextpeerTerminatev:
.LFB1:
	.loc 1 21 0
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, lr}
.LCFI1:
	.loc 1 23 0
	bl	_Z29s3eNextpeerTerminate_platformv(PLT)
	.loc 1 24 0
	ldmfd	sp!, {r4, pc}
.LFE1:
	.size	_Z20s3eNextpeerTerminatev, .-_Z20s3eNextpeerTerminatev
	.section	.text.s3eNextpeerInitWithProductKey,"ax",%progbits
	.align	2
	.global	s3eNextpeerInitWithProductKey
	.hidden	s3eNextpeerInitWithProductKey
	.type	s3eNextpeerInitWithProductKey, %function
s3eNextpeerInitWithProductKey:
.LFB2:
	.loc 1 27 0
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 0
	str	lr, [sp, #-4]!
.LCFI2:
	sub	sp, sp, #12
.LCFI3:
	str	r0, [sp, #4]
	.loc 1 28 0
	ldr	r0, [sp, #4]
	bl	_Z38s3eNextpeerInitWithProductKey_platformPKc(PLT)
	.loc 1 29 0
	add	sp, sp, #12
	ldmfd	sp!, {pc}
.LFE2:
	.size	s3eNextpeerInitWithProductKey, .-s3eNextpeerInitWithProductKey
	.section	.text.s3eNextpeerLaunchDashboard,"ax",%progbits
	.align	2
	.global	s3eNextpeerLaunchDashboard
	.hidden	s3eNextpeerLaunchDashboard
	.type	s3eNextpeerLaunchDashboard, %function
s3eNextpeerLaunchDashboard:
.LFB3:
	.loc 1 32 0
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, lr}
.LCFI4:
	.loc 1 33 0
	bl	_Z35s3eNextpeerLaunchDashboard_platformv(PLT)
	.loc 1 34 0
	ldmfd	sp!, {r4, pc}
.LFE3:
	.size	s3eNextpeerLaunchDashboard, .-s3eNextpeerLaunchDashboard
	.section	.text.s3eNextpeerLaunchDashboardWithCurrencyAmount,"ax",%progbits
	.align	2
	.global	s3eNextpeerLaunchDashboardWithCurrencyAmount
	.hidden	s3eNextpeerLaunchDashboardWithCurrencyAmount
	.type	s3eNextpeerLaunchDashboardWithCurrencyAmount, %function
s3eNextpeerLaunchDashboardWithCurrencyAmount:
.LFB4:
	.loc 1 37 0
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 0
	str	lr, [sp, #-4]!
.LCFI5:
	sub	sp, sp, #12
.LCFI6:
	str	r0, [sp, #4]
	.loc 1 38 0
	ldr	r0, [sp, #4]
	bl	_Z53s3eNextpeerLaunchDashboardWithCurrencyAmount_platformj(PLT)
	.loc 1 39 0
	add	sp, sp, #12
	ldmfd	sp!, {pc}
.LFE4:
	.size	s3eNextpeerLaunchDashboardWithCurrencyAmount, .-s3eNextpeerLaunchDashboardWithCurrencyAmount
	.section	.text.s3eNextpeerDismissDashboard,"ax",%progbits
	.align	2
	.global	s3eNextpeerDismissDashboard
	.hidden	s3eNextpeerDismissDashboard
	.type	s3eNextpeerDismissDashboard, %function
s3eNextpeerDismissDashboard:
.LFB5:
	.loc 1 42 0
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, lr}
.LCFI7:
	.loc 1 43 0
	bl	_Z36s3eNextpeerDismissDashboard_platformv(PLT)
	.loc 1 44 0
	ldmfd	sp!, {r4, pc}
.LFE5:
	.size	s3eNextpeerDismissDashboard, .-s3eNextpeerDismissDashboard
	.section	.text.s3eNextpeerShutDown,"ax",%progbits
	.align	2
	.global	s3eNextpeerShutDown
	.hidden	s3eNextpeerShutDown
	.type	s3eNextpeerShutDown, %function
s3eNextpeerShutDown:
.LFB6:
	.loc 1 47 0
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, lr}
.LCFI8:
	.loc 1 48 0
	bl	_Z28s3eNextpeerShutDown_platformv(PLT)
	.loc 1 49 0
	ldmfd	sp!, {r4, pc}
.LFE6:
	.size	s3eNextpeerShutDown, .-s3eNextpeerShutDown
	.section	.text.s3eNextpeerReportScoreForCurrentTournament,"ax",%progbits
	.align	2
	.global	s3eNextpeerReportScoreForCurrentTournament
	.hidden	s3eNextpeerReportScoreForCurrentTournament
	.type	s3eNextpeerReportScoreForCurrentTournament, %function
s3eNextpeerReportScoreForCurrentTournament:
.LFB7:
	.loc 1 52 0
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 0
	str	lr, [sp, #-4]!
.LCFI9:
	sub	sp, sp, #12
.LCFI10:
	str	r0, [sp, #4]
	.loc 1 53 0
	ldr	r0, [sp, #4]
	bl	_Z51s3eNextpeerReportScoreForCurrentTournament_platformj(PLT)
	.loc 1 54 0
	add	sp, sp, #12
	ldmfd	sp!, {pc}
.LFE7:
	.size	s3eNextpeerReportScoreForCurrentTournament, .-s3eNextpeerReportScoreForCurrentTournament
	.section	.text.s3eNextpeerIsCurrentlyInTournament,"ax",%progbits
	.align	2
	.global	s3eNextpeerIsCurrentlyInTournament
	.hidden	s3eNextpeerIsCurrentlyInTournament
	.type	s3eNextpeerIsCurrentlyInTournament, %function
s3eNextpeerIsCurrentlyInTournament:
.LFB8:
	.loc 1 57 0
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, lr}
.LCFI11:
	.loc 1 58 0
	bl	_Z43s3eNextpeerIsCurrentlyInTournament_platformv(PLT)
	mov	r3, r0
	.loc 1 59 0
	mov	r0, r3
	ldmfd	sp!, {r4, pc}
.LFE8:
	.size	s3eNextpeerIsCurrentlyInTournament, .-s3eNextpeerIsCurrentlyInTournament
	.section	.text.s3eNextpeerTimeLeftInTournament,"ax",%progbits
	.align	2
	.global	s3eNextpeerTimeLeftInTournament
	.hidden	s3eNextpeerTimeLeftInTournament
	.type	s3eNextpeerTimeLeftInTournament, %function
s3eNextpeerTimeLeftInTournament:
.LFB9:
	.loc 1 62 0
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, lr}
.LCFI12:
	.loc 1 63 0
	bl	_Z40s3eNextpeerTimeLeftInTournament_platformv(PLT)
	mov	r3, r0
	.loc 1 64 0
	mov	r0, r3
	ldmfd	sp!, {r4, pc}
.LFE9:
	.size	s3eNextpeerTimeLeftInTournament, .-s3eNextpeerTimeLeftInTournament
	.section	.text.s3eNextpeerReportForfeitForCurrentTournament,"ax",%progbits
	.align	2
	.global	s3eNextpeerReportForfeitForCurrentTournament
	.hidden	s3eNextpeerReportForfeitForCurrentTournament
	.type	s3eNextpeerReportForfeitForCurrentTournament, %function
s3eNextpeerReportForfeitForCurrentTournament:
.LFB10:
	.loc 1 67 0
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, lr}
.LCFI13:
	.loc 1 68 0
	bl	_Z53s3eNextpeerReportForfeitForCurrentTournament_platformv(PLT)
	.loc 1 69 0
	ldmfd	sp!, {r4, pc}
.LFE10:
	.size	s3eNextpeerReportForfeitForCurrentTournament, .-s3eNextpeerReportForfeitForCurrentTournament
	.section	.text.s3eNextpeerPushDataToOtherPlayers,"ax",%progbits
	.align	2
	.global	s3eNextpeerPushDataToOtherPlayers
	.hidden	s3eNextpeerPushDataToOtherPlayers
	.type	s3eNextpeerPushDataToOtherPlayers, %function
s3eNextpeerPushDataToOtherPlayers:
.LFB11:
	.loc 1 72 0
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 0
	str	lr, [sp, #-4]!
.LCFI14:
	sub	sp, sp, #12
.LCFI15:
	str	r0, [sp, #4]
	str	r1, [sp, #0]
	.loc 1 73 0
	ldr	r0, [sp, #4]
	ldr	r1, [sp, #0]
	bl	_Z42s3eNextpeerPushDataToOtherPlayers_platformPKvj(PLT)
	.loc 1 74 0
	add	sp, sp, #12
	ldmfd	sp!, {pc}
.LFE11:
	.size	s3eNextpeerPushDataToOtherPlayers, .-s3eNextpeerPushDataToOtherPlayers
	.section	.text.s3eNextpeerPushNotificationToOtherPlayers,"ax",%progbits
	.align	2
	.global	s3eNextpeerPushNotificationToOtherPlayers
	.hidden	s3eNextpeerPushNotificationToOtherPlayers
	.type	s3eNextpeerPushNotificationToOtherPlayers, %function
s3eNextpeerPushNotificationToOtherPlayers:
.LFB12:
	.loc 1 77 0
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 0
	str	lr, [sp, #-4]!
.LCFI16:
	sub	sp, sp, #12
.LCFI17:
	str	r0, [sp, #4]
	.loc 1 78 0
	ldr	r0, [sp, #4]
	bl	_Z50s3eNextpeerPushNotificationToOtherPlayers_platformPKc(PLT)
	.loc 1 79 0
	add	sp, sp, #12
	ldmfd	sp!, {pc}
.LFE12:
	.size	s3eNextpeerPushNotificationToOtherPlayers, .-s3eNextpeerPushNotificationToOtherPlayers
	.section	.text.s3eNextpeerHandleOpenURL,"ax",%progbits
	.align	2
	.global	s3eNextpeerHandleOpenURL
	.hidden	s3eNextpeerHandleOpenURL
	.type	s3eNextpeerHandleOpenURL, %function
s3eNextpeerHandleOpenURL:
.LFB13:
	.loc 1 82 0
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 0
	str	lr, [sp, #-4]!
.LCFI18:
	sub	sp, sp, #12
.LCFI19:
	str	r0, [sp, #4]
	.loc 1 83 0
	ldr	r0, [sp, #4]
	bl	_Z33s3eNextpeerHandleOpenURL_platformPv(PLT)
	.loc 1 84 0
	add	sp, sp, #12
	ldmfd	sp!, {pc}
.LFE13:
	.size	s3eNextpeerHandleOpenURL, .-s3eNextpeerHandleOpenURL
	.section	.text.s3eNextpeerRegisterOpenURLCallback,"ax",%progbits
	.align	2
	.global	s3eNextpeerRegisterOpenURLCallback
	.hidden	s3eNextpeerRegisterOpenURLCallback
	.type	s3eNextpeerRegisterOpenURLCallback, %function
s3eNextpeerRegisterOpenURLCallback:
.LFB14:
	.loc 1 87 0
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, lr}
.LCFI20:
	.loc 1 88 0
	bl	_Z43s3eNextpeerRegisterOpenURLCallback_platformv(PLT)
	.loc 1 89 0
	ldmfd	sp!, {r4, pc}
.LFE14:
	.size	s3eNextpeerRegisterOpenURLCallback, .-s3eNextpeerRegisterOpenURLCallback
	.section	.text.s3eNextpeerSetUnifiedVirtualCurrencySupport,"ax",%progbits
	.align	2
	.global	s3eNextpeerSetUnifiedVirtualCurrencySupport
	.hidden	s3eNextpeerSetUnifiedVirtualCurrencySupport
	.type	s3eNextpeerSetUnifiedVirtualCurrencySupport, %function
s3eNextpeerSetUnifiedVirtualCurrencySupport:
.LFB15:
	.loc 1 92 0
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 0
	str	lr, [sp, #-4]!
.LCFI21:
	sub	sp, sp, #12
.LCFI22:
	mov	r3, r0
	strb	r3, [sp, #7]
	.loc 1 93 0
	ldrb	r3, [sp, #7]	@ zero_extendqisi2
	mov	r0, r3
	bl	_Z52s3eNextpeerSetUnifiedVirtualCurrencySupport_platformh(PLT)
	.loc 1 94 0
	add	sp, sp, #12
	ldmfd	sp!, {pc}
.LFE15:
	.size	s3eNextpeerSetUnifiedVirtualCurrencySupport, .-s3eNextpeerSetUnifiedVirtualCurrencySupport
	.section	.text.s3eNextpeerOpenFeed,"ax",%progbits
	.align	2
	.global	s3eNextpeerOpenFeed
	.hidden	s3eNextpeerOpenFeed
	.type	s3eNextpeerOpenFeed, %function
s3eNextpeerOpenFeed:
.LFB16:
	.loc 1 97 0
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, lr}
.LCFI23:
	.loc 1 98 0
	bl	_Z28s3eNextpeerOpenFeed_platformv(PLT)
	.loc 1 99 0
	ldmfd	sp!, {r4, pc}
.LFE16:
	.size	s3eNextpeerOpenFeed, .-s3eNextpeerOpenFeed
	.section	.text.s3eNextpeerRegisterCallback,"ax",%progbits
	.align	2
	.global	s3eNextpeerRegisterCallback
	.hidden	s3eNextpeerRegisterCallback
	.type	s3eNextpeerRegisterCallback, %function
s3eNextpeerRegisterCallback:
.LFB17:
	.loc 1 102 0
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 0, uses_anonymous_args = 0
	str	lr, [sp, #-4]!
.LCFI24:
	sub	sp, sp, #20
.LCFI25:
	str	r0, [sp, #12]
	str	r1, [sp, #8]
	str	r2, [sp, #4]
	.loc 1 103 0
	ldr	r0, [sp, #12]
	ldr	r1, [sp, #8]
	ldr	r2, [sp, #4]
	bl	_Z36s3eNextpeerRegisterCallback_platform18s3eNextperCallbackPFiPvS0_ES0_(PLT)
	mov	r3, r0
	.loc 1 104 0
	mov	r0, r3
	add	sp, sp, #20
	ldmfd	sp!, {pc}
.LFE17:
	.size	s3eNextpeerRegisterCallback, .-s3eNextpeerRegisterCallback
	.section	.text.s3eNextpeerUnRegisterCallback,"ax",%progbits
	.align	2
	.global	s3eNextpeerUnRegisterCallback
	.hidden	s3eNextpeerUnRegisterCallback
	.type	s3eNextpeerUnRegisterCallback, %function
s3eNextpeerUnRegisterCallback:
.LFB18:
	.loc 1 107 0
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 0
	str	lr, [sp, #-4]!
.LCFI26:
	sub	sp, sp, #12
.LCFI27:
	str	r0, [sp, #4]
	str	r1, [sp, #0]
	.loc 1 108 0
	ldr	r0, [sp, #4]
	ldr	r1, [sp, #0]
	bl	_Z38s3eNextpeerUnRegisterCallback_platform18s3eNextperCallbackPFiPvS0_E(PLT)
	mov	r3, r0
	.loc 1 109 0
	mov	r0, r3
	add	sp, sp, #12
	ldmfd	sp!, {pc}
.LFE18:
	.size	s3eNextpeerUnRegisterCallback, .-s3eNextpeerUnRegisterCallback
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
	.4byte	.LFB0
	.4byte	.LFE0-.LFB0
	.byte	0x4
	.4byte	.LCFI0-.LFB0
	.byte	0xe
	.uleb128 0x8
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
	.4byte	.LFB1
	.4byte	.LFE1-.LFB1
	.byte	0x4
	.4byte	.LCFI1-.LFB1
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
	.4byte	.LFB2
	.4byte	.LFE2-.LFB2
	.byte	0x4
	.4byte	.LCFI2-.LFB2
	.byte	0xe
	.uleb128 0x4
	.byte	0x4
	.4byte	.LCFI3-.LCFI2
	.byte	0xe
	.uleb128 0x10
	.byte	0x11
	.uleb128 0xe
	.sleb128 1
	.align	2
.LEFDE4:
.LSFDE6:
	.4byte	.LEFDE6-.LASFDE6
.LASFDE6:
	.4byte	.Lframe0
	.4byte	.LFB3
	.4byte	.LFE3-.LFB3
	.byte	0x4
	.4byte	.LCFI4-.LFB3
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
	.4byte	.LFB4
	.4byte	.LFE4-.LFB4
	.byte	0x4
	.4byte	.LCFI5-.LFB4
	.byte	0xe
	.uleb128 0x4
	.byte	0x4
	.4byte	.LCFI6-.LCFI5
	.byte	0xe
	.uleb128 0x10
	.byte	0x11
	.uleb128 0xe
	.sleb128 1
	.align	2
.LEFDE8:
.LSFDE10:
	.4byte	.LEFDE10-.LASFDE10
.LASFDE10:
	.4byte	.Lframe0
	.4byte	.LFB5
	.4byte	.LFE5-.LFB5
	.byte	0x4
	.4byte	.LCFI7-.LFB5
	.byte	0xe
	.uleb128 0x8
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
	.4byte	.LFB6
	.4byte	.LFE6-.LFB6
	.byte	0x4
	.4byte	.LCFI8-.LFB6
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
.LSFDE14:
	.4byte	.LEFDE14-.LASFDE14
.LASFDE14:
	.4byte	.Lframe0
	.4byte	.LFB7
	.4byte	.LFE7-.LFB7
	.byte	0x4
	.4byte	.LCFI9-.LFB7
	.byte	0xe
	.uleb128 0x4
	.byte	0x4
	.4byte	.LCFI10-.LCFI9
	.byte	0xe
	.uleb128 0x10
	.byte	0x11
	.uleb128 0xe
	.sleb128 1
	.align	2
.LEFDE14:
.LSFDE16:
	.4byte	.LEFDE16-.LASFDE16
.LASFDE16:
	.4byte	.Lframe0
	.4byte	.LFB8
	.4byte	.LFE8-.LFB8
	.byte	0x4
	.4byte	.LCFI11-.LFB8
	.byte	0xe
	.uleb128 0x8
	.byte	0x11
	.uleb128 0xe
	.sleb128 1
	.byte	0x11
	.uleb128 0x4
	.sleb128 2
	.align	2
.LEFDE16:
.LSFDE18:
	.4byte	.LEFDE18-.LASFDE18
.LASFDE18:
	.4byte	.Lframe0
	.4byte	.LFB9
	.4byte	.LFE9-.LFB9
	.byte	0x4
	.4byte	.LCFI12-.LFB9
	.byte	0xe
	.uleb128 0x8
	.byte	0x11
	.uleb128 0xe
	.sleb128 1
	.byte	0x11
	.uleb128 0x4
	.sleb128 2
	.align	2
.LEFDE18:
.LSFDE20:
	.4byte	.LEFDE20-.LASFDE20
.LASFDE20:
	.4byte	.Lframe0
	.4byte	.LFB10
	.4byte	.LFE10-.LFB10
	.byte	0x4
	.4byte	.LCFI13-.LFB10
	.byte	0xe
	.uleb128 0x8
	.byte	0x11
	.uleb128 0xe
	.sleb128 1
	.byte	0x11
	.uleb128 0x4
	.sleb128 2
	.align	2
.LEFDE20:
.LSFDE22:
	.4byte	.LEFDE22-.LASFDE22
.LASFDE22:
	.4byte	.Lframe0
	.4byte	.LFB11
	.4byte	.LFE11-.LFB11
	.byte	0x4
	.4byte	.LCFI14-.LFB11
	.byte	0xe
	.uleb128 0x4
	.byte	0x4
	.4byte	.LCFI15-.LCFI14
	.byte	0xe
	.uleb128 0x10
	.byte	0x11
	.uleb128 0xe
	.sleb128 1
	.align	2
.LEFDE22:
.LSFDE24:
	.4byte	.LEFDE24-.LASFDE24
.LASFDE24:
	.4byte	.Lframe0
	.4byte	.LFB12
	.4byte	.LFE12-.LFB12
	.byte	0x4
	.4byte	.LCFI16-.LFB12
	.byte	0xe
	.uleb128 0x4
	.byte	0x4
	.4byte	.LCFI17-.LCFI16
	.byte	0xe
	.uleb128 0x10
	.byte	0x11
	.uleb128 0xe
	.sleb128 1
	.align	2
.LEFDE24:
.LSFDE26:
	.4byte	.LEFDE26-.LASFDE26
.LASFDE26:
	.4byte	.Lframe0
	.4byte	.LFB13
	.4byte	.LFE13-.LFB13
	.byte	0x4
	.4byte	.LCFI18-.LFB13
	.byte	0xe
	.uleb128 0x4
	.byte	0x4
	.4byte	.LCFI19-.LCFI18
	.byte	0xe
	.uleb128 0x10
	.byte	0x11
	.uleb128 0xe
	.sleb128 1
	.align	2
.LEFDE26:
.LSFDE28:
	.4byte	.LEFDE28-.LASFDE28
.LASFDE28:
	.4byte	.Lframe0
	.4byte	.LFB14
	.4byte	.LFE14-.LFB14
	.byte	0x4
	.4byte	.LCFI20-.LFB14
	.byte	0xe
	.uleb128 0x8
	.byte	0x11
	.uleb128 0xe
	.sleb128 1
	.byte	0x11
	.uleb128 0x4
	.sleb128 2
	.align	2
.LEFDE28:
.LSFDE30:
	.4byte	.LEFDE30-.LASFDE30
.LASFDE30:
	.4byte	.Lframe0
	.4byte	.LFB15
	.4byte	.LFE15-.LFB15
	.byte	0x4
	.4byte	.LCFI21-.LFB15
	.byte	0xe
	.uleb128 0x4
	.byte	0x4
	.4byte	.LCFI22-.LCFI21
	.byte	0xe
	.uleb128 0x10
	.byte	0x11
	.uleb128 0xe
	.sleb128 1
	.align	2
.LEFDE30:
.LSFDE32:
	.4byte	.LEFDE32-.LASFDE32
.LASFDE32:
	.4byte	.Lframe0
	.4byte	.LFB16
	.4byte	.LFE16-.LFB16
	.byte	0x4
	.4byte	.LCFI23-.LFB16
	.byte	0xe
	.uleb128 0x8
	.byte	0x11
	.uleb128 0xe
	.sleb128 1
	.byte	0x11
	.uleb128 0x4
	.sleb128 2
	.align	2
.LEFDE32:
.LSFDE34:
	.4byte	.LEFDE34-.LASFDE34
.LASFDE34:
	.4byte	.Lframe0
	.4byte	.LFB17
	.4byte	.LFE17-.LFB17
	.byte	0x4
	.4byte	.LCFI24-.LFB17
	.byte	0xe
	.uleb128 0x4
	.byte	0x4
	.4byte	.LCFI25-.LCFI24
	.byte	0xe
	.uleb128 0x18
	.byte	0x11
	.uleb128 0xe
	.sleb128 1
	.align	2
.LEFDE34:
.LSFDE36:
	.4byte	.LEFDE36-.LASFDE36
.LASFDE36:
	.4byte	.Lframe0
	.4byte	.LFB18
	.4byte	.LFE18-.LFB18
	.byte	0x4
	.4byte	.LCFI26-.LFB18
	.byte	0xe
	.uleb128 0x4
	.byte	0x4
	.4byte	.LCFI27-.LCFI26
	.byte	0xe
	.uleb128 0x10
	.byte	0x11
	.uleb128 0xe
	.sleb128 1
	.align	2
.LEFDE36:
	.text
.Letext0:
	.section	.debug_loc,"",%progbits
.Ldebug_loc0:
.LLST0:
	.4byte	.LFB0
	.4byte	.LCFI0
	.2byte	0x2
	.byte	0x7d
	.sleb128 0
	.4byte	.LCFI0
	.4byte	.LFE0
	.2byte	0x2
	.byte	0x7d
	.sleb128 8
	.4byte	0x0
	.4byte	0x0
.LLST1:
	.4byte	.LFB1
	.4byte	.LCFI1
	.2byte	0x2
	.byte	0x7d
	.sleb128 0
	.4byte	.LCFI1
	.4byte	.LFE1
	.2byte	0x2
	.byte	0x7d
	.sleb128 8
	.4byte	0x0
	.4byte	0x0
.LLST2:
	.4byte	.LFB2
	.4byte	.LCFI2
	.2byte	0x2
	.byte	0x7d
	.sleb128 0
	.4byte	.LCFI2
	.4byte	.LCFI3
	.2byte	0x2
	.byte	0x7d
	.sleb128 4
	.4byte	.LCFI3
	.4byte	.LFE2
	.2byte	0x2
	.byte	0x7d
	.sleb128 16
	.4byte	0x0
	.4byte	0x0
.LLST3:
	.4byte	.LFB3
	.4byte	.LCFI4
	.2byte	0x2
	.byte	0x7d
	.sleb128 0
	.4byte	.LCFI4
	.4byte	.LFE3
	.2byte	0x2
	.byte	0x7d
	.sleb128 8
	.4byte	0x0
	.4byte	0x0
.LLST4:
	.4byte	.LFB4
	.4byte	.LCFI5
	.2byte	0x2
	.byte	0x7d
	.sleb128 0
	.4byte	.LCFI5
	.4byte	.LCFI6
	.2byte	0x2
	.byte	0x7d
	.sleb128 4
	.4byte	.LCFI6
	.4byte	.LFE4
	.2byte	0x2
	.byte	0x7d
	.sleb128 16
	.4byte	0x0
	.4byte	0x0
.LLST5:
	.4byte	.LFB5
	.4byte	.LCFI7
	.2byte	0x2
	.byte	0x7d
	.sleb128 0
	.4byte	.LCFI7
	.4byte	.LFE5
	.2byte	0x2
	.byte	0x7d
	.sleb128 8
	.4byte	0x0
	.4byte	0x0
.LLST6:
	.4byte	.LFB6
	.4byte	.LCFI8
	.2byte	0x2
	.byte	0x7d
	.sleb128 0
	.4byte	.LCFI8
	.4byte	.LFE6
	.2byte	0x2
	.byte	0x7d
	.sleb128 8
	.4byte	0x0
	.4byte	0x0
.LLST7:
	.4byte	.LFB7
	.4byte	.LCFI9
	.2byte	0x2
	.byte	0x7d
	.sleb128 0
	.4byte	.LCFI9
	.4byte	.LCFI10
	.2byte	0x2
	.byte	0x7d
	.sleb128 4
	.4byte	.LCFI10
	.4byte	.LFE7
	.2byte	0x2
	.byte	0x7d
	.sleb128 16
	.4byte	0x0
	.4byte	0x0
.LLST8:
	.4byte	.LFB8
	.4byte	.LCFI11
	.2byte	0x2
	.byte	0x7d
	.sleb128 0
	.4byte	.LCFI11
	.4byte	.LFE8
	.2byte	0x2
	.byte	0x7d
	.sleb128 8
	.4byte	0x0
	.4byte	0x0
.LLST9:
	.4byte	.LFB9
	.4byte	.LCFI12
	.2byte	0x2
	.byte	0x7d
	.sleb128 0
	.4byte	.LCFI12
	.4byte	.LFE9
	.2byte	0x2
	.byte	0x7d
	.sleb128 8
	.4byte	0x0
	.4byte	0x0
.LLST10:
	.4byte	.LFB10
	.4byte	.LCFI13
	.2byte	0x2
	.byte	0x7d
	.sleb128 0
	.4byte	.LCFI13
	.4byte	.LFE10
	.2byte	0x2
	.byte	0x7d
	.sleb128 8
	.4byte	0x0
	.4byte	0x0
.LLST11:
	.4byte	.LFB11
	.4byte	.LCFI14
	.2byte	0x2
	.byte	0x7d
	.sleb128 0
	.4byte	.LCFI14
	.4byte	.LCFI15
	.2byte	0x2
	.byte	0x7d
	.sleb128 4
	.4byte	.LCFI15
	.4byte	.LFE11
	.2byte	0x2
	.byte	0x7d
	.sleb128 16
	.4byte	0x0
	.4byte	0x0
.LLST12:
	.4byte	.LFB12
	.4byte	.LCFI16
	.2byte	0x2
	.byte	0x7d
	.sleb128 0
	.4byte	.LCFI16
	.4byte	.LCFI17
	.2byte	0x2
	.byte	0x7d
	.sleb128 4
	.4byte	.LCFI17
	.4byte	.LFE12
	.2byte	0x2
	.byte	0x7d
	.sleb128 16
	.4byte	0x0
	.4byte	0x0
.LLST13:
	.4byte	.LFB13
	.4byte	.LCFI18
	.2byte	0x2
	.byte	0x7d
	.sleb128 0
	.4byte	.LCFI18
	.4byte	.LCFI19
	.2byte	0x2
	.byte	0x7d
	.sleb128 4
	.4byte	.LCFI19
	.4byte	.LFE13
	.2byte	0x2
	.byte	0x7d
	.sleb128 16
	.4byte	0x0
	.4byte	0x0
.LLST14:
	.4byte	.LFB14
	.4byte	.LCFI20
	.2byte	0x2
	.byte	0x7d
	.sleb128 0
	.4byte	.LCFI20
	.4byte	.LFE14
	.2byte	0x2
	.byte	0x7d
	.sleb128 8
	.4byte	0x0
	.4byte	0x0
.LLST15:
	.4byte	.LFB15
	.4byte	.LCFI21
	.2byte	0x2
	.byte	0x7d
	.sleb128 0
	.4byte	.LCFI21
	.4byte	.LCFI22
	.2byte	0x2
	.byte	0x7d
	.sleb128 4
	.4byte	.LCFI22
	.4byte	.LFE15
	.2byte	0x2
	.byte	0x7d
	.sleb128 16
	.4byte	0x0
	.4byte	0x0
.LLST16:
	.4byte	.LFB16
	.4byte	.LCFI23
	.2byte	0x2
	.byte	0x7d
	.sleb128 0
	.4byte	.LCFI23
	.4byte	.LFE16
	.2byte	0x2
	.byte	0x7d
	.sleb128 8
	.4byte	0x0
	.4byte	0x0
.LLST17:
	.4byte	.LFB17
	.4byte	.LCFI24
	.2byte	0x2
	.byte	0x7d
	.sleb128 0
	.4byte	.LCFI24
	.4byte	.LCFI25
	.2byte	0x2
	.byte	0x7d
	.sleb128 4
	.4byte	.LCFI25
	.4byte	.LFE17
	.2byte	0x2
	.byte	0x7d
	.sleb128 24
	.4byte	0x0
	.4byte	0x0
.LLST18:
	.4byte	.LFB18
	.4byte	.LCFI26
	.2byte	0x2
	.byte	0x7d
	.sleb128 0
	.4byte	.LCFI26
	.4byte	.LCFI27
	.2byte	0x2
	.byte	0x7d
	.sleb128 4
	.4byte	.LCFI27
	.4byte	.LFE18
	.2byte	0x2
	.byte	0x7d
	.sleb128 16
	.4byte	0x0
	.4byte	0x0
	.file 2 "../../../../s3e/h/s3eTypes.h"
	.file 3 "../h/s3eNextpeer.h"
	.section	.debug_info
	.4byte	0x3ca
	.2byte	0x2
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.4byte	.LASF56
	.byte	0x4
	.4byte	.LASF57
	.4byte	.LASF58
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
	.4byte	.LASF8
	.byte	0x2
	.byte	0x63
	.4byte	0x29
	.uleb128 0x4
	.4byte	.LASF9
	.byte	0x2
	.byte	0x6d
	.4byte	0x45
	.uleb128 0x4
	.4byte	.LASF10
	.byte	0x2
	.byte	0x74
	.4byte	0x4c
	.uleb128 0x5
	.4byte	.LASF13
	.byte	0x4
	.byte	0x2
	.byte	0xcf
	.4byte	0xa2
	.uleb128 0x6
	.4byte	.LASF11
	.sleb128 0
	.uleb128 0x6
	.4byte	.LASF12
	.sleb128 1
	.byte	0x0
	.uleb128 0x4
	.4byte	.LASF13
	.byte	0x2
	.byte	0xd3
	.4byte	0x89
	.uleb128 0x4
	.4byte	.LASF14
	.byte	0x2
	.byte	0xd8
	.4byte	0x68
	.uleb128 0x4
	.4byte	.LASF15
	.byte	0x2
	.byte	0xed
	.4byte	0xc3
	.uleb128 0x7
	.byte	0x4
	.4byte	0xc9
	.uleb128 0x8
	.4byte	0x7e
	.4byte	0xdd
	.uleb128 0x9
	.4byte	0xdd
	.uleb128 0x9
	.4byte	0xdd
	.byte	0x0
	.uleb128 0xa
	.byte	0x4
	.uleb128 0x5
	.4byte	.LASF16
	.byte	0x4
	.byte	0x3
	.byte	0x1b
	.4byte	0x134
	.uleb128 0x6
	.4byte	.LASF17
	.sleb128 0
	.uleb128 0x6
	.4byte	.LASF18
	.sleb128 1
	.uleb128 0x6
	.4byte	.LASF19
	.sleb128 2
	.uleb128 0x6
	.4byte	.LASF20
	.sleb128 3
	.uleb128 0x6
	.4byte	.LASF21
	.sleb128 4
	.uleb128 0x6
	.4byte	.LASF22
	.sleb128 5
	.uleb128 0x6
	.4byte	.LASF23
	.sleb128 6
	.uleb128 0x6
	.4byte	.LASF24
	.sleb128 7
	.uleb128 0x6
	.4byte	.LASF25
	.sleb128 8
	.uleb128 0x6
	.4byte	.LASF26
	.sleb128 9
	.uleb128 0x6
	.4byte	.LASF27
	.sleb128 10
	.uleb128 0x6
	.4byte	.LASF28
	.sleb128 11
	.byte	0x0
	.uleb128 0x4
	.4byte	.LASF16
	.byte	0x3
	.byte	0x29
	.4byte	0xdf
	.uleb128 0x2
	.byte	0x1
	.byte	0x6
	.4byte	.LASF29
	.uleb128 0xb
	.byte	0x1
	.4byte	.LASF59
	.byte	0x1
	.byte	0xe
	.4byte	.LASF60
	.4byte	0xa2
	.4byte	.LFB0
	.4byte	.LFE0
	.4byte	.LLST0
	.uleb128 0xc
	.byte	0x1
	.4byte	.LASF39
	.byte	0x1
	.byte	0x14
	.4byte	.LASF61
	.4byte	.LFB1
	.4byte	.LFE1
	.4byte	.LLST1
	.uleb128 0xd
	.byte	0x1
	.4byte	.LASF30
	.byte	0x1
	.byte	0x1a
	.4byte	.LFB2
	.4byte	.LFE2
	.4byte	.LLST2
	.4byte	0x1a1
	.uleb128 0xe
	.4byte	.LASF32
	.byte	0x1
	.byte	0x1a
	.4byte	0x1a1
	.byte	0x2
	.byte	0x91
	.sleb128 -12
	.byte	0x0
	.uleb128 0x7
	.byte	0x4
	.4byte	0x1a7
	.uleb128 0xf
	.4byte	0x13f
	.uleb128 0x10
	.byte	0x1
	.4byte	.LASF34
	.byte	0x1
	.byte	0x1f
	.4byte	.LFB3
	.4byte	.LFE3
	.4byte	.LLST3
	.uleb128 0xd
	.byte	0x1
	.4byte	.LASF31
	.byte	0x1
	.byte	0x24
	.4byte	.LFB4
	.4byte	.LFE4
	.4byte	.LLST4
	.4byte	0x1e7
	.uleb128 0xe
	.4byte	.LASF33
	.byte	0x1
	.byte	0x24
	.4byte	0x73
	.byte	0x2
	.byte	0x91
	.sleb128 -12
	.byte	0x0
	.uleb128 0x10
	.byte	0x1
	.4byte	.LASF35
	.byte	0x1
	.byte	0x29
	.4byte	.LFB5
	.4byte	.LFE5
	.4byte	.LLST5
	.uleb128 0x10
	.byte	0x1
	.4byte	.LASF36
	.byte	0x1
	.byte	0x2e
	.4byte	.LFB6
	.4byte	.LFE6
	.4byte	.LLST6
	.uleb128 0xd
	.byte	0x1
	.4byte	.LASF37
	.byte	0x1
	.byte	0x33
	.4byte	.LFB7
	.4byte	.LFE7
	.4byte	.LLST7
	.4byte	0x236
	.uleb128 0xe
	.4byte	.LASF38
	.byte	0x1
	.byte	0x33
	.4byte	0x73
	.byte	0x2
	.byte	0x91
	.sleb128 -12
	.byte	0x0
	.uleb128 0x11
	.byte	0x1
	.4byte	.LASF40
	.byte	0x1
	.byte	0x38
	.4byte	0xad
	.4byte	.LFB8
	.4byte	.LFE8
	.4byte	.LLST8
	.uleb128 0x11
	.byte	0x1
	.4byte	.LASF41
	.byte	0x1
	.byte	0x3d
	.4byte	0x73
	.4byte	.LFB9
	.4byte	.LFE9
	.4byte	.LLST9
	.uleb128 0x10
	.byte	0x1
	.4byte	.LASF42
	.byte	0x1
	.byte	0x42
	.4byte	.LFB10
	.4byte	.LFE10
	.4byte	.LLST10
	.uleb128 0xd
	.byte	0x1
	.4byte	.LASF43
	.byte	0x1
	.byte	0x47
	.4byte	.LFB11
	.4byte	.LFE11
	.4byte	.LLST11
	.4byte	0x2af
	.uleb128 0xe
	.4byte	.LASF44
	.byte	0x1
	.byte	0x47
	.4byte	0x2af
	.byte	0x2
	.byte	0x91
	.sleb128 -12
	.uleb128 0xe
	.4byte	.LASF45
	.byte	0x1
	.byte	0x47
	.4byte	0x73
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.byte	0x0
	.uleb128 0x7
	.byte	0x4
	.4byte	0x2b5
	.uleb128 0x12
	.uleb128 0xd
	.byte	0x1
	.4byte	.LASF46
	.byte	0x1
	.byte	0x4c
	.4byte	.LFB12
	.4byte	.LFE12
	.4byte	.LLST12
	.4byte	0x2dd
	.uleb128 0xe
	.4byte	.LASF47
	.byte	0x1
	.byte	0x4c
	.4byte	0x1a1
	.byte	0x2
	.byte	0x91
	.sleb128 -12
	.byte	0x0
	.uleb128 0xd
	.byte	0x1
	.4byte	.LASF48
	.byte	0x1
	.byte	0x51
	.4byte	.LFB13
	.4byte	.LFE13
	.4byte	.LLST13
	.4byte	0x304
	.uleb128 0x13
	.ascii	"url\000"
	.byte	0x1
	.byte	0x51
	.4byte	0xdd
	.byte	0x2
	.byte	0x91
	.sleb128 -12
	.byte	0x0
	.uleb128 0x10
	.byte	0x1
	.4byte	.LASF49
	.byte	0x1
	.byte	0x56
	.4byte	.LFB14
	.4byte	.LFE14
	.4byte	.LLST14
	.uleb128 0xd
	.byte	0x1
	.4byte	.LASF50
	.byte	0x1
	.byte	0x5b
	.4byte	.LFB15
	.4byte	.LFE15
	.4byte	.LLST15
	.4byte	0x33f
	.uleb128 0xe
	.4byte	.LASF51
	.byte	0x1
	.byte	0x5b
	.4byte	0xad
	.byte	0x2
	.byte	0x91
	.sleb128 -9
	.byte	0x0
	.uleb128 0x10
	.byte	0x1
	.4byte	.LASF52
	.byte	0x1
	.byte	0x60
	.4byte	.LFB16
	.4byte	.LFE16
	.4byte	.LLST16
	.uleb128 0x14
	.byte	0x1
	.4byte	.LASF62
	.byte	0x1
	.byte	0x65
	.4byte	0xa2
	.4byte	.LFB17
	.4byte	.LFE17
	.4byte	.LLST17
	.4byte	0x399
	.uleb128 0xe
	.4byte	.LASF53
	.byte	0x1
	.byte	0x65
	.4byte	0x134
	.byte	0x2
	.byte	0x91
	.sleb128 -12
	.uleb128 0x13
	.ascii	"fn\000"
	.byte	0x1
	.byte	0x65
	.4byte	0xb8
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.uleb128 0xe
	.4byte	.LASF54
	.byte	0x1
	.byte	0x65
	.4byte	0xdd
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.byte	0x0
	.uleb128 0x15
	.byte	0x1
	.4byte	.LASF55
	.byte	0x1
	.byte	0x6a
	.4byte	0xa2
	.4byte	.LFB18
	.4byte	.LFE18
	.4byte	.LLST18
	.uleb128 0xe
	.4byte	.LASF53
	.byte	0x1
	.byte	0x6a
	.4byte	0x134
	.byte	0x2
	.byte	0x91
	.sleb128 -12
	.uleb128 0x13
	.ascii	"fn\000"
	.byte	0x1
	.byte	0x6a
	.4byte	0xb8
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.byte	0x0
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
	.uleb128 0x4
	.byte	0x1
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0x0
	.byte	0x0
	.uleb128 0x6
	.uleb128 0x28
	.byte	0x0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x1c
	.uleb128 0xd
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
	.uleb128 0x15
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0x0
	.byte	0x0
	.uleb128 0x9
	.uleb128 0x5
	.byte	0x0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0x0
	.byte	0x0
	.uleb128 0xa
	.uleb128 0xf
	.byte	0x0
	.uleb128 0xb
	.uleb128 0xb
	.byte	0x0
	.byte	0x0
	.uleb128 0xb
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
	.uleb128 0x2007
	.uleb128 0xe
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x1
	.uleb128 0x40
	.uleb128 0x6
	.byte	0x0
	.byte	0x0
	.uleb128 0xc
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
	.uleb128 0x2007
	.uleb128 0xe
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
	.uleb128 0xf
	.uleb128 0x26
	.byte	0x0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0x0
	.byte	0x0
	.uleb128 0x10
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
	.uleb128 0x11
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
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x1
	.uleb128 0x40
	.uleb128 0x6
	.byte	0x0
	.byte	0x0
	.uleb128 0x12
	.uleb128 0x26
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.uleb128 0x13
	.uleb128 0x5
	.byte	0x0
	.uleb128 0x3
	.uleb128 0x8
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
	.uleb128 0x14
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
	.uleb128 0x49
	.uleb128 0x13
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
	.uleb128 0x15
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
	.uleb128 0x49
	.uleb128 0x13
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
	.4byte	0x2b2
	.2byte	0x2
	.4byte	.Ldebug_info0
	.4byte	0x3ce
	.4byte	0x146
	.ascii	"s3eNextpeerInit\000"
	.4byte	0x162
	.ascii	"s3eNextpeerTerminate\000"
	.4byte	0x17a
	.ascii	"s3eNextpeerInitWithProductKey\000"
	.4byte	0x1ac
	.ascii	"s3eNextpeerLaunchDashboard\000"
	.4byte	0x1c0
	.ascii	"s3eNextpeerLaunchDashboardWithCurrencyAmount\000"
	.4byte	0x1e7
	.ascii	"s3eNextpeerDismissDashboard\000"
	.4byte	0x1fb
	.ascii	"s3eNextpeerShutDown\000"
	.4byte	0x20f
	.ascii	"s3eNextpeerReportScoreForCurrentTournament\000"
	.4byte	0x236
	.ascii	"s3eNextpeerIsCurrentlyInTournament\000"
	.4byte	0x24e
	.ascii	"s3eNextpeerTimeLeftInTournament\000"
	.4byte	0x266
	.ascii	"s3eNextpeerReportForfeitForCurrentTournament\000"
	.4byte	0x27a
	.ascii	"s3eNextpeerPushDataToOtherPlayers\000"
	.4byte	0x2b6
	.ascii	"s3eNextpeerPushNotificationToOtherPlayers\000"
	.4byte	0x2dd
	.ascii	"s3eNextpeerHandleOpenURL\000"
	.4byte	0x304
	.ascii	"s3eNextpeerRegisterOpenURLCallback\000"
	.4byte	0x318
	.ascii	"s3eNextpeerSetUnifiedVirtualCurrencySupport\000"
	.4byte	0x33f
	.ascii	"s3eNextpeerOpenFeed\000"
	.4byte	0x353
	.ascii	"s3eNextpeerRegisterCallback\000"
	.4byte	0x399
	.ascii	"s3eNextpeerUnRegisterCallback\000"
	.4byte	0x0
	.section	.debug_aranges,"",%progbits
	.4byte	0xac
	.2byte	0x2
	.4byte	.Ldebug_info0
	.byte	0x4
	.byte	0x0
	.2byte	0x0
	.2byte	0x0
	.4byte	.LFB0
	.4byte	.LFE0-.LFB0
	.4byte	.LFB1
	.4byte	.LFE1-.LFB1
	.4byte	.LFB2
	.4byte	.LFE2-.LFB2
	.4byte	.LFB3
	.4byte	.LFE3-.LFB3
	.4byte	.LFB4
	.4byte	.LFE4-.LFB4
	.4byte	.LFB5
	.4byte	.LFE5-.LFB5
	.4byte	.LFB6
	.4byte	.LFE6-.LFB6
	.4byte	.LFB7
	.4byte	.LFE7-.LFB7
	.4byte	.LFB8
	.4byte	.LFE8-.LFB8
	.4byte	.LFB9
	.4byte	.LFE9-.LFB9
	.4byte	.LFB10
	.4byte	.LFE10-.LFB10
	.4byte	.LFB11
	.4byte	.LFE11-.LFB11
	.4byte	.LFB12
	.4byte	.LFE12-.LFB12
	.4byte	.LFB13
	.4byte	.LFE13-.LFB13
	.4byte	.LFB14
	.4byte	.LFE14-.LFB14
	.4byte	.LFB15
	.4byte	.LFE15-.LFB15
	.4byte	.LFB16
	.4byte	.LFE16-.LFB16
	.4byte	.LFB17
	.4byte	.LFE17-.LFB17
	.4byte	.LFB18
	.4byte	.LFE18-.LFB18
	.4byte	0x0
	.4byte	0x0
	.section	.debug_ranges,"",%progbits
.Ldebug_ranges0:
	.4byte	.LFB0
	.4byte	.LFE0
	.4byte	.LFB1
	.4byte	.LFE1
	.4byte	.LFB2
	.4byte	.LFE2
	.4byte	.LFB3
	.4byte	.LFE3
	.4byte	.LFB4
	.4byte	.LFE4
	.4byte	.LFB5
	.4byte	.LFE5
	.4byte	.LFB6
	.4byte	.LFE6
	.4byte	.LFB7
	.4byte	.LFE7
	.4byte	.LFB8
	.4byte	.LFE8
	.4byte	.LFB9
	.4byte	.LFE9
	.4byte	.LFB10
	.4byte	.LFE10
	.4byte	.LFB11
	.4byte	.LFE11
	.4byte	.LFB12
	.4byte	.LFE12
	.4byte	.LFB13
	.4byte	.LFE13
	.4byte	.LFB14
	.4byte	.LFE14
	.4byte	.LFB15
	.4byte	.LFE15
	.4byte	.LFB16
	.4byte	.LFE16
	.4byte	.LFB17
	.4byte	.LFE17
	.4byte	.LFB18
	.4byte	.LFE18
	.4byte	0x0
	.4byte	0x0
	.section	.debug_str,"MS",%progbits,1
.LASF25:
	.ascii	"S3E_NEXTPEER_CALLBACK_DID_RECEIVE_CUSTOM_MESSAGE\000"
.LASF52:
	.ascii	"s3eNextpeerOpenFeed\000"
.LASF54:
	.ascii	"pData\000"
.LASF17:
	.ascii	"S3E_NEXTPEER_CALLBACK_DID_TOURNAMENT_START\000"
.LASF3:
	.ascii	"short int\000"
.LASF26:
	.ascii	"S3E_NEXTPEER_CALLBACK_OPEN_URL_CALLED\000"
.LASF59:
	.ascii	"s3eNextpeerInit\000"
.LASF16:
	.ascii	"s3eNextperCallback\000"
.LASF51:
	.ascii	"unifiedVirtualCurrencySupported\000"
.LASF18:
	.ascii	"S3E_NEXTPEER_CALLBACK_DID_TOURNAMENT_END\000"
.LASF60:
	.ascii	"_Z15s3eNextpeerInitv\000"
.LASF47:
	.ascii	"notice\000"
.LASF27:
	.ascii	"S3E_NEXTPEER_CALLBACK_VCURRENCY_ADD_CURRENCY_AMOUNT"
	.ascii	"\000"
.LASF8:
	.ascii	"uint8\000"
.LASF35:
	.ascii	"s3eNextpeerDismissDashboard\000"
.LASF45:
	.ascii	"length\000"
.LASF5:
	.ascii	"long long int\000"
.LASF48:
	.ascii	"s3eNextpeerHandleOpenURL\000"
.LASF56:
	.ascii	"GNU C++ 4.4.3\000"
.LASF22:
	.ascii	"S3E_NEXTPEER_CALLBACK_DASHBOARD_DID_DISAPPEAR\000"
.LASF34:
	.ascii	"s3eNextpeerLaunchDashboard\000"
.LASF20:
	.ascii	"S3E_NEXTPEER_CALLBACK_DASHBOARD_DID_APPEAR\000"
.LASF53:
	.ascii	"cbid\000"
.LASF41:
	.ascii	"s3eNextpeerTimeLeftInTournament\000"
.LASF55:
	.ascii	"s3eNextpeerUnRegisterCallback\000"
.LASF11:
	.ascii	"S3E_RESULT_SUCCESS\000"
.LASF50:
	.ascii	"s3eNextpeerSetUnifiedVirtualCurrencySupport\000"
.LASF15:
	.ascii	"s3eCallback\000"
.LASF28:
	.ascii	"S3E_NEXTPEER_CALLBACK_MAX\000"
.LASF13:
	.ascii	"s3eResult\000"
.LASF0:
	.ascii	"unsigned char\000"
.LASF43:
	.ascii	"s3eNextpeerPushDataToOtherPlayers\000"
.LASF1:
	.ascii	"signed char\000"
.LASF38:
	.ascii	"score\000"
.LASF6:
	.ascii	"long long unsigned int\000"
.LASF4:
	.ascii	"unsigned int\000"
.LASF42:
	.ascii	"s3eNextpeerReportForfeitForCurrentTournament\000"
.LASF2:
	.ascii	"short unsigned int\000"
.LASF58:
	.ascii	"c:\\\\Marmalade\\\\7.2\\\\examples\\\\HelloWorld\\\\"
	.ascii	"s3eNextpeer\\\\build_s3enextpeer_android_linux_scon"
	.ascii	"s_arm\000"
.LASF39:
	.ascii	"s3eNextpeerTerminate\000"
.LASF21:
	.ascii	"S3E_NEXTPEER_CALLBACK_DASHBOARD_WILL_DISAPPEAR\000"
.LASF29:
	.ascii	"char\000"
.LASF19:
	.ascii	"S3E_NEXTPEER_CALLBACK_DASHBOARD_WILL_APPEAR\000"
.LASF24:
	.ascii	"S3E_NEXTPEER_CALLBACK_WILL_TOURNAMENT_START\000"
.LASF33:
	.ascii	"unifiedVirtualCurrencyAmount\000"
.LASF61:
	.ascii	"_Z20s3eNextpeerTerminatev\000"
.LASF44:
	.ascii	"data\000"
.LASF36:
	.ascii	"s3eNextpeerShutDown\000"
.LASF62:
	.ascii	"s3eNextpeerRegisterCallback\000"
.LASF9:
	.ascii	"uint32\000"
.LASF37:
	.ascii	"s3eNextpeerReportScoreForCurrentTournament\000"
.LASF7:
	.ascii	"long unsigned int\000"
.LASF10:
	.ascii	"int32\000"
.LASF57:
	.ascii	"C:\\Marmalade\\7.2\\examples\\HelloWorld\\s3eNextpe"
	.ascii	"er\\source\\generic\\s3eNextpeer.cpp\000"
.LASF14:
	.ascii	"s3eBool\000"
.LASF12:
	.ascii	"S3E_RESULT_ERROR\000"
.LASF30:
	.ascii	"s3eNextpeerInitWithProductKey\000"
.LASF23:
	.ascii	"S3E_NEXTPEER_CALLBACK_DASHBOARD_RETURN_TO_GAME\000"
.LASF40:
	.ascii	"s3eNextpeerIsCurrentlyInTournament\000"
.LASF32:
	.ascii	"productKey\000"
.LASF49:
	.ascii	"s3eNextpeerRegisterOpenURLCallback\000"
.LASF46:
	.ascii	"s3eNextpeerPushNotificationToOtherPlayers\000"
.LASF31:
	.ascii	"s3eNextpeerLaunchDashboardWithCurrencyAmount\000"
	.ident	"GCC: (GNU) 4.4.3"
	.section	.note.GNU-stack,"",%progbits
