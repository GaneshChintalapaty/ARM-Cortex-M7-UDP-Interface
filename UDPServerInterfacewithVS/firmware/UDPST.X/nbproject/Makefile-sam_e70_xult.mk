#
# Generated Makefile - do not edit!
#
# Edit the Makefile in the project folder instead (../Makefile). Each target
# has a -pre and a -post target defined where you can add customized code.
#
# This makefile implements configuration specific macros and targets.


# Include project Makefile
ifeq "${IGNORE_LOCAL}" "TRUE"
# do not include local makefile. User is passing all local related variables already
else
include Makefile
# Include makefile containing local settings
ifeq "$(wildcard nbproject/Makefile-local-sam_e70_xult.mk)" "nbproject/Makefile-local-sam_e70_xult.mk"
include nbproject/Makefile-local-sam_e70_xult.mk
endif
endif

# Environment
MKDIR=gnumkdir -p
RM=rm -f 
MV=mv 
CP=cp 

# Macros
CND_CONF=sam_e70_xult
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
IMAGE_TYPE=debug
OUTPUT_SUFFIX=elf
DEBUGGABLE_SUFFIX=elf
FINAL_IMAGE=${DISTDIR}/UDPST.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}
else
IMAGE_TYPE=production
OUTPUT_SUFFIX=hex
DEBUGGABLE_SUFFIX=elf
FINAL_IMAGE=${DISTDIR}/UDPST.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}
endif

ifeq ($(COMPARE_BUILD), true)
COMPARISON_BUILD=-mafrlcsj
else
COMPARISON_BUILD=
endif

ifdef SUB_IMAGE_ADDRESS

else
SUB_IMAGE_ADDRESS_COMMAND=
endif

# Object Directory
OBJECTDIR=build/${CND_CONF}/${IMAGE_TYPE}

# Distribution Directory
DISTDIR=dist/${CND_CONF}/${IMAGE_TYPE}

# Source Files Quoted if spaced
SOURCEFILES_QUOTED_IF_SPACED=../src/config/sam_e70_xult/bsp/bsp.c ../src/config/sam_e70_xult/driver/ethphy/src/dynamic/drv_ethphy.c ../src/config/sam_e70_xult/driver/ethphy/src/dynamic/drv_extphy_ksz8061.c ../src/config/sam_e70_xult/driver/gmac/src/dynamic/drv_gmac.c ../src/config/sam_e70_xult/driver/gmac/src/dynamic/drv_gmac_lib_samE7x_V7x.c ../src/config/sam_e70_xult/driver/miim/src/dynamic/drv_miim.c ../src/config/sam_e70_xult/library/tcpip/src/helpers.c ../src/config/sam_e70_xult/library/tcpip/src/icmp.c ../src/config/sam_e70_xult/library/tcpip/src/arp.c ../src/config/sam_e70_xult/library/tcpip/src/tcpip_commands.c ../src/config/sam_e70_xult/library/tcpip/src/ipv4.c ../src/config/sam_e70_xult/library/tcpip/src/tcpip_heap_alloc.c ../src/config/sam_e70_xult/library/tcpip/src/tcpip_heap_internal.c ../src/config/sam_e70_xult/library/tcpip/src/dhcp.c ../src/config/sam_e70_xult/library/tcpip/src/dns.c ../src/config/sam_e70_xult/library/tcpip/src/hash_fnv.c ../src/config/sam_e70_xult/library/tcpip/src/oahash.c ../src/config/sam_e70_xult/library/tcpip/src/tcpip_helpers.c ../src/config/sam_e70_xult/library/tcpip/src/tcpip_manager.c ../src/config/sam_e70_xult/library/tcpip/src/tcpip_notify.c ../src/config/sam_e70_xult/library/tcpip/src/tcpip_packet.c ../src/config/sam_e70_xult/library/tcpip/src/udp.c ../src/config/sam_e70_xult/peripheral/afec/plib_afec1.c ../src/config/sam_e70_xult/peripheral/clk/plib_clk.c ../src/config/sam_e70_xult/peripheral/efc/plib_efc.c ../src/config/sam_e70_xult/peripheral/mpu/plib_mpu.c ../src/config/sam_e70_xult/peripheral/nvic/plib_nvic.c ../src/config/sam_e70_xult/peripheral/pio/plib_pio.c ../src/config/sam_e70_xult/peripheral/tc/plib_tc0.c ../src/config/sam_e70_xult/peripheral/usart/plib_usart1.c ../src/config/sam_e70_xult/stdio/xc32_monitor.c ../src/config/sam_e70_xult/system/cache/sys_cache.c ../src/config/sam_e70_xult/system/command/src/sys_command.c ../src/config/sam_e70_xult/system/console/src/sys_console_uart.c ../src/config/sam_e70_xult/system/console/src/sys_console.c ../src/config/sam_e70_xult/system/debug/src/sys_debug.c ../src/config/sam_e70_xult/system/int/src/sys_int.c ../src/config/sam_e70_xult/system/reset/sys_reset.c ../src/config/sam_e70_xult/system/time/src/sys_time.c ../src/config/sam_e70_xult/system/sys_time_h2_adapter.c ../src/config/sam_e70_xult/tasks.c ../src/config/sam_e70_xult/initialization.c ../src/config/sam_e70_xult/interrupts.c ../src/config/sam_e70_xult/exceptions.c ../src/config/sam_e70_xult/startup_xc32.c ../src/config/sam_e70_xult/libc_syscalls.c ../src/app.c ../src/main.c

# Object Files Quoted if spaced
OBJECTFILES_QUOTED_IF_SPACED=${OBJECTDIR}/_ext/917764137/bsp.o ${OBJECTDIR}/_ext/1015456894/drv_ethphy.o ${OBJECTDIR}/_ext/1015456894/drv_extphy_ksz8061.o ${OBJECTDIR}/_ext/629088514/drv_gmac.o ${OBJECTDIR}/_ext/629088514/drv_gmac_lib_samE7x_V7x.o ${OBJECTDIR}/_ext/478869302/drv_miim.o ${OBJECTDIR}/_ext/902702131/helpers.o ${OBJECTDIR}/_ext/902702131/icmp.o ${OBJECTDIR}/_ext/902702131/arp.o ${OBJECTDIR}/_ext/902702131/tcpip_commands.o ${OBJECTDIR}/_ext/902702131/ipv4.o ${OBJECTDIR}/_ext/902702131/tcpip_heap_alloc.o ${OBJECTDIR}/_ext/902702131/tcpip_heap_internal.o ${OBJECTDIR}/_ext/902702131/dhcp.o ${OBJECTDIR}/_ext/902702131/dns.o ${OBJECTDIR}/_ext/902702131/hash_fnv.o ${OBJECTDIR}/_ext/902702131/oahash.o ${OBJECTDIR}/_ext/902702131/tcpip_helpers.o ${OBJECTDIR}/_ext/902702131/tcpip_manager.o ${OBJECTDIR}/_ext/902702131/tcpip_notify.o ${OBJECTDIR}/_ext/902702131/tcpip_packet.o ${OBJECTDIR}/_ext/902702131/udp.o ${OBJECTDIR}/_ext/1639147296/plib_afec1.o ${OBJECTDIR}/_ext/1055500827/plib_clk.o ${OBJECTDIR}/_ext/1055499099/plib_efc.o ${OBJECTDIR}/_ext/1055491083/plib_mpu.o ${OBJECTDIR}/_ext/1639550079/plib_nvic.o ${OBJECTDIR}/_ext/1055488423/plib_pio.o ${OBJECTDIR}/_ext/865331892/plib_tc0.o ${OBJECTDIR}/_ext/707186936/plib_usart1.o ${OBJECTDIR}/_ext/1518761459/xc32_monitor.o ${OBJECTDIR}/_ext/876653320/sys_cache.o ${OBJECTDIR}/_ext/1497066986/sys_command.o ${OBJECTDIR}/_ext/1953779166/sys_console_uart.o ${OBJECTDIR}/_ext/1953779166/sys_console.o ${OBJECTDIR}/_ext/1763620194/sys_debug.o ${OBJECTDIR}/_ext/766002106/sys_int.o ${OBJECTDIR}/_ext/862666043/sys_reset.o ${OBJECTDIR}/_ext/327803284/sys_time.o ${OBJECTDIR}/_ext/157960187/sys_time_h2_adapter.o ${OBJECTDIR}/_ext/1728594169/tasks.o ${OBJECTDIR}/_ext/1728594169/initialization.o ${OBJECTDIR}/_ext/1728594169/interrupts.o ${OBJECTDIR}/_ext/1728594169/exceptions.o ${OBJECTDIR}/_ext/1728594169/startup_xc32.o ${OBJECTDIR}/_ext/1728594169/libc_syscalls.o ${OBJECTDIR}/_ext/1360937237/app.o ${OBJECTDIR}/_ext/1360937237/main.o
POSSIBLE_DEPFILES=${OBJECTDIR}/_ext/917764137/bsp.o.d ${OBJECTDIR}/_ext/1015456894/drv_ethphy.o.d ${OBJECTDIR}/_ext/1015456894/drv_extphy_ksz8061.o.d ${OBJECTDIR}/_ext/629088514/drv_gmac.o.d ${OBJECTDIR}/_ext/629088514/drv_gmac_lib_samE7x_V7x.o.d ${OBJECTDIR}/_ext/478869302/drv_miim.o.d ${OBJECTDIR}/_ext/902702131/helpers.o.d ${OBJECTDIR}/_ext/902702131/icmp.o.d ${OBJECTDIR}/_ext/902702131/arp.o.d ${OBJECTDIR}/_ext/902702131/tcpip_commands.o.d ${OBJECTDIR}/_ext/902702131/ipv4.o.d ${OBJECTDIR}/_ext/902702131/tcpip_heap_alloc.o.d ${OBJECTDIR}/_ext/902702131/tcpip_heap_internal.o.d ${OBJECTDIR}/_ext/902702131/dhcp.o.d ${OBJECTDIR}/_ext/902702131/dns.o.d ${OBJECTDIR}/_ext/902702131/hash_fnv.o.d ${OBJECTDIR}/_ext/902702131/oahash.o.d ${OBJECTDIR}/_ext/902702131/tcpip_helpers.o.d ${OBJECTDIR}/_ext/902702131/tcpip_manager.o.d ${OBJECTDIR}/_ext/902702131/tcpip_notify.o.d ${OBJECTDIR}/_ext/902702131/tcpip_packet.o.d ${OBJECTDIR}/_ext/902702131/udp.o.d ${OBJECTDIR}/_ext/1639147296/plib_afec1.o.d ${OBJECTDIR}/_ext/1055500827/plib_clk.o.d ${OBJECTDIR}/_ext/1055499099/plib_efc.o.d ${OBJECTDIR}/_ext/1055491083/plib_mpu.o.d ${OBJECTDIR}/_ext/1639550079/plib_nvic.o.d ${OBJECTDIR}/_ext/1055488423/plib_pio.o.d ${OBJECTDIR}/_ext/865331892/plib_tc0.o.d ${OBJECTDIR}/_ext/707186936/plib_usart1.o.d ${OBJECTDIR}/_ext/1518761459/xc32_monitor.o.d ${OBJECTDIR}/_ext/876653320/sys_cache.o.d ${OBJECTDIR}/_ext/1497066986/sys_command.o.d ${OBJECTDIR}/_ext/1953779166/sys_console_uart.o.d ${OBJECTDIR}/_ext/1953779166/sys_console.o.d ${OBJECTDIR}/_ext/1763620194/sys_debug.o.d ${OBJECTDIR}/_ext/766002106/sys_int.o.d ${OBJECTDIR}/_ext/862666043/sys_reset.o.d ${OBJECTDIR}/_ext/327803284/sys_time.o.d ${OBJECTDIR}/_ext/157960187/sys_time_h2_adapter.o.d ${OBJECTDIR}/_ext/1728594169/tasks.o.d ${OBJECTDIR}/_ext/1728594169/initialization.o.d ${OBJECTDIR}/_ext/1728594169/interrupts.o.d ${OBJECTDIR}/_ext/1728594169/exceptions.o.d ${OBJECTDIR}/_ext/1728594169/startup_xc32.o.d ${OBJECTDIR}/_ext/1728594169/libc_syscalls.o.d ${OBJECTDIR}/_ext/1360937237/app.o.d ${OBJECTDIR}/_ext/1360937237/main.o.d

# Object Files
OBJECTFILES=${OBJECTDIR}/_ext/917764137/bsp.o ${OBJECTDIR}/_ext/1015456894/drv_ethphy.o ${OBJECTDIR}/_ext/1015456894/drv_extphy_ksz8061.o ${OBJECTDIR}/_ext/629088514/drv_gmac.o ${OBJECTDIR}/_ext/629088514/drv_gmac_lib_samE7x_V7x.o ${OBJECTDIR}/_ext/478869302/drv_miim.o ${OBJECTDIR}/_ext/902702131/helpers.o ${OBJECTDIR}/_ext/902702131/icmp.o ${OBJECTDIR}/_ext/902702131/arp.o ${OBJECTDIR}/_ext/902702131/tcpip_commands.o ${OBJECTDIR}/_ext/902702131/ipv4.o ${OBJECTDIR}/_ext/902702131/tcpip_heap_alloc.o ${OBJECTDIR}/_ext/902702131/tcpip_heap_internal.o ${OBJECTDIR}/_ext/902702131/dhcp.o ${OBJECTDIR}/_ext/902702131/dns.o ${OBJECTDIR}/_ext/902702131/hash_fnv.o ${OBJECTDIR}/_ext/902702131/oahash.o ${OBJECTDIR}/_ext/902702131/tcpip_helpers.o ${OBJECTDIR}/_ext/902702131/tcpip_manager.o ${OBJECTDIR}/_ext/902702131/tcpip_notify.o ${OBJECTDIR}/_ext/902702131/tcpip_packet.o ${OBJECTDIR}/_ext/902702131/udp.o ${OBJECTDIR}/_ext/1639147296/plib_afec1.o ${OBJECTDIR}/_ext/1055500827/plib_clk.o ${OBJECTDIR}/_ext/1055499099/plib_efc.o ${OBJECTDIR}/_ext/1055491083/plib_mpu.o ${OBJECTDIR}/_ext/1639550079/plib_nvic.o ${OBJECTDIR}/_ext/1055488423/plib_pio.o ${OBJECTDIR}/_ext/865331892/plib_tc0.o ${OBJECTDIR}/_ext/707186936/plib_usart1.o ${OBJECTDIR}/_ext/1518761459/xc32_monitor.o ${OBJECTDIR}/_ext/876653320/sys_cache.o ${OBJECTDIR}/_ext/1497066986/sys_command.o ${OBJECTDIR}/_ext/1953779166/sys_console_uart.o ${OBJECTDIR}/_ext/1953779166/sys_console.o ${OBJECTDIR}/_ext/1763620194/sys_debug.o ${OBJECTDIR}/_ext/766002106/sys_int.o ${OBJECTDIR}/_ext/862666043/sys_reset.o ${OBJECTDIR}/_ext/327803284/sys_time.o ${OBJECTDIR}/_ext/157960187/sys_time_h2_adapter.o ${OBJECTDIR}/_ext/1728594169/tasks.o ${OBJECTDIR}/_ext/1728594169/initialization.o ${OBJECTDIR}/_ext/1728594169/interrupts.o ${OBJECTDIR}/_ext/1728594169/exceptions.o ${OBJECTDIR}/_ext/1728594169/startup_xc32.o ${OBJECTDIR}/_ext/1728594169/libc_syscalls.o ${OBJECTDIR}/_ext/1360937237/app.o ${OBJECTDIR}/_ext/1360937237/main.o

# Source Files
SOURCEFILES=../src/config/sam_e70_xult/bsp/bsp.c ../src/config/sam_e70_xult/driver/ethphy/src/dynamic/drv_ethphy.c ../src/config/sam_e70_xult/driver/ethphy/src/dynamic/drv_extphy_ksz8061.c ../src/config/sam_e70_xult/driver/gmac/src/dynamic/drv_gmac.c ../src/config/sam_e70_xult/driver/gmac/src/dynamic/drv_gmac_lib_samE7x_V7x.c ../src/config/sam_e70_xult/driver/miim/src/dynamic/drv_miim.c ../src/config/sam_e70_xult/library/tcpip/src/helpers.c ../src/config/sam_e70_xult/library/tcpip/src/icmp.c ../src/config/sam_e70_xult/library/tcpip/src/arp.c ../src/config/sam_e70_xult/library/tcpip/src/tcpip_commands.c ../src/config/sam_e70_xult/library/tcpip/src/ipv4.c ../src/config/sam_e70_xult/library/tcpip/src/tcpip_heap_alloc.c ../src/config/sam_e70_xult/library/tcpip/src/tcpip_heap_internal.c ../src/config/sam_e70_xult/library/tcpip/src/dhcp.c ../src/config/sam_e70_xult/library/tcpip/src/dns.c ../src/config/sam_e70_xult/library/tcpip/src/hash_fnv.c ../src/config/sam_e70_xult/library/tcpip/src/oahash.c ../src/config/sam_e70_xult/library/tcpip/src/tcpip_helpers.c ../src/config/sam_e70_xult/library/tcpip/src/tcpip_manager.c ../src/config/sam_e70_xult/library/tcpip/src/tcpip_notify.c ../src/config/sam_e70_xult/library/tcpip/src/tcpip_packet.c ../src/config/sam_e70_xult/library/tcpip/src/udp.c ../src/config/sam_e70_xult/peripheral/afec/plib_afec1.c ../src/config/sam_e70_xult/peripheral/clk/plib_clk.c ../src/config/sam_e70_xult/peripheral/efc/plib_efc.c ../src/config/sam_e70_xult/peripheral/mpu/plib_mpu.c ../src/config/sam_e70_xult/peripheral/nvic/plib_nvic.c ../src/config/sam_e70_xult/peripheral/pio/plib_pio.c ../src/config/sam_e70_xult/peripheral/tc/plib_tc0.c ../src/config/sam_e70_xult/peripheral/usart/plib_usart1.c ../src/config/sam_e70_xult/stdio/xc32_monitor.c ../src/config/sam_e70_xult/system/cache/sys_cache.c ../src/config/sam_e70_xult/system/command/src/sys_command.c ../src/config/sam_e70_xult/system/console/src/sys_console_uart.c ../src/config/sam_e70_xult/system/console/src/sys_console.c ../src/config/sam_e70_xult/system/debug/src/sys_debug.c ../src/config/sam_e70_xult/system/int/src/sys_int.c ../src/config/sam_e70_xult/system/reset/sys_reset.c ../src/config/sam_e70_xult/system/time/src/sys_time.c ../src/config/sam_e70_xult/system/sys_time_h2_adapter.c ../src/config/sam_e70_xult/tasks.c ../src/config/sam_e70_xult/initialization.c ../src/config/sam_e70_xult/interrupts.c ../src/config/sam_e70_xult/exceptions.c ../src/config/sam_e70_xult/startup_xc32.c ../src/config/sam_e70_xult/libc_syscalls.c ../src/app.c ../src/main.c

# Pack Options 
PACK_COMMON_OPTIONS=-I "${CMSIS_DIR}/CMSIS/Core/Include"



CFLAGS=
ASFLAGS=
LDLIBSOPTIONS=

############# Tool locations ##########################################
# If you copy a project from one host to another, the path where the  #
# compiler is installed may be different.                             #
# If you open this project with MPLAB X in the new host, this         #
# makefile will be regenerated and the paths will be corrected.       #
#######################################################################
# fixDeps replaces a bunch of sed/cat/printf statements that slow down the build
FIXDEPS=fixDeps

.build-conf:  ${BUILD_SUBPROJECTS}
ifneq ($(INFORMATION_MESSAGE), )
	@echo $(INFORMATION_MESSAGE)
endif
	${MAKE}  -f nbproject/Makefile-sam_e70_xult.mk ${DISTDIR}/UDPST.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}

MP_PROCESSOR_OPTION=ATSAME70Q21B
MP_LINKER_FILE_OPTION=,--script="..\src\config\sam_e70_xult\ATSAME70Q21B.ld"
# ------------------------------------------------------------------------------------
# Rules for buildStep: assemble
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
else
endif

# ------------------------------------------------------------------------------------
# Rules for buildStep: assembleWithPreprocess
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
else
endif

# ------------------------------------------------------------------------------------
# Rules for buildStep: compile
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
${OBJECTDIR}/_ext/917764137/bsp.o: ../src/config/sam_e70_xult/bsp/bsp.c  .generated_files/flags/sam_e70_xult/6d9ffd0ab0ca53faa8a68b5fbeea6d467e1fd599 .generated_files/flags/sam_e70_xult/aa17c397f86b784b2f888fc09182150a1882480e
	@${MKDIR} "${OBJECTDIR}/_ext/917764137" 
	@${RM} ${OBJECTDIR}/_ext/917764137/bsp.o.d 
	@${RM} ${OBJECTDIR}/_ext/917764137/bsp.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/sam_e70_xult" -I"../src/config/sam_e70_xult/library" -I"../src/config/sam_e70_xult/library/tcpip/src" -I"../src/config/sam_e70_xult/library/tcpip/src/common" -I"../src/packs/ATSAME70Q21B_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/917764137/bsp.o.d" -o ${OBJECTDIR}/_ext/917764137/bsp.o ../src/config/sam_e70_xult/bsp/bsp.c    -DXPRJ_sam_e70_xult=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/same70b" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1015456894/drv_ethphy.o: ../src/config/sam_e70_xult/driver/ethphy/src/dynamic/drv_ethphy.c  .generated_files/flags/sam_e70_xult/23e03523818bf1fce946aa91d343c5ef0955000d .generated_files/flags/sam_e70_xult/aa17c397f86b784b2f888fc09182150a1882480e
	@${MKDIR} "${OBJECTDIR}/_ext/1015456894" 
	@${RM} ${OBJECTDIR}/_ext/1015456894/drv_ethphy.o.d 
	@${RM} ${OBJECTDIR}/_ext/1015456894/drv_ethphy.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/sam_e70_xult" -I"../src/config/sam_e70_xult/library" -I"../src/config/sam_e70_xult/library/tcpip/src" -I"../src/config/sam_e70_xult/library/tcpip/src/common" -I"../src/packs/ATSAME70Q21B_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1015456894/drv_ethphy.o.d" -o ${OBJECTDIR}/_ext/1015456894/drv_ethphy.o ../src/config/sam_e70_xult/driver/ethphy/src/dynamic/drv_ethphy.c    -DXPRJ_sam_e70_xult=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/same70b" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1015456894/drv_extphy_ksz8061.o: ../src/config/sam_e70_xult/driver/ethphy/src/dynamic/drv_extphy_ksz8061.c  .generated_files/flags/sam_e70_xult/af9f9842aff68ff148c04bdc00597a20b17807ad .generated_files/flags/sam_e70_xult/aa17c397f86b784b2f888fc09182150a1882480e
	@${MKDIR} "${OBJECTDIR}/_ext/1015456894" 
	@${RM} ${OBJECTDIR}/_ext/1015456894/drv_extphy_ksz8061.o.d 
	@${RM} ${OBJECTDIR}/_ext/1015456894/drv_extphy_ksz8061.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/sam_e70_xult" -I"../src/config/sam_e70_xult/library" -I"../src/config/sam_e70_xult/library/tcpip/src" -I"../src/config/sam_e70_xult/library/tcpip/src/common" -I"../src/packs/ATSAME70Q21B_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1015456894/drv_extphy_ksz8061.o.d" -o ${OBJECTDIR}/_ext/1015456894/drv_extphy_ksz8061.o ../src/config/sam_e70_xult/driver/ethphy/src/dynamic/drv_extphy_ksz8061.c    -DXPRJ_sam_e70_xult=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/same70b" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/629088514/drv_gmac.o: ../src/config/sam_e70_xult/driver/gmac/src/dynamic/drv_gmac.c  .generated_files/flags/sam_e70_xult/9251be2c5127c36162f7fa4bfa2aee7d1d60ae2e .generated_files/flags/sam_e70_xult/aa17c397f86b784b2f888fc09182150a1882480e
	@${MKDIR} "${OBJECTDIR}/_ext/629088514" 
	@${RM} ${OBJECTDIR}/_ext/629088514/drv_gmac.o.d 
	@${RM} ${OBJECTDIR}/_ext/629088514/drv_gmac.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/sam_e70_xult" -I"../src/config/sam_e70_xult/library" -I"../src/config/sam_e70_xult/library/tcpip/src" -I"../src/config/sam_e70_xult/library/tcpip/src/common" -I"../src/packs/ATSAME70Q21B_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/629088514/drv_gmac.o.d" -o ${OBJECTDIR}/_ext/629088514/drv_gmac.o ../src/config/sam_e70_xult/driver/gmac/src/dynamic/drv_gmac.c    -DXPRJ_sam_e70_xult=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/same70b" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/629088514/drv_gmac_lib_samE7x_V7x.o: ../src/config/sam_e70_xult/driver/gmac/src/dynamic/drv_gmac_lib_samE7x_V7x.c  .generated_files/flags/sam_e70_xult/f243809cf91ac6b229cbbb4df6a21d18f01995ac .generated_files/flags/sam_e70_xult/aa17c397f86b784b2f888fc09182150a1882480e
	@${MKDIR} "${OBJECTDIR}/_ext/629088514" 
	@${RM} ${OBJECTDIR}/_ext/629088514/drv_gmac_lib_samE7x_V7x.o.d 
	@${RM} ${OBJECTDIR}/_ext/629088514/drv_gmac_lib_samE7x_V7x.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/sam_e70_xult" -I"../src/config/sam_e70_xult/library" -I"../src/config/sam_e70_xult/library/tcpip/src" -I"../src/config/sam_e70_xult/library/tcpip/src/common" -I"../src/packs/ATSAME70Q21B_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/629088514/drv_gmac_lib_samE7x_V7x.o.d" -o ${OBJECTDIR}/_ext/629088514/drv_gmac_lib_samE7x_V7x.o ../src/config/sam_e70_xult/driver/gmac/src/dynamic/drv_gmac_lib_samE7x_V7x.c    -DXPRJ_sam_e70_xult=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/same70b" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/478869302/drv_miim.o: ../src/config/sam_e70_xult/driver/miim/src/dynamic/drv_miim.c  .generated_files/flags/sam_e70_xult/b06c0f05fa58ea82ccba27b57fb3b9d1e5b8e6f5 .generated_files/flags/sam_e70_xult/aa17c397f86b784b2f888fc09182150a1882480e
	@${MKDIR} "${OBJECTDIR}/_ext/478869302" 
	@${RM} ${OBJECTDIR}/_ext/478869302/drv_miim.o.d 
	@${RM} ${OBJECTDIR}/_ext/478869302/drv_miim.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/sam_e70_xult" -I"../src/config/sam_e70_xult/library" -I"../src/config/sam_e70_xult/library/tcpip/src" -I"../src/config/sam_e70_xult/library/tcpip/src/common" -I"../src/packs/ATSAME70Q21B_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/478869302/drv_miim.o.d" -o ${OBJECTDIR}/_ext/478869302/drv_miim.o ../src/config/sam_e70_xult/driver/miim/src/dynamic/drv_miim.c    -DXPRJ_sam_e70_xult=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/same70b" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/902702131/helpers.o: ../src/config/sam_e70_xult/library/tcpip/src/helpers.c  .generated_files/flags/sam_e70_xult/67e93aeabde27d710543352e83e421b7a06abeb9 .generated_files/flags/sam_e70_xult/aa17c397f86b784b2f888fc09182150a1882480e
	@${MKDIR} "${OBJECTDIR}/_ext/902702131" 
	@${RM} ${OBJECTDIR}/_ext/902702131/helpers.o.d 
	@${RM} ${OBJECTDIR}/_ext/902702131/helpers.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/sam_e70_xult" -I"../src/config/sam_e70_xult/library" -I"../src/config/sam_e70_xult/library/tcpip/src" -I"../src/config/sam_e70_xult/library/tcpip/src/common" -I"../src/packs/ATSAME70Q21B_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/902702131/helpers.o.d" -o ${OBJECTDIR}/_ext/902702131/helpers.o ../src/config/sam_e70_xult/library/tcpip/src/helpers.c    -DXPRJ_sam_e70_xult=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/same70b" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/902702131/icmp.o: ../src/config/sam_e70_xult/library/tcpip/src/icmp.c  .generated_files/flags/sam_e70_xult/23cb8533d251807b08881c295584505652f0bbe9 .generated_files/flags/sam_e70_xult/aa17c397f86b784b2f888fc09182150a1882480e
	@${MKDIR} "${OBJECTDIR}/_ext/902702131" 
	@${RM} ${OBJECTDIR}/_ext/902702131/icmp.o.d 
	@${RM} ${OBJECTDIR}/_ext/902702131/icmp.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/sam_e70_xult" -I"../src/config/sam_e70_xult/library" -I"../src/config/sam_e70_xult/library/tcpip/src" -I"../src/config/sam_e70_xult/library/tcpip/src/common" -I"../src/packs/ATSAME70Q21B_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/902702131/icmp.o.d" -o ${OBJECTDIR}/_ext/902702131/icmp.o ../src/config/sam_e70_xult/library/tcpip/src/icmp.c    -DXPRJ_sam_e70_xult=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/same70b" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/902702131/arp.o: ../src/config/sam_e70_xult/library/tcpip/src/arp.c  .generated_files/flags/sam_e70_xult/3d429fd15e6470aec067d0a9580ab8b238f32c87 .generated_files/flags/sam_e70_xult/aa17c397f86b784b2f888fc09182150a1882480e
	@${MKDIR} "${OBJECTDIR}/_ext/902702131" 
	@${RM} ${OBJECTDIR}/_ext/902702131/arp.o.d 
	@${RM} ${OBJECTDIR}/_ext/902702131/arp.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/sam_e70_xult" -I"../src/config/sam_e70_xult/library" -I"../src/config/sam_e70_xult/library/tcpip/src" -I"../src/config/sam_e70_xult/library/tcpip/src/common" -I"../src/packs/ATSAME70Q21B_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/902702131/arp.o.d" -o ${OBJECTDIR}/_ext/902702131/arp.o ../src/config/sam_e70_xult/library/tcpip/src/arp.c    -DXPRJ_sam_e70_xult=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/same70b" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/902702131/tcpip_commands.o: ../src/config/sam_e70_xult/library/tcpip/src/tcpip_commands.c  .generated_files/flags/sam_e70_xult/69a6c02b45a45d0022fd2f527d6e45efbfbfc9e2 .generated_files/flags/sam_e70_xult/aa17c397f86b784b2f888fc09182150a1882480e
	@${MKDIR} "${OBJECTDIR}/_ext/902702131" 
	@${RM} ${OBJECTDIR}/_ext/902702131/tcpip_commands.o.d 
	@${RM} ${OBJECTDIR}/_ext/902702131/tcpip_commands.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/sam_e70_xult" -I"../src/config/sam_e70_xult/library" -I"../src/config/sam_e70_xult/library/tcpip/src" -I"../src/config/sam_e70_xult/library/tcpip/src/common" -I"../src/packs/ATSAME70Q21B_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/902702131/tcpip_commands.o.d" -o ${OBJECTDIR}/_ext/902702131/tcpip_commands.o ../src/config/sam_e70_xult/library/tcpip/src/tcpip_commands.c    -DXPRJ_sam_e70_xult=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/same70b" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/902702131/ipv4.o: ../src/config/sam_e70_xult/library/tcpip/src/ipv4.c  .generated_files/flags/sam_e70_xult/2699e9997945020b76f7401f44e0016777095c23 .generated_files/flags/sam_e70_xult/aa17c397f86b784b2f888fc09182150a1882480e
	@${MKDIR} "${OBJECTDIR}/_ext/902702131" 
	@${RM} ${OBJECTDIR}/_ext/902702131/ipv4.o.d 
	@${RM} ${OBJECTDIR}/_ext/902702131/ipv4.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/sam_e70_xult" -I"../src/config/sam_e70_xult/library" -I"../src/config/sam_e70_xult/library/tcpip/src" -I"../src/config/sam_e70_xult/library/tcpip/src/common" -I"../src/packs/ATSAME70Q21B_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/902702131/ipv4.o.d" -o ${OBJECTDIR}/_ext/902702131/ipv4.o ../src/config/sam_e70_xult/library/tcpip/src/ipv4.c    -DXPRJ_sam_e70_xult=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/same70b" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/902702131/tcpip_heap_alloc.o: ../src/config/sam_e70_xult/library/tcpip/src/tcpip_heap_alloc.c  .generated_files/flags/sam_e70_xult/998a775627b81646c8105091b4cef1e977e8b298 .generated_files/flags/sam_e70_xult/aa17c397f86b784b2f888fc09182150a1882480e
	@${MKDIR} "${OBJECTDIR}/_ext/902702131" 
	@${RM} ${OBJECTDIR}/_ext/902702131/tcpip_heap_alloc.o.d 
	@${RM} ${OBJECTDIR}/_ext/902702131/tcpip_heap_alloc.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/sam_e70_xult" -I"../src/config/sam_e70_xult/library" -I"../src/config/sam_e70_xult/library/tcpip/src" -I"../src/config/sam_e70_xult/library/tcpip/src/common" -I"../src/packs/ATSAME70Q21B_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/902702131/tcpip_heap_alloc.o.d" -o ${OBJECTDIR}/_ext/902702131/tcpip_heap_alloc.o ../src/config/sam_e70_xult/library/tcpip/src/tcpip_heap_alloc.c    -DXPRJ_sam_e70_xult=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/same70b" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/902702131/tcpip_heap_internal.o: ../src/config/sam_e70_xult/library/tcpip/src/tcpip_heap_internal.c  .generated_files/flags/sam_e70_xult/1a31340cc653abbbf3155a3d95bea01e7ce13c84 .generated_files/flags/sam_e70_xult/aa17c397f86b784b2f888fc09182150a1882480e
	@${MKDIR} "${OBJECTDIR}/_ext/902702131" 
	@${RM} ${OBJECTDIR}/_ext/902702131/tcpip_heap_internal.o.d 
	@${RM} ${OBJECTDIR}/_ext/902702131/tcpip_heap_internal.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/sam_e70_xult" -I"../src/config/sam_e70_xult/library" -I"../src/config/sam_e70_xult/library/tcpip/src" -I"../src/config/sam_e70_xult/library/tcpip/src/common" -I"../src/packs/ATSAME70Q21B_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/902702131/tcpip_heap_internal.o.d" -o ${OBJECTDIR}/_ext/902702131/tcpip_heap_internal.o ../src/config/sam_e70_xult/library/tcpip/src/tcpip_heap_internal.c    -DXPRJ_sam_e70_xult=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/same70b" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/902702131/dhcp.o: ../src/config/sam_e70_xult/library/tcpip/src/dhcp.c  .generated_files/flags/sam_e70_xult/93c53b4f38d7a5483521ab8786e09999cf1e0669 .generated_files/flags/sam_e70_xult/aa17c397f86b784b2f888fc09182150a1882480e
	@${MKDIR} "${OBJECTDIR}/_ext/902702131" 
	@${RM} ${OBJECTDIR}/_ext/902702131/dhcp.o.d 
	@${RM} ${OBJECTDIR}/_ext/902702131/dhcp.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/sam_e70_xult" -I"../src/config/sam_e70_xult/library" -I"../src/config/sam_e70_xult/library/tcpip/src" -I"../src/config/sam_e70_xult/library/tcpip/src/common" -I"../src/packs/ATSAME70Q21B_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/902702131/dhcp.o.d" -o ${OBJECTDIR}/_ext/902702131/dhcp.o ../src/config/sam_e70_xult/library/tcpip/src/dhcp.c    -DXPRJ_sam_e70_xult=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/same70b" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/902702131/dns.o: ../src/config/sam_e70_xult/library/tcpip/src/dns.c  .generated_files/flags/sam_e70_xult/a1e45114eda887a246c07d5101ba47cb8dadeb5e .generated_files/flags/sam_e70_xult/aa17c397f86b784b2f888fc09182150a1882480e
	@${MKDIR} "${OBJECTDIR}/_ext/902702131" 
	@${RM} ${OBJECTDIR}/_ext/902702131/dns.o.d 
	@${RM} ${OBJECTDIR}/_ext/902702131/dns.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/sam_e70_xult" -I"../src/config/sam_e70_xult/library" -I"../src/config/sam_e70_xult/library/tcpip/src" -I"../src/config/sam_e70_xult/library/tcpip/src/common" -I"../src/packs/ATSAME70Q21B_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/902702131/dns.o.d" -o ${OBJECTDIR}/_ext/902702131/dns.o ../src/config/sam_e70_xult/library/tcpip/src/dns.c    -DXPRJ_sam_e70_xult=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/same70b" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/902702131/hash_fnv.o: ../src/config/sam_e70_xult/library/tcpip/src/hash_fnv.c  .generated_files/flags/sam_e70_xult/66740c00c5e62b0e4e51a757d73396df2a691fdf .generated_files/flags/sam_e70_xult/aa17c397f86b784b2f888fc09182150a1882480e
	@${MKDIR} "${OBJECTDIR}/_ext/902702131" 
	@${RM} ${OBJECTDIR}/_ext/902702131/hash_fnv.o.d 
	@${RM} ${OBJECTDIR}/_ext/902702131/hash_fnv.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/sam_e70_xult" -I"../src/config/sam_e70_xult/library" -I"../src/config/sam_e70_xult/library/tcpip/src" -I"../src/config/sam_e70_xult/library/tcpip/src/common" -I"../src/packs/ATSAME70Q21B_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/902702131/hash_fnv.o.d" -o ${OBJECTDIR}/_ext/902702131/hash_fnv.o ../src/config/sam_e70_xult/library/tcpip/src/hash_fnv.c    -DXPRJ_sam_e70_xult=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/same70b" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/902702131/oahash.o: ../src/config/sam_e70_xult/library/tcpip/src/oahash.c  .generated_files/flags/sam_e70_xult/d367e468b5b77647f2a4ba6af3e8c11e4a1ef53 .generated_files/flags/sam_e70_xult/aa17c397f86b784b2f888fc09182150a1882480e
	@${MKDIR} "${OBJECTDIR}/_ext/902702131" 
	@${RM} ${OBJECTDIR}/_ext/902702131/oahash.o.d 
	@${RM} ${OBJECTDIR}/_ext/902702131/oahash.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/sam_e70_xult" -I"../src/config/sam_e70_xult/library" -I"../src/config/sam_e70_xult/library/tcpip/src" -I"../src/config/sam_e70_xult/library/tcpip/src/common" -I"../src/packs/ATSAME70Q21B_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/902702131/oahash.o.d" -o ${OBJECTDIR}/_ext/902702131/oahash.o ../src/config/sam_e70_xult/library/tcpip/src/oahash.c    -DXPRJ_sam_e70_xult=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/same70b" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/902702131/tcpip_helpers.o: ../src/config/sam_e70_xult/library/tcpip/src/tcpip_helpers.c  .generated_files/flags/sam_e70_xult/18485faa18902acd22803e608b445ea13e13f830 .generated_files/flags/sam_e70_xult/aa17c397f86b784b2f888fc09182150a1882480e
	@${MKDIR} "${OBJECTDIR}/_ext/902702131" 
	@${RM} ${OBJECTDIR}/_ext/902702131/tcpip_helpers.o.d 
	@${RM} ${OBJECTDIR}/_ext/902702131/tcpip_helpers.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/sam_e70_xult" -I"../src/config/sam_e70_xult/library" -I"../src/config/sam_e70_xult/library/tcpip/src" -I"../src/config/sam_e70_xult/library/tcpip/src/common" -I"../src/packs/ATSAME70Q21B_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/902702131/tcpip_helpers.o.d" -o ${OBJECTDIR}/_ext/902702131/tcpip_helpers.o ../src/config/sam_e70_xult/library/tcpip/src/tcpip_helpers.c    -DXPRJ_sam_e70_xult=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/same70b" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/902702131/tcpip_manager.o: ../src/config/sam_e70_xult/library/tcpip/src/tcpip_manager.c  .generated_files/flags/sam_e70_xult/35eb4d4ce6a7e76c0ca3c00242ea938c08089fb0 .generated_files/flags/sam_e70_xult/aa17c397f86b784b2f888fc09182150a1882480e
	@${MKDIR} "${OBJECTDIR}/_ext/902702131" 
	@${RM} ${OBJECTDIR}/_ext/902702131/tcpip_manager.o.d 
	@${RM} ${OBJECTDIR}/_ext/902702131/tcpip_manager.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/sam_e70_xult" -I"../src/config/sam_e70_xult/library" -I"../src/config/sam_e70_xult/library/tcpip/src" -I"../src/config/sam_e70_xult/library/tcpip/src/common" -I"../src/packs/ATSAME70Q21B_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/902702131/tcpip_manager.o.d" -o ${OBJECTDIR}/_ext/902702131/tcpip_manager.o ../src/config/sam_e70_xult/library/tcpip/src/tcpip_manager.c    -DXPRJ_sam_e70_xult=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/same70b" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/902702131/tcpip_notify.o: ../src/config/sam_e70_xult/library/tcpip/src/tcpip_notify.c  .generated_files/flags/sam_e70_xult/331b6c565b1a32b610ce26993c2267403b8679b4 .generated_files/flags/sam_e70_xult/aa17c397f86b784b2f888fc09182150a1882480e
	@${MKDIR} "${OBJECTDIR}/_ext/902702131" 
	@${RM} ${OBJECTDIR}/_ext/902702131/tcpip_notify.o.d 
	@${RM} ${OBJECTDIR}/_ext/902702131/tcpip_notify.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/sam_e70_xult" -I"../src/config/sam_e70_xult/library" -I"../src/config/sam_e70_xult/library/tcpip/src" -I"../src/config/sam_e70_xult/library/tcpip/src/common" -I"../src/packs/ATSAME70Q21B_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/902702131/tcpip_notify.o.d" -o ${OBJECTDIR}/_ext/902702131/tcpip_notify.o ../src/config/sam_e70_xult/library/tcpip/src/tcpip_notify.c    -DXPRJ_sam_e70_xult=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/same70b" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/902702131/tcpip_packet.o: ../src/config/sam_e70_xult/library/tcpip/src/tcpip_packet.c  .generated_files/flags/sam_e70_xult/5de9980137a16eb06bfd4985dfc13afa3b7f99c1 .generated_files/flags/sam_e70_xult/aa17c397f86b784b2f888fc09182150a1882480e
	@${MKDIR} "${OBJECTDIR}/_ext/902702131" 
	@${RM} ${OBJECTDIR}/_ext/902702131/tcpip_packet.o.d 
	@${RM} ${OBJECTDIR}/_ext/902702131/tcpip_packet.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/sam_e70_xult" -I"../src/config/sam_e70_xult/library" -I"../src/config/sam_e70_xult/library/tcpip/src" -I"../src/config/sam_e70_xult/library/tcpip/src/common" -I"../src/packs/ATSAME70Q21B_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/902702131/tcpip_packet.o.d" -o ${OBJECTDIR}/_ext/902702131/tcpip_packet.o ../src/config/sam_e70_xult/library/tcpip/src/tcpip_packet.c    -DXPRJ_sam_e70_xult=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/same70b" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/902702131/udp.o: ../src/config/sam_e70_xult/library/tcpip/src/udp.c  .generated_files/flags/sam_e70_xult/a6e912035d7c28f52630a75430867dbb9f1792bf .generated_files/flags/sam_e70_xult/aa17c397f86b784b2f888fc09182150a1882480e
	@${MKDIR} "${OBJECTDIR}/_ext/902702131" 
	@${RM} ${OBJECTDIR}/_ext/902702131/udp.o.d 
	@${RM} ${OBJECTDIR}/_ext/902702131/udp.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/sam_e70_xult" -I"../src/config/sam_e70_xult/library" -I"../src/config/sam_e70_xult/library/tcpip/src" -I"../src/config/sam_e70_xult/library/tcpip/src/common" -I"../src/packs/ATSAME70Q21B_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/902702131/udp.o.d" -o ${OBJECTDIR}/_ext/902702131/udp.o ../src/config/sam_e70_xult/library/tcpip/src/udp.c    -DXPRJ_sam_e70_xult=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/same70b" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1639147296/plib_afec1.o: ../src/config/sam_e70_xult/peripheral/afec/plib_afec1.c  .generated_files/flags/sam_e70_xult/42d855ac55a5afcd63d6019c27f4362b26082bfa .generated_files/flags/sam_e70_xult/aa17c397f86b784b2f888fc09182150a1882480e
	@${MKDIR} "${OBJECTDIR}/_ext/1639147296" 
	@${RM} ${OBJECTDIR}/_ext/1639147296/plib_afec1.o.d 
	@${RM} ${OBJECTDIR}/_ext/1639147296/plib_afec1.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/sam_e70_xult" -I"../src/config/sam_e70_xult/library" -I"../src/config/sam_e70_xult/library/tcpip/src" -I"../src/config/sam_e70_xult/library/tcpip/src/common" -I"../src/packs/ATSAME70Q21B_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1639147296/plib_afec1.o.d" -o ${OBJECTDIR}/_ext/1639147296/plib_afec1.o ../src/config/sam_e70_xult/peripheral/afec/plib_afec1.c    -DXPRJ_sam_e70_xult=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/same70b" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1055500827/plib_clk.o: ../src/config/sam_e70_xult/peripheral/clk/plib_clk.c  .generated_files/flags/sam_e70_xult/2794f2a4d9b179f27852fb945e0514b90d1d1f7e .generated_files/flags/sam_e70_xult/aa17c397f86b784b2f888fc09182150a1882480e
	@${MKDIR} "${OBJECTDIR}/_ext/1055500827" 
	@${RM} ${OBJECTDIR}/_ext/1055500827/plib_clk.o.d 
	@${RM} ${OBJECTDIR}/_ext/1055500827/plib_clk.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/sam_e70_xult" -I"../src/config/sam_e70_xult/library" -I"../src/config/sam_e70_xult/library/tcpip/src" -I"../src/config/sam_e70_xult/library/tcpip/src/common" -I"../src/packs/ATSAME70Q21B_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1055500827/plib_clk.o.d" -o ${OBJECTDIR}/_ext/1055500827/plib_clk.o ../src/config/sam_e70_xult/peripheral/clk/plib_clk.c    -DXPRJ_sam_e70_xult=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/same70b" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1055499099/plib_efc.o: ../src/config/sam_e70_xult/peripheral/efc/plib_efc.c  .generated_files/flags/sam_e70_xult/9e46f2f031bcd76fffd252470c38b0b8280c1759 .generated_files/flags/sam_e70_xult/aa17c397f86b784b2f888fc09182150a1882480e
	@${MKDIR} "${OBJECTDIR}/_ext/1055499099" 
	@${RM} ${OBJECTDIR}/_ext/1055499099/plib_efc.o.d 
	@${RM} ${OBJECTDIR}/_ext/1055499099/plib_efc.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/sam_e70_xult" -I"../src/config/sam_e70_xult/library" -I"../src/config/sam_e70_xult/library/tcpip/src" -I"../src/config/sam_e70_xult/library/tcpip/src/common" -I"../src/packs/ATSAME70Q21B_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1055499099/plib_efc.o.d" -o ${OBJECTDIR}/_ext/1055499099/plib_efc.o ../src/config/sam_e70_xult/peripheral/efc/plib_efc.c    -DXPRJ_sam_e70_xult=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/same70b" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1055491083/plib_mpu.o: ../src/config/sam_e70_xult/peripheral/mpu/plib_mpu.c  .generated_files/flags/sam_e70_xult/43a9f416c344cf629794442220b131ba1a9733e6 .generated_files/flags/sam_e70_xult/aa17c397f86b784b2f888fc09182150a1882480e
	@${MKDIR} "${OBJECTDIR}/_ext/1055491083" 
	@${RM} ${OBJECTDIR}/_ext/1055491083/plib_mpu.o.d 
	@${RM} ${OBJECTDIR}/_ext/1055491083/plib_mpu.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/sam_e70_xult" -I"../src/config/sam_e70_xult/library" -I"../src/config/sam_e70_xult/library/tcpip/src" -I"../src/config/sam_e70_xult/library/tcpip/src/common" -I"../src/packs/ATSAME70Q21B_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1055491083/plib_mpu.o.d" -o ${OBJECTDIR}/_ext/1055491083/plib_mpu.o ../src/config/sam_e70_xult/peripheral/mpu/plib_mpu.c    -DXPRJ_sam_e70_xult=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/same70b" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1639550079/plib_nvic.o: ../src/config/sam_e70_xult/peripheral/nvic/plib_nvic.c  .generated_files/flags/sam_e70_xult/87141364a6516076911fcf4a0d68fe0bd11f385d .generated_files/flags/sam_e70_xult/aa17c397f86b784b2f888fc09182150a1882480e
	@${MKDIR} "${OBJECTDIR}/_ext/1639550079" 
	@${RM} ${OBJECTDIR}/_ext/1639550079/plib_nvic.o.d 
	@${RM} ${OBJECTDIR}/_ext/1639550079/plib_nvic.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/sam_e70_xult" -I"../src/config/sam_e70_xult/library" -I"../src/config/sam_e70_xult/library/tcpip/src" -I"../src/config/sam_e70_xult/library/tcpip/src/common" -I"../src/packs/ATSAME70Q21B_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1639550079/plib_nvic.o.d" -o ${OBJECTDIR}/_ext/1639550079/plib_nvic.o ../src/config/sam_e70_xult/peripheral/nvic/plib_nvic.c    -DXPRJ_sam_e70_xult=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/same70b" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1055488423/plib_pio.o: ../src/config/sam_e70_xult/peripheral/pio/plib_pio.c  .generated_files/flags/sam_e70_xult/7d5fdbc062319334796c16efc71051b6c269e9f8 .generated_files/flags/sam_e70_xult/aa17c397f86b784b2f888fc09182150a1882480e
	@${MKDIR} "${OBJECTDIR}/_ext/1055488423" 
	@${RM} ${OBJECTDIR}/_ext/1055488423/plib_pio.o.d 
	@${RM} ${OBJECTDIR}/_ext/1055488423/plib_pio.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/sam_e70_xult" -I"../src/config/sam_e70_xult/library" -I"../src/config/sam_e70_xult/library/tcpip/src" -I"../src/config/sam_e70_xult/library/tcpip/src/common" -I"../src/packs/ATSAME70Q21B_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1055488423/plib_pio.o.d" -o ${OBJECTDIR}/_ext/1055488423/plib_pio.o ../src/config/sam_e70_xult/peripheral/pio/plib_pio.c    -DXPRJ_sam_e70_xult=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/same70b" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/865331892/plib_tc0.o: ../src/config/sam_e70_xult/peripheral/tc/plib_tc0.c  .generated_files/flags/sam_e70_xult/a6ebff54135c49f8c1176a15e1d49ea27869795e .generated_files/flags/sam_e70_xult/aa17c397f86b784b2f888fc09182150a1882480e
	@${MKDIR} "${OBJECTDIR}/_ext/865331892" 
	@${RM} ${OBJECTDIR}/_ext/865331892/plib_tc0.o.d 
	@${RM} ${OBJECTDIR}/_ext/865331892/plib_tc0.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/sam_e70_xult" -I"../src/config/sam_e70_xult/library" -I"../src/config/sam_e70_xult/library/tcpip/src" -I"../src/config/sam_e70_xult/library/tcpip/src/common" -I"../src/packs/ATSAME70Q21B_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/865331892/plib_tc0.o.d" -o ${OBJECTDIR}/_ext/865331892/plib_tc0.o ../src/config/sam_e70_xult/peripheral/tc/plib_tc0.c    -DXPRJ_sam_e70_xult=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/same70b" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/707186936/plib_usart1.o: ../src/config/sam_e70_xult/peripheral/usart/plib_usart1.c  .generated_files/flags/sam_e70_xult/bace76be9d1a6614f92fd676e8280aec808552ee .generated_files/flags/sam_e70_xult/aa17c397f86b784b2f888fc09182150a1882480e
	@${MKDIR} "${OBJECTDIR}/_ext/707186936" 
	@${RM} ${OBJECTDIR}/_ext/707186936/plib_usart1.o.d 
	@${RM} ${OBJECTDIR}/_ext/707186936/plib_usart1.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/sam_e70_xult" -I"../src/config/sam_e70_xult/library" -I"../src/config/sam_e70_xult/library/tcpip/src" -I"../src/config/sam_e70_xult/library/tcpip/src/common" -I"../src/packs/ATSAME70Q21B_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/707186936/plib_usart1.o.d" -o ${OBJECTDIR}/_ext/707186936/plib_usart1.o ../src/config/sam_e70_xult/peripheral/usart/plib_usart1.c    -DXPRJ_sam_e70_xult=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/same70b" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1518761459/xc32_monitor.o: ../src/config/sam_e70_xult/stdio/xc32_monitor.c  .generated_files/flags/sam_e70_xult/77f60ff6b406b8f40d2f8d6411ed99115a31844d .generated_files/flags/sam_e70_xult/aa17c397f86b784b2f888fc09182150a1882480e
	@${MKDIR} "${OBJECTDIR}/_ext/1518761459" 
	@${RM} ${OBJECTDIR}/_ext/1518761459/xc32_monitor.o.d 
	@${RM} ${OBJECTDIR}/_ext/1518761459/xc32_monitor.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/sam_e70_xult" -I"../src/config/sam_e70_xult/library" -I"../src/config/sam_e70_xult/library/tcpip/src" -I"../src/config/sam_e70_xult/library/tcpip/src/common" -I"../src/packs/ATSAME70Q21B_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1518761459/xc32_monitor.o.d" -o ${OBJECTDIR}/_ext/1518761459/xc32_monitor.o ../src/config/sam_e70_xult/stdio/xc32_monitor.c    -DXPRJ_sam_e70_xult=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/same70b" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/876653320/sys_cache.o: ../src/config/sam_e70_xult/system/cache/sys_cache.c  .generated_files/flags/sam_e70_xult/c8494cfe54059abf4a5ec7f11dd70d2ea04d5831 .generated_files/flags/sam_e70_xult/aa17c397f86b784b2f888fc09182150a1882480e
	@${MKDIR} "${OBJECTDIR}/_ext/876653320" 
	@${RM} ${OBJECTDIR}/_ext/876653320/sys_cache.o.d 
	@${RM} ${OBJECTDIR}/_ext/876653320/sys_cache.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/sam_e70_xult" -I"../src/config/sam_e70_xult/library" -I"../src/config/sam_e70_xult/library/tcpip/src" -I"../src/config/sam_e70_xult/library/tcpip/src/common" -I"../src/packs/ATSAME70Q21B_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/876653320/sys_cache.o.d" -o ${OBJECTDIR}/_ext/876653320/sys_cache.o ../src/config/sam_e70_xult/system/cache/sys_cache.c    -DXPRJ_sam_e70_xult=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/same70b" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1497066986/sys_command.o: ../src/config/sam_e70_xult/system/command/src/sys_command.c  .generated_files/flags/sam_e70_xult/9d9964ef60be5c95741173be0f1421f8003f44c2 .generated_files/flags/sam_e70_xult/aa17c397f86b784b2f888fc09182150a1882480e
	@${MKDIR} "${OBJECTDIR}/_ext/1497066986" 
	@${RM} ${OBJECTDIR}/_ext/1497066986/sys_command.o.d 
	@${RM} ${OBJECTDIR}/_ext/1497066986/sys_command.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/sam_e70_xult" -I"../src/config/sam_e70_xult/library" -I"../src/config/sam_e70_xult/library/tcpip/src" -I"../src/config/sam_e70_xult/library/tcpip/src/common" -I"../src/packs/ATSAME70Q21B_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1497066986/sys_command.o.d" -o ${OBJECTDIR}/_ext/1497066986/sys_command.o ../src/config/sam_e70_xult/system/command/src/sys_command.c    -DXPRJ_sam_e70_xult=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/same70b" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1953779166/sys_console_uart.o: ../src/config/sam_e70_xult/system/console/src/sys_console_uart.c  .generated_files/flags/sam_e70_xult/1cee93b25dd722ec23c62b31ef888ddc0e0d342f .generated_files/flags/sam_e70_xult/aa17c397f86b784b2f888fc09182150a1882480e
	@${MKDIR} "${OBJECTDIR}/_ext/1953779166" 
	@${RM} ${OBJECTDIR}/_ext/1953779166/sys_console_uart.o.d 
	@${RM} ${OBJECTDIR}/_ext/1953779166/sys_console_uart.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/sam_e70_xult" -I"../src/config/sam_e70_xult/library" -I"../src/config/sam_e70_xult/library/tcpip/src" -I"../src/config/sam_e70_xult/library/tcpip/src/common" -I"../src/packs/ATSAME70Q21B_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1953779166/sys_console_uart.o.d" -o ${OBJECTDIR}/_ext/1953779166/sys_console_uart.o ../src/config/sam_e70_xult/system/console/src/sys_console_uart.c    -DXPRJ_sam_e70_xult=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/same70b" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1953779166/sys_console.o: ../src/config/sam_e70_xult/system/console/src/sys_console.c  .generated_files/flags/sam_e70_xult/ddcceb8fd96eafb014fb813811f76ed0b11d429 .generated_files/flags/sam_e70_xult/aa17c397f86b784b2f888fc09182150a1882480e
	@${MKDIR} "${OBJECTDIR}/_ext/1953779166" 
	@${RM} ${OBJECTDIR}/_ext/1953779166/sys_console.o.d 
	@${RM} ${OBJECTDIR}/_ext/1953779166/sys_console.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/sam_e70_xult" -I"../src/config/sam_e70_xult/library" -I"../src/config/sam_e70_xult/library/tcpip/src" -I"../src/config/sam_e70_xult/library/tcpip/src/common" -I"../src/packs/ATSAME70Q21B_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1953779166/sys_console.o.d" -o ${OBJECTDIR}/_ext/1953779166/sys_console.o ../src/config/sam_e70_xult/system/console/src/sys_console.c    -DXPRJ_sam_e70_xult=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/same70b" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1763620194/sys_debug.o: ../src/config/sam_e70_xult/system/debug/src/sys_debug.c  .generated_files/flags/sam_e70_xult/6225699538b5dd3be10b22abfa4e1d4dff007f34 .generated_files/flags/sam_e70_xult/aa17c397f86b784b2f888fc09182150a1882480e
	@${MKDIR} "${OBJECTDIR}/_ext/1763620194" 
	@${RM} ${OBJECTDIR}/_ext/1763620194/sys_debug.o.d 
	@${RM} ${OBJECTDIR}/_ext/1763620194/sys_debug.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/sam_e70_xult" -I"../src/config/sam_e70_xult/library" -I"../src/config/sam_e70_xult/library/tcpip/src" -I"../src/config/sam_e70_xult/library/tcpip/src/common" -I"../src/packs/ATSAME70Q21B_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1763620194/sys_debug.o.d" -o ${OBJECTDIR}/_ext/1763620194/sys_debug.o ../src/config/sam_e70_xult/system/debug/src/sys_debug.c    -DXPRJ_sam_e70_xult=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/same70b" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/766002106/sys_int.o: ../src/config/sam_e70_xult/system/int/src/sys_int.c  .generated_files/flags/sam_e70_xult/8d7834819b8e8845227b253de3ffbba56ace0a16 .generated_files/flags/sam_e70_xult/aa17c397f86b784b2f888fc09182150a1882480e
	@${MKDIR} "${OBJECTDIR}/_ext/766002106" 
	@${RM} ${OBJECTDIR}/_ext/766002106/sys_int.o.d 
	@${RM} ${OBJECTDIR}/_ext/766002106/sys_int.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/sam_e70_xult" -I"../src/config/sam_e70_xult/library" -I"../src/config/sam_e70_xult/library/tcpip/src" -I"../src/config/sam_e70_xult/library/tcpip/src/common" -I"../src/packs/ATSAME70Q21B_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/766002106/sys_int.o.d" -o ${OBJECTDIR}/_ext/766002106/sys_int.o ../src/config/sam_e70_xult/system/int/src/sys_int.c    -DXPRJ_sam_e70_xult=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/same70b" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/862666043/sys_reset.o: ../src/config/sam_e70_xult/system/reset/sys_reset.c  .generated_files/flags/sam_e70_xult/161fe626d5dbaf411706d597ef5a4b4fa6d11502 .generated_files/flags/sam_e70_xult/aa17c397f86b784b2f888fc09182150a1882480e
	@${MKDIR} "${OBJECTDIR}/_ext/862666043" 
	@${RM} ${OBJECTDIR}/_ext/862666043/sys_reset.o.d 
	@${RM} ${OBJECTDIR}/_ext/862666043/sys_reset.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/sam_e70_xult" -I"../src/config/sam_e70_xult/library" -I"../src/config/sam_e70_xult/library/tcpip/src" -I"../src/config/sam_e70_xult/library/tcpip/src/common" -I"../src/packs/ATSAME70Q21B_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/862666043/sys_reset.o.d" -o ${OBJECTDIR}/_ext/862666043/sys_reset.o ../src/config/sam_e70_xult/system/reset/sys_reset.c    -DXPRJ_sam_e70_xult=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/same70b" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/327803284/sys_time.o: ../src/config/sam_e70_xult/system/time/src/sys_time.c  .generated_files/flags/sam_e70_xult/6dc5e90b0548e96a4de23f75490bcf02796f26cb .generated_files/flags/sam_e70_xult/aa17c397f86b784b2f888fc09182150a1882480e
	@${MKDIR} "${OBJECTDIR}/_ext/327803284" 
	@${RM} ${OBJECTDIR}/_ext/327803284/sys_time.o.d 
	@${RM} ${OBJECTDIR}/_ext/327803284/sys_time.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/sam_e70_xult" -I"../src/config/sam_e70_xult/library" -I"../src/config/sam_e70_xult/library/tcpip/src" -I"../src/config/sam_e70_xult/library/tcpip/src/common" -I"../src/packs/ATSAME70Q21B_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/327803284/sys_time.o.d" -o ${OBJECTDIR}/_ext/327803284/sys_time.o ../src/config/sam_e70_xult/system/time/src/sys_time.c    -DXPRJ_sam_e70_xult=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/same70b" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/157960187/sys_time_h2_adapter.o: ../src/config/sam_e70_xult/system/sys_time_h2_adapter.c  .generated_files/flags/sam_e70_xult/584c8849920e01cb1f54063471f19d6584dcbf11 .generated_files/flags/sam_e70_xult/aa17c397f86b784b2f888fc09182150a1882480e
	@${MKDIR} "${OBJECTDIR}/_ext/157960187" 
	@${RM} ${OBJECTDIR}/_ext/157960187/sys_time_h2_adapter.o.d 
	@${RM} ${OBJECTDIR}/_ext/157960187/sys_time_h2_adapter.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/sam_e70_xult" -I"../src/config/sam_e70_xult/library" -I"../src/config/sam_e70_xult/library/tcpip/src" -I"../src/config/sam_e70_xult/library/tcpip/src/common" -I"../src/packs/ATSAME70Q21B_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/157960187/sys_time_h2_adapter.o.d" -o ${OBJECTDIR}/_ext/157960187/sys_time_h2_adapter.o ../src/config/sam_e70_xult/system/sys_time_h2_adapter.c    -DXPRJ_sam_e70_xult=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/same70b" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1728594169/tasks.o: ../src/config/sam_e70_xult/tasks.c  .generated_files/flags/sam_e70_xult/db0d436474ea4f2b56d91e2f506bfb086ee0480b .generated_files/flags/sam_e70_xult/aa17c397f86b784b2f888fc09182150a1882480e
	@${MKDIR} "${OBJECTDIR}/_ext/1728594169" 
	@${RM} ${OBJECTDIR}/_ext/1728594169/tasks.o.d 
	@${RM} ${OBJECTDIR}/_ext/1728594169/tasks.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/sam_e70_xult" -I"../src/config/sam_e70_xult/library" -I"../src/config/sam_e70_xult/library/tcpip/src" -I"../src/config/sam_e70_xult/library/tcpip/src/common" -I"../src/packs/ATSAME70Q21B_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1728594169/tasks.o.d" -o ${OBJECTDIR}/_ext/1728594169/tasks.o ../src/config/sam_e70_xult/tasks.c    -DXPRJ_sam_e70_xult=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/same70b" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1728594169/initialization.o: ../src/config/sam_e70_xult/initialization.c  .generated_files/flags/sam_e70_xult/869f743806c5472bc470f46f42227b7363ede362 .generated_files/flags/sam_e70_xult/aa17c397f86b784b2f888fc09182150a1882480e
	@${MKDIR} "${OBJECTDIR}/_ext/1728594169" 
	@${RM} ${OBJECTDIR}/_ext/1728594169/initialization.o.d 
	@${RM} ${OBJECTDIR}/_ext/1728594169/initialization.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/sam_e70_xult" -I"../src/config/sam_e70_xult/library" -I"../src/config/sam_e70_xult/library/tcpip/src" -I"../src/config/sam_e70_xult/library/tcpip/src/common" -I"../src/packs/ATSAME70Q21B_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1728594169/initialization.o.d" -o ${OBJECTDIR}/_ext/1728594169/initialization.o ../src/config/sam_e70_xult/initialization.c    -DXPRJ_sam_e70_xult=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/same70b" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1728594169/interrupts.o: ../src/config/sam_e70_xult/interrupts.c  .generated_files/flags/sam_e70_xult/954cdcd95befe195aecd9bc4c0b70b63d4ada7f .generated_files/flags/sam_e70_xult/aa17c397f86b784b2f888fc09182150a1882480e
	@${MKDIR} "${OBJECTDIR}/_ext/1728594169" 
	@${RM} ${OBJECTDIR}/_ext/1728594169/interrupts.o.d 
	@${RM} ${OBJECTDIR}/_ext/1728594169/interrupts.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/sam_e70_xult" -I"../src/config/sam_e70_xult/library" -I"../src/config/sam_e70_xult/library/tcpip/src" -I"../src/config/sam_e70_xult/library/tcpip/src/common" -I"../src/packs/ATSAME70Q21B_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1728594169/interrupts.o.d" -o ${OBJECTDIR}/_ext/1728594169/interrupts.o ../src/config/sam_e70_xult/interrupts.c    -DXPRJ_sam_e70_xult=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/same70b" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1728594169/exceptions.o: ../src/config/sam_e70_xult/exceptions.c  .generated_files/flags/sam_e70_xult/7eb4efb9da4873f684675799964ce112665ea4fa .generated_files/flags/sam_e70_xult/aa17c397f86b784b2f888fc09182150a1882480e
	@${MKDIR} "${OBJECTDIR}/_ext/1728594169" 
	@${RM} ${OBJECTDIR}/_ext/1728594169/exceptions.o.d 
	@${RM} ${OBJECTDIR}/_ext/1728594169/exceptions.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/sam_e70_xult" -I"../src/config/sam_e70_xult/library" -I"../src/config/sam_e70_xult/library/tcpip/src" -I"../src/config/sam_e70_xult/library/tcpip/src/common" -I"../src/packs/ATSAME70Q21B_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1728594169/exceptions.o.d" -o ${OBJECTDIR}/_ext/1728594169/exceptions.o ../src/config/sam_e70_xult/exceptions.c    -DXPRJ_sam_e70_xult=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/same70b" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1728594169/startup_xc32.o: ../src/config/sam_e70_xult/startup_xc32.c  .generated_files/flags/sam_e70_xult/48f1f059181cdf651895bade8f92a360a39098f4 .generated_files/flags/sam_e70_xult/aa17c397f86b784b2f888fc09182150a1882480e
	@${MKDIR} "${OBJECTDIR}/_ext/1728594169" 
	@${RM} ${OBJECTDIR}/_ext/1728594169/startup_xc32.o.d 
	@${RM} ${OBJECTDIR}/_ext/1728594169/startup_xc32.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/sam_e70_xult" -I"../src/config/sam_e70_xult/library" -I"../src/config/sam_e70_xult/library/tcpip/src" -I"../src/config/sam_e70_xult/library/tcpip/src/common" -I"../src/packs/ATSAME70Q21B_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1728594169/startup_xc32.o.d" -o ${OBJECTDIR}/_ext/1728594169/startup_xc32.o ../src/config/sam_e70_xult/startup_xc32.c    -DXPRJ_sam_e70_xult=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/same70b" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1728594169/libc_syscalls.o: ../src/config/sam_e70_xult/libc_syscalls.c  .generated_files/flags/sam_e70_xult/d71f29fde78bc9ecbcc70156a8e7894c854557ae .generated_files/flags/sam_e70_xult/aa17c397f86b784b2f888fc09182150a1882480e
	@${MKDIR} "${OBJECTDIR}/_ext/1728594169" 
	@${RM} ${OBJECTDIR}/_ext/1728594169/libc_syscalls.o.d 
	@${RM} ${OBJECTDIR}/_ext/1728594169/libc_syscalls.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/sam_e70_xult" -I"../src/config/sam_e70_xult/library" -I"../src/config/sam_e70_xult/library/tcpip/src" -I"../src/config/sam_e70_xult/library/tcpip/src/common" -I"../src/packs/ATSAME70Q21B_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1728594169/libc_syscalls.o.d" -o ${OBJECTDIR}/_ext/1728594169/libc_syscalls.o ../src/config/sam_e70_xult/libc_syscalls.c    -DXPRJ_sam_e70_xult=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/same70b" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1360937237/app.o: ../src/app.c  .generated_files/flags/sam_e70_xult/11b01b7c7dc9053b9d8bd7009e809534f52b4d33 .generated_files/flags/sam_e70_xult/aa17c397f86b784b2f888fc09182150a1882480e
	@${MKDIR} "${OBJECTDIR}/_ext/1360937237" 
	@${RM} ${OBJECTDIR}/_ext/1360937237/app.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/app.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/sam_e70_xult" -I"../src/config/sam_e70_xult/library" -I"../src/config/sam_e70_xult/library/tcpip/src" -I"../src/config/sam_e70_xult/library/tcpip/src/common" -I"../src/packs/ATSAME70Q21B_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1360937237/app.o.d" -o ${OBJECTDIR}/_ext/1360937237/app.o ../src/app.c    -DXPRJ_sam_e70_xult=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/same70b" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1360937237/main.o: ../src/main.c  .generated_files/flags/sam_e70_xult/af8cb0f6c4dbdf9027f84d91bb2077cb1dea79f4 .generated_files/flags/sam_e70_xult/aa17c397f86b784b2f888fc09182150a1882480e
	@${MKDIR} "${OBJECTDIR}/_ext/1360937237" 
	@${RM} ${OBJECTDIR}/_ext/1360937237/main.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/main.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/sam_e70_xult" -I"../src/config/sam_e70_xult/library" -I"../src/config/sam_e70_xult/library/tcpip/src" -I"../src/config/sam_e70_xult/library/tcpip/src/common" -I"../src/packs/ATSAME70Q21B_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1360937237/main.o.d" -o ${OBJECTDIR}/_ext/1360937237/main.o ../src/main.c    -DXPRJ_sam_e70_xult=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/same70b" ${PACK_COMMON_OPTIONS} 
	
else
${OBJECTDIR}/_ext/917764137/bsp.o: ../src/config/sam_e70_xult/bsp/bsp.c  .generated_files/flags/sam_e70_xult/bb7f419a3d6bd864c4476c5f87ae26e58a887969 .generated_files/flags/sam_e70_xult/aa17c397f86b784b2f888fc09182150a1882480e
	@${MKDIR} "${OBJECTDIR}/_ext/917764137" 
	@${RM} ${OBJECTDIR}/_ext/917764137/bsp.o.d 
	@${RM} ${OBJECTDIR}/_ext/917764137/bsp.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/sam_e70_xult" -I"../src/config/sam_e70_xult/library" -I"../src/config/sam_e70_xult/library/tcpip/src" -I"../src/config/sam_e70_xult/library/tcpip/src/common" -I"../src/packs/ATSAME70Q21B_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/917764137/bsp.o.d" -o ${OBJECTDIR}/_ext/917764137/bsp.o ../src/config/sam_e70_xult/bsp/bsp.c    -DXPRJ_sam_e70_xult=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/same70b" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1015456894/drv_ethphy.o: ../src/config/sam_e70_xult/driver/ethphy/src/dynamic/drv_ethphy.c  .generated_files/flags/sam_e70_xult/7d923903c0c1da68444eb6774bdc3472c3a1369 .generated_files/flags/sam_e70_xult/aa17c397f86b784b2f888fc09182150a1882480e
	@${MKDIR} "${OBJECTDIR}/_ext/1015456894" 
	@${RM} ${OBJECTDIR}/_ext/1015456894/drv_ethphy.o.d 
	@${RM} ${OBJECTDIR}/_ext/1015456894/drv_ethphy.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/sam_e70_xult" -I"../src/config/sam_e70_xult/library" -I"../src/config/sam_e70_xult/library/tcpip/src" -I"../src/config/sam_e70_xult/library/tcpip/src/common" -I"../src/packs/ATSAME70Q21B_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1015456894/drv_ethphy.o.d" -o ${OBJECTDIR}/_ext/1015456894/drv_ethphy.o ../src/config/sam_e70_xult/driver/ethphy/src/dynamic/drv_ethphy.c    -DXPRJ_sam_e70_xult=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/same70b" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1015456894/drv_extphy_ksz8061.o: ../src/config/sam_e70_xult/driver/ethphy/src/dynamic/drv_extphy_ksz8061.c  .generated_files/flags/sam_e70_xult/24dbfed24bb5cae16696c04b021415847b93a0d2 .generated_files/flags/sam_e70_xult/aa17c397f86b784b2f888fc09182150a1882480e
	@${MKDIR} "${OBJECTDIR}/_ext/1015456894" 
	@${RM} ${OBJECTDIR}/_ext/1015456894/drv_extphy_ksz8061.o.d 
	@${RM} ${OBJECTDIR}/_ext/1015456894/drv_extphy_ksz8061.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/sam_e70_xult" -I"../src/config/sam_e70_xult/library" -I"../src/config/sam_e70_xult/library/tcpip/src" -I"../src/config/sam_e70_xult/library/tcpip/src/common" -I"../src/packs/ATSAME70Q21B_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1015456894/drv_extphy_ksz8061.o.d" -o ${OBJECTDIR}/_ext/1015456894/drv_extphy_ksz8061.o ../src/config/sam_e70_xult/driver/ethphy/src/dynamic/drv_extphy_ksz8061.c    -DXPRJ_sam_e70_xult=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/same70b" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/629088514/drv_gmac.o: ../src/config/sam_e70_xult/driver/gmac/src/dynamic/drv_gmac.c  .generated_files/flags/sam_e70_xult/133a9d37cf5e8546a2de8d0e4d790755d79eb2fd .generated_files/flags/sam_e70_xult/aa17c397f86b784b2f888fc09182150a1882480e
	@${MKDIR} "${OBJECTDIR}/_ext/629088514" 
	@${RM} ${OBJECTDIR}/_ext/629088514/drv_gmac.o.d 
	@${RM} ${OBJECTDIR}/_ext/629088514/drv_gmac.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/sam_e70_xult" -I"../src/config/sam_e70_xult/library" -I"../src/config/sam_e70_xult/library/tcpip/src" -I"../src/config/sam_e70_xult/library/tcpip/src/common" -I"../src/packs/ATSAME70Q21B_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/629088514/drv_gmac.o.d" -o ${OBJECTDIR}/_ext/629088514/drv_gmac.o ../src/config/sam_e70_xult/driver/gmac/src/dynamic/drv_gmac.c    -DXPRJ_sam_e70_xult=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/same70b" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/629088514/drv_gmac_lib_samE7x_V7x.o: ../src/config/sam_e70_xult/driver/gmac/src/dynamic/drv_gmac_lib_samE7x_V7x.c  .generated_files/flags/sam_e70_xult/7ba5741e23f2284e874d64964707ee6dd1657299 .generated_files/flags/sam_e70_xult/aa17c397f86b784b2f888fc09182150a1882480e
	@${MKDIR} "${OBJECTDIR}/_ext/629088514" 
	@${RM} ${OBJECTDIR}/_ext/629088514/drv_gmac_lib_samE7x_V7x.o.d 
	@${RM} ${OBJECTDIR}/_ext/629088514/drv_gmac_lib_samE7x_V7x.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/sam_e70_xult" -I"../src/config/sam_e70_xult/library" -I"../src/config/sam_e70_xult/library/tcpip/src" -I"../src/config/sam_e70_xult/library/tcpip/src/common" -I"../src/packs/ATSAME70Q21B_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/629088514/drv_gmac_lib_samE7x_V7x.o.d" -o ${OBJECTDIR}/_ext/629088514/drv_gmac_lib_samE7x_V7x.o ../src/config/sam_e70_xult/driver/gmac/src/dynamic/drv_gmac_lib_samE7x_V7x.c    -DXPRJ_sam_e70_xult=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/same70b" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/478869302/drv_miim.o: ../src/config/sam_e70_xult/driver/miim/src/dynamic/drv_miim.c  .generated_files/flags/sam_e70_xult/34f9c441fd5b571c6c8c12f1c229386c6a596710 .generated_files/flags/sam_e70_xult/aa17c397f86b784b2f888fc09182150a1882480e
	@${MKDIR} "${OBJECTDIR}/_ext/478869302" 
	@${RM} ${OBJECTDIR}/_ext/478869302/drv_miim.o.d 
	@${RM} ${OBJECTDIR}/_ext/478869302/drv_miim.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/sam_e70_xult" -I"../src/config/sam_e70_xult/library" -I"../src/config/sam_e70_xult/library/tcpip/src" -I"../src/config/sam_e70_xult/library/tcpip/src/common" -I"../src/packs/ATSAME70Q21B_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/478869302/drv_miim.o.d" -o ${OBJECTDIR}/_ext/478869302/drv_miim.o ../src/config/sam_e70_xult/driver/miim/src/dynamic/drv_miim.c    -DXPRJ_sam_e70_xult=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/same70b" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/902702131/helpers.o: ../src/config/sam_e70_xult/library/tcpip/src/helpers.c  .generated_files/flags/sam_e70_xult/d615c0141b97ae7c95a350136b212eb876fabae1 .generated_files/flags/sam_e70_xult/aa17c397f86b784b2f888fc09182150a1882480e
	@${MKDIR} "${OBJECTDIR}/_ext/902702131" 
	@${RM} ${OBJECTDIR}/_ext/902702131/helpers.o.d 
	@${RM} ${OBJECTDIR}/_ext/902702131/helpers.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/sam_e70_xult" -I"../src/config/sam_e70_xult/library" -I"../src/config/sam_e70_xult/library/tcpip/src" -I"../src/config/sam_e70_xult/library/tcpip/src/common" -I"../src/packs/ATSAME70Q21B_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/902702131/helpers.o.d" -o ${OBJECTDIR}/_ext/902702131/helpers.o ../src/config/sam_e70_xult/library/tcpip/src/helpers.c    -DXPRJ_sam_e70_xult=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/same70b" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/902702131/icmp.o: ../src/config/sam_e70_xult/library/tcpip/src/icmp.c  .generated_files/flags/sam_e70_xult/f0b2ae64e5ff301fc46c412d0d2216ae2fbf571d .generated_files/flags/sam_e70_xult/aa17c397f86b784b2f888fc09182150a1882480e
	@${MKDIR} "${OBJECTDIR}/_ext/902702131" 
	@${RM} ${OBJECTDIR}/_ext/902702131/icmp.o.d 
	@${RM} ${OBJECTDIR}/_ext/902702131/icmp.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/sam_e70_xult" -I"../src/config/sam_e70_xult/library" -I"../src/config/sam_e70_xult/library/tcpip/src" -I"../src/config/sam_e70_xult/library/tcpip/src/common" -I"../src/packs/ATSAME70Q21B_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/902702131/icmp.o.d" -o ${OBJECTDIR}/_ext/902702131/icmp.o ../src/config/sam_e70_xult/library/tcpip/src/icmp.c    -DXPRJ_sam_e70_xult=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/same70b" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/902702131/arp.o: ../src/config/sam_e70_xult/library/tcpip/src/arp.c  .generated_files/flags/sam_e70_xult/95252ac220399691b3383b5b92789c242c13f879 .generated_files/flags/sam_e70_xult/aa17c397f86b784b2f888fc09182150a1882480e
	@${MKDIR} "${OBJECTDIR}/_ext/902702131" 
	@${RM} ${OBJECTDIR}/_ext/902702131/arp.o.d 
	@${RM} ${OBJECTDIR}/_ext/902702131/arp.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/sam_e70_xult" -I"../src/config/sam_e70_xult/library" -I"../src/config/sam_e70_xult/library/tcpip/src" -I"../src/config/sam_e70_xult/library/tcpip/src/common" -I"../src/packs/ATSAME70Q21B_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/902702131/arp.o.d" -o ${OBJECTDIR}/_ext/902702131/arp.o ../src/config/sam_e70_xult/library/tcpip/src/arp.c    -DXPRJ_sam_e70_xult=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/same70b" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/902702131/tcpip_commands.o: ../src/config/sam_e70_xult/library/tcpip/src/tcpip_commands.c  .generated_files/flags/sam_e70_xult/5d8c418e035e392ee215b21649ff17384c88b7f5 .generated_files/flags/sam_e70_xult/aa17c397f86b784b2f888fc09182150a1882480e
	@${MKDIR} "${OBJECTDIR}/_ext/902702131" 
	@${RM} ${OBJECTDIR}/_ext/902702131/tcpip_commands.o.d 
	@${RM} ${OBJECTDIR}/_ext/902702131/tcpip_commands.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/sam_e70_xult" -I"../src/config/sam_e70_xult/library" -I"../src/config/sam_e70_xult/library/tcpip/src" -I"../src/config/sam_e70_xult/library/tcpip/src/common" -I"../src/packs/ATSAME70Q21B_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/902702131/tcpip_commands.o.d" -o ${OBJECTDIR}/_ext/902702131/tcpip_commands.o ../src/config/sam_e70_xult/library/tcpip/src/tcpip_commands.c    -DXPRJ_sam_e70_xult=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/same70b" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/902702131/ipv4.o: ../src/config/sam_e70_xult/library/tcpip/src/ipv4.c  .generated_files/flags/sam_e70_xult/11e8948ce0b10152d1a0a7b817206a3c6c154414 .generated_files/flags/sam_e70_xult/aa17c397f86b784b2f888fc09182150a1882480e
	@${MKDIR} "${OBJECTDIR}/_ext/902702131" 
	@${RM} ${OBJECTDIR}/_ext/902702131/ipv4.o.d 
	@${RM} ${OBJECTDIR}/_ext/902702131/ipv4.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/sam_e70_xult" -I"../src/config/sam_e70_xult/library" -I"../src/config/sam_e70_xult/library/tcpip/src" -I"../src/config/sam_e70_xult/library/tcpip/src/common" -I"../src/packs/ATSAME70Q21B_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/902702131/ipv4.o.d" -o ${OBJECTDIR}/_ext/902702131/ipv4.o ../src/config/sam_e70_xult/library/tcpip/src/ipv4.c    -DXPRJ_sam_e70_xult=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/same70b" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/902702131/tcpip_heap_alloc.o: ../src/config/sam_e70_xult/library/tcpip/src/tcpip_heap_alloc.c  .generated_files/flags/sam_e70_xult/b7f8507488779c177327161bb1642f2cff13c4b0 .generated_files/flags/sam_e70_xult/aa17c397f86b784b2f888fc09182150a1882480e
	@${MKDIR} "${OBJECTDIR}/_ext/902702131" 
	@${RM} ${OBJECTDIR}/_ext/902702131/tcpip_heap_alloc.o.d 
	@${RM} ${OBJECTDIR}/_ext/902702131/tcpip_heap_alloc.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/sam_e70_xult" -I"../src/config/sam_e70_xult/library" -I"../src/config/sam_e70_xult/library/tcpip/src" -I"../src/config/sam_e70_xult/library/tcpip/src/common" -I"../src/packs/ATSAME70Q21B_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/902702131/tcpip_heap_alloc.o.d" -o ${OBJECTDIR}/_ext/902702131/tcpip_heap_alloc.o ../src/config/sam_e70_xult/library/tcpip/src/tcpip_heap_alloc.c    -DXPRJ_sam_e70_xult=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/same70b" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/902702131/tcpip_heap_internal.o: ../src/config/sam_e70_xult/library/tcpip/src/tcpip_heap_internal.c  .generated_files/flags/sam_e70_xult/feade15da225b9741333d6f1a528c15cc4c6c7c2 .generated_files/flags/sam_e70_xult/aa17c397f86b784b2f888fc09182150a1882480e
	@${MKDIR} "${OBJECTDIR}/_ext/902702131" 
	@${RM} ${OBJECTDIR}/_ext/902702131/tcpip_heap_internal.o.d 
	@${RM} ${OBJECTDIR}/_ext/902702131/tcpip_heap_internal.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/sam_e70_xult" -I"../src/config/sam_e70_xult/library" -I"../src/config/sam_e70_xult/library/tcpip/src" -I"../src/config/sam_e70_xult/library/tcpip/src/common" -I"../src/packs/ATSAME70Q21B_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/902702131/tcpip_heap_internal.o.d" -o ${OBJECTDIR}/_ext/902702131/tcpip_heap_internal.o ../src/config/sam_e70_xult/library/tcpip/src/tcpip_heap_internal.c    -DXPRJ_sam_e70_xult=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/same70b" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/902702131/dhcp.o: ../src/config/sam_e70_xult/library/tcpip/src/dhcp.c  .generated_files/flags/sam_e70_xult/8526e55bb652ed2964619a29d753f5e0b838716 .generated_files/flags/sam_e70_xult/aa17c397f86b784b2f888fc09182150a1882480e
	@${MKDIR} "${OBJECTDIR}/_ext/902702131" 
	@${RM} ${OBJECTDIR}/_ext/902702131/dhcp.o.d 
	@${RM} ${OBJECTDIR}/_ext/902702131/dhcp.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/sam_e70_xult" -I"../src/config/sam_e70_xult/library" -I"../src/config/sam_e70_xult/library/tcpip/src" -I"../src/config/sam_e70_xult/library/tcpip/src/common" -I"../src/packs/ATSAME70Q21B_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/902702131/dhcp.o.d" -o ${OBJECTDIR}/_ext/902702131/dhcp.o ../src/config/sam_e70_xult/library/tcpip/src/dhcp.c    -DXPRJ_sam_e70_xult=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/same70b" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/902702131/dns.o: ../src/config/sam_e70_xult/library/tcpip/src/dns.c  .generated_files/flags/sam_e70_xult/d7fda1a5bcf183e2e83e48eddbc10966557c8912 .generated_files/flags/sam_e70_xult/aa17c397f86b784b2f888fc09182150a1882480e
	@${MKDIR} "${OBJECTDIR}/_ext/902702131" 
	@${RM} ${OBJECTDIR}/_ext/902702131/dns.o.d 
	@${RM} ${OBJECTDIR}/_ext/902702131/dns.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/sam_e70_xult" -I"../src/config/sam_e70_xult/library" -I"../src/config/sam_e70_xult/library/tcpip/src" -I"../src/config/sam_e70_xult/library/tcpip/src/common" -I"../src/packs/ATSAME70Q21B_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/902702131/dns.o.d" -o ${OBJECTDIR}/_ext/902702131/dns.o ../src/config/sam_e70_xult/library/tcpip/src/dns.c    -DXPRJ_sam_e70_xult=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/same70b" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/902702131/hash_fnv.o: ../src/config/sam_e70_xult/library/tcpip/src/hash_fnv.c  .generated_files/flags/sam_e70_xult/ed1a04e359a8164bebf9724f24a608820933d43 .generated_files/flags/sam_e70_xult/aa17c397f86b784b2f888fc09182150a1882480e
	@${MKDIR} "${OBJECTDIR}/_ext/902702131" 
	@${RM} ${OBJECTDIR}/_ext/902702131/hash_fnv.o.d 
	@${RM} ${OBJECTDIR}/_ext/902702131/hash_fnv.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/sam_e70_xult" -I"../src/config/sam_e70_xult/library" -I"../src/config/sam_e70_xult/library/tcpip/src" -I"../src/config/sam_e70_xult/library/tcpip/src/common" -I"../src/packs/ATSAME70Q21B_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/902702131/hash_fnv.o.d" -o ${OBJECTDIR}/_ext/902702131/hash_fnv.o ../src/config/sam_e70_xult/library/tcpip/src/hash_fnv.c    -DXPRJ_sam_e70_xult=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/same70b" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/902702131/oahash.o: ../src/config/sam_e70_xult/library/tcpip/src/oahash.c  .generated_files/flags/sam_e70_xult/8c8d927324f2547ddc94f594675abd9cb002ab81 .generated_files/flags/sam_e70_xult/aa17c397f86b784b2f888fc09182150a1882480e
	@${MKDIR} "${OBJECTDIR}/_ext/902702131" 
	@${RM} ${OBJECTDIR}/_ext/902702131/oahash.o.d 
	@${RM} ${OBJECTDIR}/_ext/902702131/oahash.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/sam_e70_xult" -I"../src/config/sam_e70_xult/library" -I"../src/config/sam_e70_xult/library/tcpip/src" -I"../src/config/sam_e70_xult/library/tcpip/src/common" -I"../src/packs/ATSAME70Q21B_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/902702131/oahash.o.d" -o ${OBJECTDIR}/_ext/902702131/oahash.o ../src/config/sam_e70_xult/library/tcpip/src/oahash.c    -DXPRJ_sam_e70_xult=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/same70b" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/902702131/tcpip_helpers.o: ../src/config/sam_e70_xult/library/tcpip/src/tcpip_helpers.c  .generated_files/flags/sam_e70_xult/748b0d7c48f193c9cfb9073ac9de751d22ea332d .generated_files/flags/sam_e70_xult/aa17c397f86b784b2f888fc09182150a1882480e
	@${MKDIR} "${OBJECTDIR}/_ext/902702131" 
	@${RM} ${OBJECTDIR}/_ext/902702131/tcpip_helpers.o.d 
	@${RM} ${OBJECTDIR}/_ext/902702131/tcpip_helpers.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/sam_e70_xult" -I"../src/config/sam_e70_xult/library" -I"../src/config/sam_e70_xult/library/tcpip/src" -I"../src/config/sam_e70_xult/library/tcpip/src/common" -I"../src/packs/ATSAME70Q21B_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/902702131/tcpip_helpers.o.d" -o ${OBJECTDIR}/_ext/902702131/tcpip_helpers.o ../src/config/sam_e70_xult/library/tcpip/src/tcpip_helpers.c    -DXPRJ_sam_e70_xult=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/same70b" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/902702131/tcpip_manager.o: ../src/config/sam_e70_xult/library/tcpip/src/tcpip_manager.c  .generated_files/flags/sam_e70_xult/6d9e0dce5106195833c53d332c48e087cc235131 .generated_files/flags/sam_e70_xult/aa17c397f86b784b2f888fc09182150a1882480e
	@${MKDIR} "${OBJECTDIR}/_ext/902702131" 
	@${RM} ${OBJECTDIR}/_ext/902702131/tcpip_manager.o.d 
	@${RM} ${OBJECTDIR}/_ext/902702131/tcpip_manager.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/sam_e70_xult" -I"../src/config/sam_e70_xult/library" -I"../src/config/sam_e70_xult/library/tcpip/src" -I"../src/config/sam_e70_xult/library/tcpip/src/common" -I"../src/packs/ATSAME70Q21B_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/902702131/tcpip_manager.o.d" -o ${OBJECTDIR}/_ext/902702131/tcpip_manager.o ../src/config/sam_e70_xult/library/tcpip/src/tcpip_manager.c    -DXPRJ_sam_e70_xult=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/same70b" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/902702131/tcpip_notify.o: ../src/config/sam_e70_xult/library/tcpip/src/tcpip_notify.c  .generated_files/flags/sam_e70_xult/683e50cfc9266beb11476a7dbd5984d5ce53d22b .generated_files/flags/sam_e70_xult/aa17c397f86b784b2f888fc09182150a1882480e
	@${MKDIR} "${OBJECTDIR}/_ext/902702131" 
	@${RM} ${OBJECTDIR}/_ext/902702131/tcpip_notify.o.d 
	@${RM} ${OBJECTDIR}/_ext/902702131/tcpip_notify.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/sam_e70_xult" -I"../src/config/sam_e70_xult/library" -I"../src/config/sam_e70_xult/library/tcpip/src" -I"../src/config/sam_e70_xult/library/tcpip/src/common" -I"../src/packs/ATSAME70Q21B_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/902702131/tcpip_notify.o.d" -o ${OBJECTDIR}/_ext/902702131/tcpip_notify.o ../src/config/sam_e70_xult/library/tcpip/src/tcpip_notify.c    -DXPRJ_sam_e70_xult=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/same70b" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/902702131/tcpip_packet.o: ../src/config/sam_e70_xult/library/tcpip/src/tcpip_packet.c  .generated_files/flags/sam_e70_xult/6d33080cd423f29e528683015dc9fdd37fafaa9 .generated_files/flags/sam_e70_xult/aa17c397f86b784b2f888fc09182150a1882480e
	@${MKDIR} "${OBJECTDIR}/_ext/902702131" 
	@${RM} ${OBJECTDIR}/_ext/902702131/tcpip_packet.o.d 
	@${RM} ${OBJECTDIR}/_ext/902702131/tcpip_packet.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/sam_e70_xult" -I"../src/config/sam_e70_xult/library" -I"../src/config/sam_e70_xult/library/tcpip/src" -I"../src/config/sam_e70_xult/library/tcpip/src/common" -I"../src/packs/ATSAME70Q21B_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/902702131/tcpip_packet.o.d" -o ${OBJECTDIR}/_ext/902702131/tcpip_packet.o ../src/config/sam_e70_xult/library/tcpip/src/tcpip_packet.c    -DXPRJ_sam_e70_xult=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/same70b" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/902702131/udp.o: ../src/config/sam_e70_xult/library/tcpip/src/udp.c  .generated_files/flags/sam_e70_xult/feff2a1f0c0015530c52582b1f6cb015b719c288 .generated_files/flags/sam_e70_xult/aa17c397f86b784b2f888fc09182150a1882480e
	@${MKDIR} "${OBJECTDIR}/_ext/902702131" 
	@${RM} ${OBJECTDIR}/_ext/902702131/udp.o.d 
	@${RM} ${OBJECTDIR}/_ext/902702131/udp.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/sam_e70_xult" -I"../src/config/sam_e70_xult/library" -I"../src/config/sam_e70_xult/library/tcpip/src" -I"../src/config/sam_e70_xult/library/tcpip/src/common" -I"../src/packs/ATSAME70Q21B_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/902702131/udp.o.d" -o ${OBJECTDIR}/_ext/902702131/udp.o ../src/config/sam_e70_xult/library/tcpip/src/udp.c    -DXPRJ_sam_e70_xult=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/same70b" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1639147296/plib_afec1.o: ../src/config/sam_e70_xult/peripheral/afec/plib_afec1.c  .generated_files/flags/sam_e70_xult/c86238637c5ce2ecce9e4558d1bd096e8e998c .generated_files/flags/sam_e70_xult/aa17c397f86b784b2f888fc09182150a1882480e
	@${MKDIR} "${OBJECTDIR}/_ext/1639147296" 
	@${RM} ${OBJECTDIR}/_ext/1639147296/plib_afec1.o.d 
	@${RM} ${OBJECTDIR}/_ext/1639147296/plib_afec1.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/sam_e70_xult" -I"../src/config/sam_e70_xult/library" -I"../src/config/sam_e70_xult/library/tcpip/src" -I"../src/config/sam_e70_xult/library/tcpip/src/common" -I"../src/packs/ATSAME70Q21B_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1639147296/plib_afec1.o.d" -o ${OBJECTDIR}/_ext/1639147296/plib_afec1.o ../src/config/sam_e70_xult/peripheral/afec/plib_afec1.c    -DXPRJ_sam_e70_xult=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/same70b" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1055500827/plib_clk.o: ../src/config/sam_e70_xult/peripheral/clk/plib_clk.c  .generated_files/flags/sam_e70_xult/51c5310a7e258593928a3c040e3358098d458993 .generated_files/flags/sam_e70_xult/aa17c397f86b784b2f888fc09182150a1882480e
	@${MKDIR} "${OBJECTDIR}/_ext/1055500827" 
	@${RM} ${OBJECTDIR}/_ext/1055500827/plib_clk.o.d 
	@${RM} ${OBJECTDIR}/_ext/1055500827/plib_clk.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/sam_e70_xult" -I"../src/config/sam_e70_xult/library" -I"../src/config/sam_e70_xult/library/tcpip/src" -I"../src/config/sam_e70_xult/library/tcpip/src/common" -I"../src/packs/ATSAME70Q21B_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1055500827/plib_clk.o.d" -o ${OBJECTDIR}/_ext/1055500827/plib_clk.o ../src/config/sam_e70_xult/peripheral/clk/plib_clk.c    -DXPRJ_sam_e70_xult=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/same70b" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1055499099/plib_efc.o: ../src/config/sam_e70_xult/peripheral/efc/plib_efc.c  .generated_files/flags/sam_e70_xult/2c5d43f005c0870c8c69b9b9f8810042e94f9162 .generated_files/flags/sam_e70_xult/aa17c397f86b784b2f888fc09182150a1882480e
	@${MKDIR} "${OBJECTDIR}/_ext/1055499099" 
	@${RM} ${OBJECTDIR}/_ext/1055499099/plib_efc.o.d 
	@${RM} ${OBJECTDIR}/_ext/1055499099/plib_efc.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/sam_e70_xult" -I"../src/config/sam_e70_xult/library" -I"../src/config/sam_e70_xult/library/tcpip/src" -I"../src/config/sam_e70_xult/library/tcpip/src/common" -I"../src/packs/ATSAME70Q21B_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1055499099/plib_efc.o.d" -o ${OBJECTDIR}/_ext/1055499099/plib_efc.o ../src/config/sam_e70_xult/peripheral/efc/plib_efc.c    -DXPRJ_sam_e70_xult=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/same70b" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1055491083/plib_mpu.o: ../src/config/sam_e70_xult/peripheral/mpu/plib_mpu.c  .generated_files/flags/sam_e70_xult/5d790e4a5d60bb4da0d4f0ec77dea85279969ba6 .generated_files/flags/sam_e70_xult/aa17c397f86b784b2f888fc09182150a1882480e
	@${MKDIR} "${OBJECTDIR}/_ext/1055491083" 
	@${RM} ${OBJECTDIR}/_ext/1055491083/plib_mpu.o.d 
	@${RM} ${OBJECTDIR}/_ext/1055491083/plib_mpu.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/sam_e70_xult" -I"../src/config/sam_e70_xult/library" -I"../src/config/sam_e70_xult/library/tcpip/src" -I"../src/config/sam_e70_xult/library/tcpip/src/common" -I"../src/packs/ATSAME70Q21B_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1055491083/plib_mpu.o.d" -o ${OBJECTDIR}/_ext/1055491083/plib_mpu.o ../src/config/sam_e70_xult/peripheral/mpu/plib_mpu.c    -DXPRJ_sam_e70_xult=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/same70b" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1639550079/plib_nvic.o: ../src/config/sam_e70_xult/peripheral/nvic/plib_nvic.c  .generated_files/flags/sam_e70_xult/d5fdad17f5839ef4fbed098f4bdf56a14b815566 .generated_files/flags/sam_e70_xult/aa17c397f86b784b2f888fc09182150a1882480e
	@${MKDIR} "${OBJECTDIR}/_ext/1639550079" 
	@${RM} ${OBJECTDIR}/_ext/1639550079/plib_nvic.o.d 
	@${RM} ${OBJECTDIR}/_ext/1639550079/plib_nvic.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/sam_e70_xult" -I"../src/config/sam_e70_xult/library" -I"../src/config/sam_e70_xult/library/tcpip/src" -I"../src/config/sam_e70_xult/library/tcpip/src/common" -I"../src/packs/ATSAME70Q21B_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1639550079/plib_nvic.o.d" -o ${OBJECTDIR}/_ext/1639550079/plib_nvic.o ../src/config/sam_e70_xult/peripheral/nvic/plib_nvic.c    -DXPRJ_sam_e70_xult=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/same70b" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1055488423/plib_pio.o: ../src/config/sam_e70_xult/peripheral/pio/plib_pio.c  .generated_files/flags/sam_e70_xult/c043b658d12f333dae8fb82ae2b987a32ec62317 .generated_files/flags/sam_e70_xult/aa17c397f86b784b2f888fc09182150a1882480e
	@${MKDIR} "${OBJECTDIR}/_ext/1055488423" 
	@${RM} ${OBJECTDIR}/_ext/1055488423/plib_pio.o.d 
	@${RM} ${OBJECTDIR}/_ext/1055488423/plib_pio.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/sam_e70_xult" -I"../src/config/sam_e70_xult/library" -I"../src/config/sam_e70_xult/library/tcpip/src" -I"../src/config/sam_e70_xult/library/tcpip/src/common" -I"../src/packs/ATSAME70Q21B_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1055488423/plib_pio.o.d" -o ${OBJECTDIR}/_ext/1055488423/plib_pio.o ../src/config/sam_e70_xult/peripheral/pio/plib_pio.c    -DXPRJ_sam_e70_xult=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/same70b" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/865331892/plib_tc0.o: ../src/config/sam_e70_xult/peripheral/tc/plib_tc0.c  .generated_files/flags/sam_e70_xult/51cd997cd590622f36551485efb633b40303f4b2 .generated_files/flags/sam_e70_xult/aa17c397f86b784b2f888fc09182150a1882480e
	@${MKDIR} "${OBJECTDIR}/_ext/865331892" 
	@${RM} ${OBJECTDIR}/_ext/865331892/plib_tc0.o.d 
	@${RM} ${OBJECTDIR}/_ext/865331892/plib_tc0.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/sam_e70_xult" -I"../src/config/sam_e70_xult/library" -I"../src/config/sam_e70_xult/library/tcpip/src" -I"../src/config/sam_e70_xult/library/tcpip/src/common" -I"../src/packs/ATSAME70Q21B_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/865331892/plib_tc0.o.d" -o ${OBJECTDIR}/_ext/865331892/plib_tc0.o ../src/config/sam_e70_xult/peripheral/tc/plib_tc0.c    -DXPRJ_sam_e70_xult=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/same70b" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/707186936/plib_usart1.o: ../src/config/sam_e70_xult/peripheral/usart/plib_usart1.c  .generated_files/flags/sam_e70_xult/2d7426cfa5ab698f706d8f3083acac638af4ebd3 .generated_files/flags/sam_e70_xult/aa17c397f86b784b2f888fc09182150a1882480e
	@${MKDIR} "${OBJECTDIR}/_ext/707186936" 
	@${RM} ${OBJECTDIR}/_ext/707186936/plib_usart1.o.d 
	@${RM} ${OBJECTDIR}/_ext/707186936/plib_usart1.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/sam_e70_xult" -I"../src/config/sam_e70_xult/library" -I"../src/config/sam_e70_xult/library/tcpip/src" -I"../src/config/sam_e70_xult/library/tcpip/src/common" -I"../src/packs/ATSAME70Q21B_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/707186936/plib_usart1.o.d" -o ${OBJECTDIR}/_ext/707186936/plib_usart1.o ../src/config/sam_e70_xult/peripheral/usart/plib_usart1.c    -DXPRJ_sam_e70_xult=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/same70b" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1518761459/xc32_monitor.o: ../src/config/sam_e70_xult/stdio/xc32_monitor.c  .generated_files/flags/sam_e70_xult/a8bff0c5ac2faccdb39cb8baa3d17d20489f9e0f .generated_files/flags/sam_e70_xult/aa17c397f86b784b2f888fc09182150a1882480e
	@${MKDIR} "${OBJECTDIR}/_ext/1518761459" 
	@${RM} ${OBJECTDIR}/_ext/1518761459/xc32_monitor.o.d 
	@${RM} ${OBJECTDIR}/_ext/1518761459/xc32_monitor.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/sam_e70_xult" -I"../src/config/sam_e70_xult/library" -I"../src/config/sam_e70_xult/library/tcpip/src" -I"../src/config/sam_e70_xult/library/tcpip/src/common" -I"../src/packs/ATSAME70Q21B_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1518761459/xc32_monitor.o.d" -o ${OBJECTDIR}/_ext/1518761459/xc32_monitor.o ../src/config/sam_e70_xult/stdio/xc32_monitor.c    -DXPRJ_sam_e70_xult=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/same70b" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/876653320/sys_cache.o: ../src/config/sam_e70_xult/system/cache/sys_cache.c  .generated_files/flags/sam_e70_xult/2d06f2bc84b76bd228d99e0b55adc7715544fc34 .generated_files/flags/sam_e70_xult/aa17c397f86b784b2f888fc09182150a1882480e
	@${MKDIR} "${OBJECTDIR}/_ext/876653320" 
	@${RM} ${OBJECTDIR}/_ext/876653320/sys_cache.o.d 
	@${RM} ${OBJECTDIR}/_ext/876653320/sys_cache.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/sam_e70_xult" -I"../src/config/sam_e70_xult/library" -I"../src/config/sam_e70_xult/library/tcpip/src" -I"../src/config/sam_e70_xult/library/tcpip/src/common" -I"../src/packs/ATSAME70Q21B_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/876653320/sys_cache.o.d" -o ${OBJECTDIR}/_ext/876653320/sys_cache.o ../src/config/sam_e70_xult/system/cache/sys_cache.c    -DXPRJ_sam_e70_xult=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/same70b" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1497066986/sys_command.o: ../src/config/sam_e70_xult/system/command/src/sys_command.c  .generated_files/flags/sam_e70_xult/b7bbf482365a1add726e0d09d78cb3170525d150 .generated_files/flags/sam_e70_xult/aa17c397f86b784b2f888fc09182150a1882480e
	@${MKDIR} "${OBJECTDIR}/_ext/1497066986" 
	@${RM} ${OBJECTDIR}/_ext/1497066986/sys_command.o.d 
	@${RM} ${OBJECTDIR}/_ext/1497066986/sys_command.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/sam_e70_xult" -I"../src/config/sam_e70_xult/library" -I"../src/config/sam_e70_xult/library/tcpip/src" -I"../src/config/sam_e70_xult/library/tcpip/src/common" -I"../src/packs/ATSAME70Q21B_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1497066986/sys_command.o.d" -o ${OBJECTDIR}/_ext/1497066986/sys_command.o ../src/config/sam_e70_xult/system/command/src/sys_command.c    -DXPRJ_sam_e70_xult=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/same70b" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1953779166/sys_console_uart.o: ../src/config/sam_e70_xult/system/console/src/sys_console_uart.c  .generated_files/flags/sam_e70_xult/46707cf342a0e92200d27f76959292f0c54b78b6 .generated_files/flags/sam_e70_xult/aa17c397f86b784b2f888fc09182150a1882480e
	@${MKDIR} "${OBJECTDIR}/_ext/1953779166" 
	@${RM} ${OBJECTDIR}/_ext/1953779166/sys_console_uart.o.d 
	@${RM} ${OBJECTDIR}/_ext/1953779166/sys_console_uart.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/sam_e70_xult" -I"../src/config/sam_e70_xult/library" -I"../src/config/sam_e70_xult/library/tcpip/src" -I"../src/config/sam_e70_xult/library/tcpip/src/common" -I"../src/packs/ATSAME70Q21B_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1953779166/sys_console_uart.o.d" -o ${OBJECTDIR}/_ext/1953779166/sys_console_uart.o ../src/config/sam_e70_xult/system/console/src/sys_console_uart.c    -DXPRJ_sam_e70_xult=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/same70b" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1953779166/sys_console.o: ../src/config/sam_e70_xult/system/console/src/sys_console.c  .generated_files/flags/sam_e70_xult/a291cf22cbca32efbd087d871868354cb29b7d7a .generated_files/flags/sam_e70_xult/aa17c397f86b784b2f888fc09182150a1882480e
	@${MKDIR} "${OBJECTDIR}/_ext/1953779166" 
	@${RM} ${OBJECTDIR}/_ext/1953779166/sys_console.o.d 
	@${RM} ${OBJECTDIR}/_ext/1953779166/sys_console.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/sam_e70_xult" -I"../src/config/sam_e70_xult/library" -I"../src/config/sam_e70_xult/library/tcpip/src" -I"../src/config/sam_e70_xult/library/tcpip/src/common" -I"../src/packs/ATSAME70Q21B_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1953779166/sys_console.o.d" -o ${OBJECTDIR}/_ext/1953779166/sys_console.o ../src/config/sam_e70_xult/system/console/src/sys_console.c    -DXPRJ_sam_e70_xult=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/same70b" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1763620194/sys_debug.o: ../src/config/sam_e70_xult/system/debug/src/sys_debug.c  .generated_files/flags/sam_e70_xult/8bcf1024c9c3dd379c305dc39cd35475e67d1ddd .generated_files/flags/sam_e70_xult/aa17c397f86b784b2f888fc09182150a1882480e
	@${MKDIR} "${OBJECTDIR}/_ext/1763620194" 
	@${RM} ${OBJECTDIR}/_ext/1763620194/sys_debug.o.d 
	@${RM} ${OBJECTDIR}/_ext/1763620194/sys_debug.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/sam_e70_xult" -I"../src/config/sam_e70_xult/library" -I"../src/config/sam_e70_xult/library/tcpip/src" -I"../src/config/sam_e70_xult/library/tcpip/src/common" -I"../src/packs/ATSAME70Q21B_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1763620194/sys_debug.o.d" -o ${OBJECTDIR}/_ext/1763620194/sys_debug.o ../src/config/sam_e70_xult/system/debug/src/sys_debug.c    -DXPRJ_sam_e70_xult=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/same70b" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/766002106/sys_int.o: ../src/config/sam_e70_xult/system/int/src/sys_int.c  .generated_files/flags/sam_e70_xult/8fefd035205d9593501049eee832e4f99e6d86c3 .generated_files/flags/sam_e70_xult/aa17c397f86b784b2f888fc09182150a1882480e
	@${MKDIR} "${OBJECTDIR}/_ext/766002106" 
	@${RM} ${OBJECTDIR}/_ext/766002106/sys_int.o.d 
	@${RM} ${OBJECTDIR}/_ext/766002106/sys_int.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/sam_e70_xult" -I"../src/config/sam_e70_xult/library" -I"../src/config/sam_e70_xult/library/tcpip/src" -I"../src/config/sam_e70_xult/library/tcpip/src/common" -I"../src/packs/ATSAME70Q21B_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/766002106/sys_int.o.d" -o ${OBJECTDIR}/_ext/766002106/sys_int.o ../src/config/sam_e70_xult/system/int/src/sys_int.c    -DXPRJ_sam_e70_xult=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/same70b" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/862666043/sys_reset.o: ../src/config/sam_e70_xult/system/reset/sys_reset.c  .generated_files/flags/sam_e70_xult/666406497890c967a23ede3172dd1f1575cc9b1f .generated_files/flags/sam_e70_xult/aa17c397f86b784b2f888fc09182150a1882480e
	@${MKDIR} "${OBJECTDIR}/_ext/862666043" 
	@${RM} ${OBJECTDIR}/_ext/862666043/sys_reset.o.d 
	@${RM} ${OBJECTDIR}/_ext/862666043/sys_reset.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/sam_e70_xult" -I"../src/config/sam_e70_xult/library" -I"../src/config/sam_e70_xult/library/tcpip/src" -I"../src/config/sam_e70_xult/library/tcpip/src/common" -I"../src/packs/ATSAME70Q21B_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/862666043/sys_reset.o.d" -o ${OBJECTDIR}/_ext/862666043/sys_reset.o ../src/config/sam_e70_xult/system/reset/sys_reset.c    -DXPRJ_sam_e70_xult=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/same70b" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/327803284/sys_time.o: ../src/config/sam_e70_xult/system/time/src/sys_time.c  .generated_files/flags/sam_e70_xult/5879344d732a8dd19c0260f0bcb9ee525b103846 .generated_files/flags/sam_e70_xult/aa17c397f86b784b2f888fc09182150a1882480e
	@${MKDIR} "${OBJECTDIR}/_ext/327803284" 
	@${RM} ${OBJECTDIR}/_ext/327803284/sys_time.o.d 
	@${RM} ${OBJECTDIR}/_ext/327803284/sys_time.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/sam_e70_xult" -I"../src/config/sam_e70_xult/library" -I"../src/config/sam_e70_xult/library/tcpip/src" -I"../src/config/sam_e70_xult/library/tcpip/src/common" -I"../src/packs/ATSAME70Q21B_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/327803284/sys_time.o.d" -o ${OBJECTDIR}/_ext/327803284/sys_time.o ../src/config/sam_e70_xult/system/time/src/sys_time.c    -DXPRJ_sam_e70_xult=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/same70b" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/157960187/sys_time_h2_adapter.o: ../src/config/sam_e70_xult/system/sys_time_h2_adapter.c  .generated_files/flags/sam_e70_xult/7a76feef27d2dbc8dba963910a3cbd5ff0557f9b .generated_files/flags/sam_e70_xult/aa17c397f86b784b2f888fc09182150a1882480e
	@${MKDIR} "${OBJECTDIR}/_ext/157960187" 
	@${RM} ${OBJECTDIR}/_ext/157960187/sys_time_h2_adapter.o.d 
	@${RM} ${OBJECTDIR}/_ext/157960187/sys_time_h2_adapter.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/sam_e70_xult" -I"../src/config/sam_e70_xult/library" -I"../src/config/sam_e70_xult/library/tcpip/src" -I"../src/config/sam_e70_xult/library/tcpip/src/common" -I"../src/packs/ATSAME70Q21B_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/157960187/sys_time_h2_adapter.o.d" -o ${OBJECTDIR}/_ext/157960187/sys_time_h2_adapter.o ../src/config/sam_e70_xult/system/sys_time_h2_adapter.c    -DXPRJ_sam_e70_xult=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/same70b" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1728594169/tasks.o: ../src/config/sam_e70_xult/tasks.c  .generated_files/flags/sam_e70_xult/2482fc4cb8c72acdd2e7b86445e1525887de1d1a .generated_files/flags/sam_e70_xult/aa17c397f86b784b2f888fc09182150a1882480e
	@${MKDIR} "${OBJECTDIR}/_ext/1728594169" 
	@${RM} ${OBJECTDIR}/_ext/1728594169/tasks.o.d 
	@${RM} ${OBJECTDIR}/_ext/1728594169/tasks.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/sam_e70_xult" -I"../src/config/sam_e70_xult/library" -I"../src/config/sam_e70_xult/library/tcpip/src" -I"../src/config/sam_e70_xult/library/tcpip/src/common" -I"../src/packs/ATSAME70Q21B_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1728594169/tasks.o.d" -o ${OBJECTDIR}/_ext/1728594169/tasks.o ../src/config/sam_e70_xult/tasks.c    -DXPRJ_sam_e70_xult=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/same70b" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1728594169/initialization.o: ../src/config/sam_e70_xult/initialization.c  .generated_files/flags/sam_e70_xult/3e8c08348bc669c4adcfc2aceef3d795caed164f .generated_files/flags/sam_e70_xult/aa17c397f86b784b2f888fc09182150a1882480e
	@${MKDIR} "${OBJECTDIR}/_ext/1728594169" 
	@${RM} ${OBJECTDIR}/_ext/1728594169/initialization.o.d 
	@${RM} ${OBJECTDIR}/_ext/1728594169/initialization.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/sam_e70_xult" -I"../src/config/sam_e70_xult/library" -I"../src/config/sam_e70_xult/library/tcpip/src" -I"../src/config/sam_e70_xult/library/tcpip/src/common" -I"../src/packs/ATSAME70Q21B_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1728594169/initialization.o.d" -o ${OBJECTDIR}/_ext/1728594169/initialization.o ../src/config/sam_e70_xult/initialization.c    -DXPRJ_sam_e70_xult=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/same70b" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1728594169/interrupts.o: ../src/config/sam_e70_xult/interrupts.c  .generated_files/flags/sam_e70_xult/dd2fcd7c599d77b955e2a04f20ed8760ebbc6a2c .generated_files/flags/sam_e70_xult/aa17c397f86b784b2f888fc09182150a1882480e
	@${MKDIR} "${OBJECTDIR}/_ext/1728594169" 
	@${RM} ${OBJECTDIR}/_ext/1728594169/interrupts.o.d 
	@${RM} ${OBJECTDIR}/_ext/1728594169/interrupts.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/sam_e70_xult" -I"../src/config/sam_e70_xult/library" -I"../src/config/sam_e70_xult/library/tcpip/src" -I"../src/config/sam_e70_xult/library/tcpip/src/common" -I"../src/packs/ATSAME70Q21B_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1728594169/interrupts.o.d" -o ${OBJECTDIR}/_ext/1728594169/interrupts.o ../src/config/sam_e70_xult/interrupts.c    -DXPRJ_sam_e70_xult=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/same70b" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1728594169/exceptions.o: ../src/config/sam_e70_xult/exceptions.c  .generated_files/flags/sam_e70_xult/71dc1c0c2d097a6c9e1bb35a32a78325971d6196 .generated_files/flags/sam_e70_xult/aa17c397f86b784b2f888fc09182150a1882480e
	@${MKDIR} "${OBJECTDIR}/_ext/1728594169" 
	@${RM} ${OBJECTDIR}/_ext/1728594169/exceptions.o.d 
	@${RM} ${OBJECTDIR}/_ext/1728594169/exceptions.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/sam_e70_xult" -I"../src/config/sam_e70_xult/library" -I"../src/config/sam_e70_xult/library/tcpip/src" -I"../src/config/sam_e70_xult/library/tcpip/src/common" -I"../src/packs/ATSAME70Q21B_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1728594169/exceptions.o.d" -o ${OBJECTDIR}/_ext/1728594169/exceptions.o ../src/config/sam_e70_xult/exceptions.c    -DXPRJ_sam_e70_xult=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/same70b" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1728594169/startup_xc32.o: ../src/config/sam_e70_xult/startup_xc32.c  .generated_files/flags/sam_e70_xult/4d0eab1cdc4c13e88052521105bf51da0bb27cba .generated_files/flags/sam_e70_xult/aa17c397f86b784b2f888fc09182150a1882480e
	@${MKDIR} "${OBJECTDIR}/_ext/1728594169" 
	@${RM} ${OBJECTDIR}/_ext/1728594169/startup_xc32.o.d 
	@${RM} ${OBJECTDIR}/_ext/1728594169/startup_xc32.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/sam_e70_xult" -I"../src/config/sam_e70_xult/library" -I"../src/config/sam_e70_xult/library/tcpip/src" -I"../src/config/sam_e70_xult/library/tcpip/src/common" -I"../src/packs/ATSAME70Q21B_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1728594169/startup_xc32.o.d" -o ${OBJECTDIR}/_ext/1728594169/startup_xc32.o ../src/config/sam_e70_xult/startup_xc32.c    -DXPRJ_sam_e70_xult=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/same70b" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1728594169/libc_syscalls.o: ../src/config/sam_e70_xult/libc_syscalls.c  .generated_files/flags/sam_e70_xult/32721f00aa8c0528616f0191137965b6a689925 .generated_files/flags/sam_e70_xult/aa17c397f86b784b2f888fc09182150a1882480e
	@${MKDIR} "${OBJECTDIR}/_ext/1728594169" 
	@${RM} ${OBJECTDIR}/_ext/1728594169/libc_syscalls.o.d 
	@${RM} ${OBJECTDIR}/_ext/1728594169/libc_syscalls.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/sam_e70_xult" -I"../src/config/sam_e70_xult/library" -I"../src/config/sam_e70_xult/library/tcpip/src" -I"../src/config/sam_e70_xult/library/tcpip/src/common" -I"../src/packs/ATSAME70Q21B_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1728594169/libc_syscalls.o.d" -o ${OBJECTDIR}/_ext/1728594169/libc_syscalls.o ../src/config/sam_e70_xult/libc_syscalls.c    -DXPRJ_sam_e70_xult=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/same70b" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1360937237/app.o: ../src/app.c  .generated_files/flags/sam_e70_xult/ea247b324dc0a66215183c925329bfe0eda4091a .generated_files/flags/sam_e70_xult/aa17c397f86b784b2f888fc09182150a1882480e
	@${MKDIR} "${OBJECTDIR}/_ext/1360937237" 
	@${RM} ${OBJECTDIR}/_ext/1360937237/app.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/app.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/sam_e70_xult" -I"../src/config/sam_e70_xult/library" -I"../src/config/sam_e70_xult/library/tcpip/src" -I"../src/config/sam_e70_xult/library/tcpip/src/common" -I"../src/packs/ATSAME70Q21B_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1360937237/app.o.d" -o ${OBJECTDIR}/_ext/1360937237/app.o ../src/app.c    -DXPRJ_sam_e70_xult=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/same70b" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1360937237/main.o: ../src/main.c  .generated_files/flags/sam_e70_xult/21082d2325e65ed20e7e2569b30da7ea99f4010f .generated_files/flags/sam_e70_xult/aa17c397f86b784b2f888fc09182150a1882480e
	@${MKDIR} "${OBJECTDIR}/_ext/1360937237" 
	@${RM} ${OBJECTDIR}/_ext/1360937237/main.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/main.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/sam_e70_xult" -I"../src/config/sam_e70_xult/library" -I"../src/config/sam_e70_xult/library/tcpip/src" -I"../src/config/sam_e70_xult/library/tcpip/src/common" -I"../src/packs/ATSAME70Q21B_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1360937237/main.o.d" -o ${OBJECTDIR}/_ext/1360937237/main.o ../src/main.c    -DXPRJ_sam_e70_xult=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/same70b" ${PACK_COMMON_OPTIONS} 
	
endif

# ------------------------------------------------------------------------------------
# Rules for buildStep: compileCPP
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
else
endif

# ------------------------------------------------------------------------------------
# Rules for buildStep: link
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
${DISTDIR}/UDPST.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}: ${OBJECTFILES}  nbproject/Makefile-${CND_CONF}.mk    ../src/config/sam_e70_xult/ATSAME70Q21B.ld
	@${MKDIR} ${DISTDIR} 
	${MP_CC} $(MP_EXTRA_LD_PRE) -g   -mprocessor=$(MP_PROCESSOR_OPTION) -mno-device-startup-code -o ${DISTDIR}/UDPST.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX} ${OBJECTFILES_QUOTED_IF_SPACED}          -DXPRJ_sam_e70_xult=$(CND_CONF)    $(COMPARISON_BUILD)  -Wl,--defsym=__MPLAB_BUILD=1$(MP_EXTRA_LD_POST)$(MP_LINKER_FILE_OPTION),--defsym=__ICD2RAM=1,--defsym=__MPLAB_DEBUG=1,--defsym=__DEBUG=1,-D=__DEBUG_D,--defsym=_min_heap_size=44960,--gc-sections,-Map="${DISTDIR}/${PROJECTNAME}.${IMAGE_TYPE}.map",--memorysummary,${DISTDIR}/memoryfile.xml -mdfp="${DFP_DIR}/same70b"
	
else
${DISTDIR}/UDPST.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}: ${OBJECTFILES}  nbproject/Makefile-${CND_CONF}.mk   ../src/config/sam_e70_xult/ATSAME70Q21B.ld
	@${MKDIR} ${DISTDIR} 
	${MP_CC} $(MP_EXTRA_LD_PRE)  -mprocessor=$(MP_PROCESSOR_OPTION) -mno-device-startup-code -o ${DISTDIR}/UDPST.X.${IMAGE_TYPE}.${DEBUGGABLE_SUFFIX} ${OBJECTFILES_QUOTED_IF_SPACED}          -DXPRJ_sam_e70_xult=$(CND_CONF)    $(COMPARISON_BUILD)  -Wl,--defsym=__MPLAB_BUILD=1$(MP_EXTRA_LD_POST)$(MP_LINKER_FILE_OPTION),--defsym=_min_heap_size=44960,--gc-sections,-Map="${DISTDIR}/${PROJECTNAME}.${IMAGE_TYPE}.map",--memorysummary,${DISTDIR}/memoryfile.xml -mdfp="${DFP_DIR}/same70b"
	${MP_CC_DIR}\\xc32-bin2hex ${DISTDIR}/UDPST.X.${IMAGE_TYPE}.${DEBUGGABLE_SUFFIX} 
endif


# Subprojects
.build-subprojects:


# Subprojects
.clean-subprojects:

# Clean Targets
.clean-conf: ${CLEAN_SUBPROJECTS}
	${RM} -r ${OBJECTDIR}
	${RM} -r ${DISTDIR}

# Enable dependency checking
.dep.inc: .depcheck-impl

DEPFILES=$(shell mplabwildcard ${POSSIBLE_DEPFILES})
ifneq (${DEPFILES},)
include ${DEPFILES}
endif
