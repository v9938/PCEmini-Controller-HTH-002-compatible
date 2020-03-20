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
ifeq "$(wildcard nbproject/Makefile-local-LPCUSBDK_18F14K50.mk)" "nbproject/Makefile-local-LPCUSBDK_18F14K50.mk"
include nbproject/Makefile-local-LPCUSBDK_18F14K50.mk
endif
endif

# Environment
MKDIR=gnumkdir -p
RM=rm -f 
MV=mv 
CP=cp 

# Macros
CND_CONF=LPCUSBDK_18F14K50
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
IMAGE_TYPE=debug
OUTPUT_SUFFIX=elf
DEBUGGABLE_SUFFIX=elf
FINAL_IMAGE=dist/${CND_CONF}/${IMAGE_TYPE}/MPLAB.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}
else
IMAGE_TYPE=production
OUTPUT_SUFFIX=hex
DEBUGGABLE_SUFFIX=elf
FINAL_IMAGE=dist/${CND_CONF}/${IMAGE_TYPE}/MPLAB.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}
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
SOURCEFILES_QUOTED_IF_SPACED=../src/system_config/low_pin_count_usb_development_kit/pic18f14k50/system.c ../src/main.c ../src/usb_descriptors.c ../src/app_device_joystick.c ../../../../../../framework/usb/src/usb_device.c ../../../../../../framework/usb/src/usb_device_hid.c ../../../../../../framework/usb/src/usb_hal_16bit.c

# Object Files Quoted if spaced
OBJECTFILES_QUOTED_IF_SPACED=${OBJECTDIR}/_ext/1056946842/system.p1 ${OBJECTDIR}/_ext/1360937237/main.p1 ${OBJECTDIR}/_ext/1360937237/usb_descriptors.p1 ${OBJECTDIR}/_ext/1360937237/app_device_joystick.p1 ${OBJECTDIR}/_ext/838585624/usb_device.p1 ${OBJECTDIR}/_ext/838585624/usb_device_hid.p1 ${OBJECTDIR}/_ext/838585624/usb_hal_16bit.p1
POSSIBLE_DEPFILES=${OBJECTDIR}/_ext/1056946842/system.p1.d ${OBJECTDIR}/_ext/1360937237/main.p1.d ${OBJECTDIR}/_ext/1360937237/usb_descriptors.p1.d ${OBJECTDIR}/_ext/1360937237/app_device_joystick.p1.d ${OBJECTDIR}/_ext/838585624/usb_device.p1.d ${OBJECTDIR}/_ext/838585624/usb_device_hid.p1.d ${OBJECTDIR}/_ext/838585624/usb_hal_16bit.p1.d

# Object Files
OBJECTFILES=${OBJECTDIR}/_ext/1056946842/system.p1 ${OBJECTDIR}/_ext/1360937237/main.p1 ${OBJECTDIR}/_ext/1360937237/usb_descriptors.p1 ${OBJECTDIR}/_ext/1360937237/app_device_joystick.p1 ${OBJECTDIR}/_ext/838585624/usb_device.p1 ${OBJECTDIR}/_ext/838585624/usb_device_hid.p1 ${OBJECTDIR}/_ext/838585624/usb_hal_16bit.p1

# Source Files
SOURCEFILES=../src/system_config/low_pin_count_usb_development_kit/pic18f14k50/system.c ../src/main.c ../src/usb_descriptors.c ../src/app_device_joystick.c ../../../../../../framework/usb/src/usb_device.c ../../../../../../framework/usb/src/usb_device_hid.c ../../../../../../framework/usb/src/usb_hal_16bit.c



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
	${MAKE}  -f nbproject/Makefile-LPCUSBDK_18F14K50.mk dist/${CND_CONF}/${IMAGE_TYPE}/MPLAB.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}

MP_PROCESSOR_OPTION=18F14K50
# ------------------------------------------------------------------------------------
# Rules for buildStep: compile
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
${OBJECTDIR}/_ext/1056946842/system.p1: ../src/system_config/low_pin_count_usb_development_kit/pic18f14k50/system.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1056946842" 
	@${RM} ${OBJECTDIR}/_ext/1056946842/system.p1.d 
	@${RM} ${OBJECTDIR}/_ext/1056946842/system.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1    -fno-short-double -fno-short-float -memi=wordwrite -maddrqual=require -xassembler-with-cpp -I"../src" -I"../../../../../../framework/usb/inc" -I"../../../../../../bsp/low_pin_count_usb_development_kit/pic18f14k50" -I"../src/system_config/low_pin_count_usb_development_kit/pic18f14k50" -mwarn=0 -Wa,-a -DXPRJ_LPCUSBDK_18F14K50=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,-file  -ginhx032 -Wl,--data-init -mno-keep-startup -mno-download -mdefault-config-bits -mc90lib $(COMPARISON_BUILD)  -std=c90 -gdwarf-3 -mstack=compiled:auto:auto:auto     -o ${OBJECTDIR}/_ext/1056946842/system.p1 ../src/system_config/low_pin_count_usb_development_kit/pic18f14k50/system.c 
	@-${MV} ${OBJECTDIR}/_ext/1056946842/system.d ${OBJECTDIR}/_ext/1056946842/system.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/_ext/1056946842/system.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/_ext/1360937237/main.p1: ../src/main.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1360937237" 
	@${RM} ${OBJECTDIR}/_ext/1360937237/main.p1.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/main.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1    -fno-short-double -fno-short-float -memi=wordwrite -maddrqual=require -xassembler-with-cpp -I"../src" -I"../../../../../../framework/usb/inc" -I"../../../../../../bsp/low_pin_count_usb_development_kit/pic18f14k50" -I"../src/system_config/low_pin_count_usb_development_kit/pic18f14k50" -mwarn=0 -Wa,-a -DXPRJ_LPCUSBDK_18F14K50=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,-file  -ginhx032 -Wl,--data-init -mno-keep-startup -mno-download -mdefault-config-bits -mc90lib $(COMPARISON_BUILD)  -std=c90 -gdwarf-3 -mstack=compiled:auto:auto:auto     -o ${OBJECTDIR}/_ext/1360937237/main.p1 ../src/main.c 
	@-${MV} ${OBJECTDIR}/_ext/1360937237/main.d ${OBJECTDIR}/_ext/1360937237/main.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/_ext/1360937237/main.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/_ext/1360937237/usb_descriptors.p1: ../src/usb_descriptors.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1360937237" 
	@${RM} ${OBJECTDIR}/_ext/1360937237/usb_descriptors.p1.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/usb_descriptors.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1    -fno-short-double -fno-short-float -memi=wordwrite -maddrqual=require -xassembler-with-cpp -I"../src" -I"../../../../../../framework/usb/inc" -I"../../../../../../bsp/low_pin_count_usb_development_kit/pic18f14k50" -I"../src/system_config/low_pin_count_usb_development_kit/pic18f14k50" -mwarn=0 -Wa,-a -DXPRJ_LPCUSBDK_18F14K50=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,-file  -ginhx032 -Wl,--data-init -mno-keep-startup -mno-download -mdefault-config-bits -mc90lib $(COMPARISON_BUILD)  -std=c90 -gdwarf-3 -mstack=compiled:auto:auto:auto     -o ${OBJECTDIR}/_ext/1360937237/usb_descriptors.p1 ../src/usb_descriptors.c 
	@-${MV} ${OBJECTDIR}/_ext/1360937237/usb_descriptors.d ${OBJECTDIR}/_ext/1360937237/usb_descriptors.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/_ext/1360937237/usb_descriptors.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/_ext/1360937237/app_device_joystick.p1: ../src/app_device_joystick.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1360937237" 
	@${RM} ${OBJECTDIR}/_ext/1360937237/app_device_joystick.p1.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/app_device_joystick.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1    -fno-short-double -fno-short-float -memi=wordwrite -maddrqual=require -xassembler-with-cpp -I"../src" -I"../../../../../../framework/usb/inc" -I"../../../../../../bsp/low_pin_count_usb_development_kit/pic18f14k50" -I"../src/system_config/low_pin_count_usb_development_kit/pic18f14k50" -mwarn=0 -Wa,-a -DXPRJ_LPCUSBDK_18F14K50=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,-file  -ginhx032 -Wl,--data-init -mno-keep-startup -mno-download -mdefault-config-bits -mc90lib $(COMPARISON_BUILD)  -std=c90 -gdwarf-3 -mstack=compiled:auto:auto:auto     -o ${OBJECTDIR}/_ext/1360937237/app_device_joystick.p1 ../src/app_device_joystick.c 
	@-${MV} ${OBJECTDIR}/_ext/1360937237/app_device_joystick.d ${OBJECTDIR}/_ext/1360937237/app_device_joystick.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/_ext/1360937237/app_device_joystick.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/_ext/838585624/usb_device.p1: ../../../../../../framework/usb/src/usb_device.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/838585624" 
	@${RM} ${OBJECTDIR}/_ext/838585624/usb_device.p1.d 
	@${RM} ${OBJECTDIR}/_ext/838585624/usb_device.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1    -fno-short-double -fno-short-float -memi=wordwrite -maddrqual=require -xassembler-with-cpp -I"../src" -I"../../../../../../framework/usb/inc" -I"../../../../../../bsp/low_pin_count_usb_development_kit/pic18f14k50" -I"../src/system_config/low_pin_count_usb_development_kit/pic18f14k50" -mwarn=0 -Wa,-a -DXPRJ_LPCUSBDK_18F14K50=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,-file  -ginhx032 -Wl,--data-init -mno-keep-startup -mno-download -mdefault-config-bits -mc90lib $(COMPARISON_BUILD)  -std=c90 -gdwarf-3 -mstack=compiled:auto:auto:auto     -o ${OBJECTDIR}/_ext/838585624/usb_device.p1 ../../../../../../framework/usb/src/usb_device.c 
	@-${MV} ${OBJECTDIR}/_ext/838585624/usb_device.d ${OBJECTDIR}/_ext/838585624/usb_device.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/_ext/838585624/usb_device.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/_ext/838585624/usb_device_hid.p1: ../../../../../../framework/usb/src/usb_device_hid.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/838585624" 
	@${RM} ${OBJECTDIR}/_ext/838585624/usb_device_hid.p1.d 
	@${RM} ${OBJECTDIR}/_ext/838585624/usb_device_hid.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1    -fno-short-double -fno-short-float -memi=wordwrite -maddrqual=require -xassembler-with-cpp -I"../src" -I"../../../../../../framework/usb/inc" -I"../../../../../../bsp/low_pin_count_usb_development_kit/pic18f14k50" -I"../src/system_config/low_pin_count_usb_development_kit/pic18f14k50" -mwarn=0 -Wa,-a -DXPRJ_LPCUSBDK_18F14K50=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,-file  -ginhx032 -Wl,--data-init -mno-keep-startup -mno-download -mdefault-config-bits -mc90lib $(COMPARISON_BUILD)  -std=c90 -gdwarf-3 -mstack=compiled:auto:auto:auto     -o ${OBJECTDIR}/_ext/838585624/usb_device_hid.p1 ../../../../../../framework/usb/src/usb_device_hid.c 
	@-${MV} ${OBJECTDIR}/_ext/838585624/usb_device_hid.d ${OBJECTDIR}/_ext/838585624/usb_device_hid.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/_ext/838585624/usb_device_hid.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/_ext/838585624/usb_hal_16bit.p1: ../../../../../../framework/usb/src/usb_hal_16bit.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/838585624" 
	@${RM} ${OBJECTDIR}/_ext/838585624/usb_hal_16bit.p1.d 
	@${RM} ${OBJECTDIR}/_ext/838585624/usb_hal_16bit.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1    -fno-short-double -fno-short-float -memi=wordwrite -maddrqual=require -xassembler-with-cpp -I"../src" -I"../../../../../../framework/usb/inc" -I"../../../../../../bsp/low_pin_count_usb_development_kit/pic18f14k50" -I"../src/system_config/low_pin_count_usb_development_kit/pic18f14k50" -mwarn=0 -Wa,-a -DXPRJ_LPCUSBDK_18F14K50=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,-file  -ginhx032 -Wl,--data-init -mno-keep-startup -mno-download -mdefault-config-bits -mc90lib $(COMPARISON_BUILD)  -std=c90 -gdwarf-3 -mstack=compiled:auto:auto:auto     -o ${OBJECTDIR}/_ext/838585624/usb_hal_16bit.p1 ../../../../../../framework/usb/src/usb_hal_16bit.c 
	@-${MV} ${OBJECTDIR}/_ext/838585624/usb_hal_16bit.d ${OBJECTDIR}/_ext/838585624/usb_hal_16bit.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/_ext/838585624/usb_hal_16bit.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
else
${OBJECTDIR}/_ext/1056946842/system.p1: ../src/system_config/low_pin_count_usb_development_kit/pic18f14k50/system.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1056946842" 
	@${RM} ${OBJECTDIR}/_ext/1056946842/system.p1.d 
	@${RM} ${OBJECTDIR}/_ext/1056946842/system.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c    -fno-short-double -fno-short-float -memi=wordwrite -maddrqual=require -xassembler-with-cpp -I"../src" -I"../../../../../../framework/usb/inc" -I"../../../../../../bsp/low_pin_count_usb_development_kit/pic18f14k50" -I"../src/system_config/low_pin_count_usb_development_kit/pic18f14k50" -mwarn=0 -Wa,-a -DXPRJ_LPCUSBDK_18F14K50=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,-file  -ginhx032 -Wl,--data-init -mno-keep-startup -mno-download -mdefault-config-bits -mc90lib $(COMPARISON_BUILD)  -std=c90 -gdwarf-3 -mstack=compiled:auto:auto:auto     -o ${OBJECTDIR}/_ext/1056946842/system.p1 ../src/system_config/low_pin_count_usb_development_kit/pic18f14k50/system.c 
	@-${MV} ${OBJECTDIR}/_ext/1056946842/system.d ${OBJECTDIR}/_ext/1056946842/system.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/_ext/1056946842/system.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/_ext/1360937237/main.p1: ../src/main.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1360937237" 
	@${RM} ${OBJECTDIR}/_ext/1360937237/main.p1.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/main.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c    -fno-short-double -fno-short-float -memi=wordwrite -maddrqual=require -xassembler-with-cpp -I"../src" -I"../../../../../../framework/usb/inc" -I"../../../../../../bsp/low_pin_count_usb_development_kit/pic18f14k50" -I"../src/system_config/low_pin_count_usb_development_kit/pic18f14k50" -mwarn=0 -Wa,-a -DXPRJ_LPCUSBDK_18F14K50=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,-file  -ginhx032 -Wl,--data-init -mno-keep-startup -mno-download -mdefault-config-bits -mc90lib $(COMPARISON_BUILD)  -std=c90 -gdwarf-3 -mstack=compiled:auto:auto:auto     -o ${OBJECTDIR}/_ext/1360937237/main.p1 ../src/main.c 
	@-${MV} ${OBJECTDIR}/_ext/1360937237/main.d ${OBJECTDIR}/_ext/1360937237/main.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/_ext/1360937237/main.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/_ext/1360937237/usb_descriptors.p1: ../src/usb_descriptors.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1360937237" 
	@${RM} ${OBJECTDIR}/_ext/1360937237/usb_descriptors.p1.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/usb_descriptors.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c    -fno-short-double -fno-short-float -memi=wordwrite -maddrqual=require -xassembler-with-cpp -I"../src" -I"../../../../../../framework/usb/inc" -I"../../../../../../bsp/low_pin_count_usb_development_kit/pic18f14k50" -I"../src/system_config/low_pin_count_usb_development_kit/pic18f14k50" -mwarn=0 -Wa,-a -DXPRJ_LPCUSBDK_18F14K50=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,-file  -ginhx032 -Wl,--data-init -mno-keep-startup -mno-download -mdefault-config-bits -mc90lib $(COMPARISON_BUILD)  -std=c90 -gdwarf-3 -mstack=compiled:auto:auto:auto     -o ${OBJECTDIR}/_ext/1360937237/usb_descriptors.p1 ../src/usb_descriptors.c 
	@-${MV} ${OBJECTDIR}/_ext/1360937237/usb_descriptors.d ${OBJECTDIR}/_ext/1360937237/usb_descriptors.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/_ext/1360937237/usb_descriptors.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/_ext/1360937237/app_device_joystick.p1: ../src/app_device_joystick.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1360937237" 
	@${RM} ${OBJECTDIR}/_ext/1360937237/app_device_joystick.p1.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/app_device_joystick.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c    -fno-short-double -fno-short-float -memi=wordwrite -maddrqual=require -xassembler-with-cpp -I"../src" -I"../../../../../../framework/usb/inc" -I"../../../../../../bsp/low_pin_count_usb_development_kit/pic18f14k50" -I"../src/system_config/low_pin_count_usb_development_kit/pic18f14k50" -mwarn=0 -Wa,-a -DXPRJ_LPCUSBDK_18F14K50=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,-file  -ginhx032 -Wl,--data-init -mno-keep-startup -mno-download -mdefault-config-bits -mc90lib $(COMPARISON_BUILD)  -std=c90 -gdwarf-3 -mstack=compiled:auto:auto:auto     -o ${OBJECTDIR}/_ext/1360937237/app_device_joystick.p1 ../src/app_device_joystick.c 
	@-${MV} ${OBJECTDIR}/_ext/1360937237/app_device_joystick.d ${OBJECTDIR}/_ext/1360937237/app_device_joystick.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/_ext/1360937237/app_device_joystick.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/_ext/838585624/usb_device.p1: ../../../../../../framework/usb/src/usb_device.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/838585624" 
	@${RM} ${OBJECTDIR}/_ext/838585624/usb_device.p1.d 
	@${RM} ${OBJECTDIR}/_ext/838585624/usb_device.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c    -fno-short-double -fno-short-float -memi=wordwrite -maddrqual=require -xassembler-with-cpp -I"../src" -I"../../../../../../framework/usb/inc" -I"../../../../../../bsp/low_pin_count_usb_development_kit/pic18f14k50" -I"../src/system_config/low_pin_count_usb_development_kit/pic18f14k50" -mwarn=0 -Wa,-a -DXPRJ_LPCUSBDK_18F14K50=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,-file  -ginhx032 -Wl,--data-init -mno-keep-startup -mno-download -mdefault-config-bits -mc90lib $(COMPARISON_BUILD)  -std=c90 -gdwarf-3 -mstack=compiled:auto:auto:auto     -o ${OBJECTDIR}/_ext/838585624/usb_device.p1 ../../../../../../framework/usb/src/usb_device.c 
	@-${MV} ${OBJECTDIR}/_ext/838585624/usb_device.d ${OBJECTDIR}/_ext/838585624/usb_device.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/_ext/838585624/usb_device.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/_ext/838585624/usb_device_hid.p1: ../../../../../../framework/usb/src/usb_device_hid.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/838585624" 
	@${RM} ${OBJECTDIR}/_ext/838585624/usb_device_hid.p1.d 
	@${RM} ${OBJECTDIR}/_ext/838585624/usb_device_hid.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c    -fno-short-double -fno-short-float -memi=wordwrite -maddrqual=require -xassembler-with-cpp -I"../src" -I"../../../../../../framework/usb/inc" -I"../../../../../../bsp/low_pin_count_usb_development_kit/pic18f14k50" -I"../src/system_config/low_pin_count_usb_development_kit/pic18f14k50" -mwarn=0 -Wa,-a -DXPRJ_LPCUSBDK_18F14K50=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,-file  -ginhx032 -Wl,--data-init -mno-keep-startup -mno-download -mdefault-config-bits -mc90lib $(COMPARISON_BUILD)  -std=c90 -gdwarf-3 -mstack=compiled:auto:auto:auto     -o ${OBJECTDIR}/_ext/838585624/usb_device_hid.p1 ../../../../../../framework/usb/src/usb_device_hid.c 
	@-${MV} ${OBJECTDIR}/_ext/838585624/usb_device_hid.d ${OBJECTDIR}/_ext/838585624/usb_device_hid.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/_ext/838585624/usb_device_hid.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/_ext/838585624/usb_hal_16bit.p1: ../../../../../../framework/usb/src/usb_hal_16bit.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/838585624" 
	@${RM} ${OBJECTDIR}/_ext/838585624/usb_hal_16bit.p1.d 
	@${RM} ${OBJECTDIR}/_ext/838585624/usb_hal_16bit.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c    -fno-short-double -fno-short-float -memi=wordwrite -maddrqual=require -xassembler-with-cpp -I"../src" -I"../../../../../../framework/usb/inc" -I"../../../../../../bsp/low_pin_count_usb_development_kit/pic18f14k50" -I"../src/system_config/low_pin_count_usb_development_kit/pic18f14k50" -mwarn=0 -Wa,-a -DXPRJ_LPCUSBDK_18F14K50=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,-file  -ginhx032 -Wl,--data-init -mno-keep-startup -mno-download -mdefault-config-bits -mc90lib $(COMPARISON_BUILD)  -std=c90 -gdwarf-3 -mstack=compiled:auto:auto:auto     -o ${OBJECTDIR}/_ext/838585624/usb_hal_16bit.p1 ../../../../../../framework/usb/src/usb_hal_16bit.c 
	@-${MV} ${OBJECTDIR}/_ext/838585624/usb_hal_16bit.d ${OBJECTDIR}/_ext/838585624/usb_hal_16bit.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/_ext/838585624/usb_hal_16bit.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
endif

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
# Rules for buildStep: link
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
dist/${CND_CONF}/${IMAGE_TYPE}/MPLAB.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}: ${OBJECTFILES}  nbproject/Makefile-${CND_CONF}.mk    
	@${MKDIR} dist/${CND_CONF}/${IMAGE_TYPE} 
	${MP_CC} $(MP_EXTRA_LD_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -Wl,-Map=dist/${CND_CONF}/${IMAGE_TYPE}/MPLAB.X.${IMAGE_TYPE}.map  -D__DEBUG=1  -DXPRJ_LPCUSBDK_18F14K50=$(CND_CONF)  -Wl,--defsym=__MPLAB_BUILD=1    -fno-short-double -fno-short-float -memi=wordwrite -maddrqual=require -xassembler-with-cpp -I"../src" -I"../../../../../../framework/usb/inc" -I"../../../../../../bsp/low_pin_count_usb_development_kit/pic18f14k50" -I"../src/system_config/low_pin_count_usb_development_kit/pic18f14k50" -mwarn=0 -Wa,-a -msummary=-psect,-class,+mem,-hex,-file  -ginhx032 -Wl,--data-init -mno-keep-startup -mno-download -mdefault-config-bits -mc90lib -std=c90 -gdwarf-3 -mstack=compiled:auto:auto:auto     -mrom=default,-3e00-3fff   $(COMPARISON_BUILD) -Wl,--memorysummary,dist/${CND_CONF}/${IMAGE_TYPE}/memoryfile.xml -o dist/${CND_CONF}/${IMAGE_TYPE}/MPLAB.X.${IMAGE_TYPE}.${DEBUGGABLE_SUFFIX}  ${OBJECTFILES_QUOTED_IF_SPACED}     
	@${RM} dist/${CND_CONF}/${IMAGE_TYPE}/MPLAB.X.${IMAGE_TYPE}.hex 
	
else
dist/${CND_CONF}/${IMAGE_TYPE}/MPLAB.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}: ${OBJECTFILES}  nbproject/Makefile-${CND_CONF}.mk   
	@${MKDIR} dist/${CND_CONF}/${IMAGE_TYPE} 
	${MP_CC} $(MP_EXTRA_LD_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -Wl,-Map=dist/${CND_CONF}/${IMAGE_TYPE}/MPLAB.X.${IMAGE_TYPE}.map  -DXPRJ_LPCUSBDK_18F14K50=$(CND_CONF)  -Wl,--defsym=__MPLAB_BUILD=1    -fno-short-double -fno-short-float -memi=wordwrite -maddrqual=require -xassembler-with-cpp -I"../src" -I"../../../../../../framework/usb/inc" -I"../../../../../../bsp/low_pin_count_usb_development_kit/pic18f14k50" -I"../src/system_config/low_pin_count_usb_development_kit/pic18f14k50" -mwarn=0 -Wa,-a -msummary=-psect,-class,+mem,-hex,-file  -ginhx032 -Wl,--data-init -mno-keep-startup -mno-download -mdefault-config-bits -mc90lib -std=c90 -gdwarf-3 -mstack=compiled:auto:auto:auto     $(COMPARISON_BUILD) -Wl,--memorysummary,dist/${CND_CONF}/${IMAGE_TYPE}/memoryfile.xml -o dist/${CND_CONF}/${IMAGE_TYPE}/MPLAB.X.${IMAGE_TYPE}.${DEBUGGABLE_SUFFIX}  ${OBJECTFILES_QUOTED_IF_SPACED}     
	
endif


# Subprojects
.build-subprojects:


# Subprojects
.clean-subprojects:

# Clean Targets
.clean-conf: ${CLEAN_SUBPROJECTS}
	${RM} -r build/LPCUSBDK_18F14K50
	${RM} -r dist/LPCUSBDK_18F14K50

# Enable dependency checking
.dep.inc: .depcheck-impl

DEPFILES=$(shell mplabwildcard ${POSSIBLE_DEPFILES})
ifneq (${DEPFILES},)
include ${DEPFILES}
endif
