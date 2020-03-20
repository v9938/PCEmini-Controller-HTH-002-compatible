/********************************************************************
 PC Engine mini Controller for microchip PIC18F14K50
										 Code make @v9938
********************************************************************/

/********************************************************************
KEY mapping:
	RB0		UP
	RB1		DOWN
	RB2		LEFT
	RB3		RIGHT

	(RC port need pullup register 4.7K-47k)
	RC0		I
	RC1		II
	RC2		SEL
	RC3		RUN

/********************************************************************/


/********************************************************************
 Software License Agreement:

 The software supplied herewith by Microchip Technology Incorporated
 (the "Company") for its PIC(R) Microcontroller is intended and
 supplied to you, the Company's customer, for use solely and
 exclusively on Microchip PIC Microcontroller products. The
 software is owned by the Company and/or its supplier, and is
 protected under applicable copyright laws. All rights are reserved.
 Any use in violation of the foregoing restrictions may subject the
 user to criminal sanctions under applicable laws, as well as to
 civil liability for the breach of the terms and conditions of this
 license.

 THIS SOFTWARE IS PROVIDED IN AN "AS IS" CONDITION. NO WARRANTIES,
 WHETHER EXPRESS, IMPLIED OR STATUTORY, INCLUDING, BUT NOT LIMITED
 TO, IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A
 PARTICULAR PURPOSE APPLY TO THIS SOFTWARE. THE COMPANY SHALL NOT,
 IN ANY CIRCUMSTANCES, BE LIABLE FOR SPECIAL, INCIDENTAL OR
 CONSEQUENTIAL DAMAGES, FOR ANY REASON WHATSOEVER.
 *******************************************************************/

#ifndef USBJOYSTICK_C
#define USBJOYSTICK_C

/** INCLUDES *******************************************************/
#include "usb.h"
#include "usb_device_hid.h"
#include "system.h"
#include "stdint.h"
#include <xc.h>

#define _XTAL_FREQ 48000000 // delay function

#define _delay(x) _delay((unsigned long)((x)))
#define _delay_us(x) _delay((unsigned long)((x)*(_XTAL_FREQ/4000000UL)))
#define _delay_ms(x) _delay((unsigned long)((x)*(_XTAL_FREQ/4000UL)))



/** TYPE DEFINITIONS ************************************************/
typedef union _INTPUT_CONTROLS_TYPEDEF
{
    uint8_t val[8];
} INPUT_CONTROLS;

/** VARIABLES ******************************************************/
/* Some processors have a limited range of RAM addresses where the USB module
 * is able to access.  The following section is for those devices.  This section
 * assigns the buffers that need to be used by the USB module into those
 * specific areas.
 */
#if defined(FIXED_ADDRESS_MEMORY)
    #if defined(COMPILER_MPLAB_C18)
        #pragma udata JOYSTICK_DATA=JOYSTICK_DATA_ADDRESS
            INPUT_CONTROLS joystick_input;
        #pragma udata
    #elif defined(__XC8)
        INPUT_CONTROLS joystick_input @ JOYSTICK_DATA_ADDRESS;
    #endif
#else
    INPUT_CONTROLS joystick_input;
#endif


USB_VOLATILE USB_HANDLE lastTransmission = 0;
unsigned char FlagWait;
unsigned char inDataH_6B,inDataL_6B;


/*********************************************************************
* Function: void APP_DeviceJoystickInitialize(void);
*
* Overview: Initializes the demo code
*
* PreCondition: None
*
* Input: None
*
* Output: None
*
********************************************************************/
void APP_DeviceJoystickInitialize(void)
{  
    //initialize the variable holding the handle for the last
    // transmission
    lastTransmission = 0;
    FlagWait = 0;

    //enable the HID endpoint
    USBEnableEndpoint(JOYSTICK_EP,USB_IN_ENABLED|USB_HANDSHAKE_ENABLED|USB_DISALLOW_SETUP);
}//end UserInit


void input_pce_stick(){


}
/*********************************************************************
* Function: void APP_DeviceJoystickTasks(void);
*
* Overview: Keeps the demo running.
*
* PreCondition: The demo should have been initialized and started via
*   the APP_DeviceJoystickInitialize() and APP_DeviceJoystickStart() demos
*   respectively.
*
* Input: None
*
* Output: None
*
********************************************************************/
void APP_DeviceJoystickTasks(void)
{  
    // User Application USB tasks
    if((USBDeviceState < CONFIGURED_STATE)||(USBSuspendControl==1)) return;

    //If the last transmision is complete
    if(!HIDTxHandleBusy(lastTransmission))    {
		//Default Value
	    joystick_input.val[0] = 0x00;		// [I ] Button = bit2 / [II] Button = bit1
	    joystick_input.val[1] = 0x00;		// [run]Button = bit1 / [Sel]Button = bit0
	    joystick_input.val[2] = 0x0f;		// (CURSOR) clockwise 0x00-0x07
	    									// ex: UP=0x00 RIGHT=0x02 DOWN=0x04 LEFT=0x06 UP&RIGHT=0x02

	    joystick_input.val[3] = 0x80;		// [Not Use] Analog input 
	    joystick_input.val[4] = 0x80;		// [Not Use] Analog input 
	    joystick_input.val[5] = 0x80;		// [Not Use] Analog input 
	    joystick_input.val[6] = 0x80;		// [Not Use] Analog input 
	    joystick_input.val[7] = 0x00;		// [Not Use] 0x00

	    // Input check
		if (PORTBbits.RB7 == 0 ) joystick_input.val[2] = 0x00;		// UP
		if (PORTBbits.RB6 == 0 ) joystick_input.val[2] = 0x04;		// DOWN

		if (PORTBbits.RB5 == 0 ) {
			if (joystick_input.val[2] == 0x0f) joystick_input.val[2] = 0x06;		// LEFT
			if (joystick_input.val[2] == 0x00) joystick_input.val[2] = 0x07;		// UP   & LEFT
			if (joystick_input.val[2] == 0x04) joystick_input.val[2] = 0x05;		// DOWN & LEFT
		}

		if (PORTBbits.RB4 == 0 ) {
			if (joystick_input.val[2] == 0x0f) joystick_input.val[2] = 0x02;		// RIGHT
			if (joystick_input.val[2] == 0x00) joystick_input.val[2] = 0x01;		// UP   & RIGHT
			if (joystick_input.val[2] == 0x04) joystick_input.val[2] = 0x03;		// DOWN & RIGHT
		}

		

	    if (PORTCbits.RC0 == 0 ) joystick_input.val[0] |= 0x04;  	// [I]
	    if (PORTCbits.RC1 == 0 ) joystick_input.val[0] |= 0x02;  	// [II]
	    if (PORTCbits.RC2 == 0 ) joystick_input.val[1] |= 0x01;  	// [SEL]
	    if (PORTCbits.RC3 == 0 ) joystick_input.val[1] |= 0x02;  	// [RUN]
      
        // Bug support: USB framework... 
        // Incorrect data may be retransmitted after send ACK.
        _delay_us(100);
        //Send the packet over USB to the host.
        lastTransmission = HIDTxPacket(JOYSTICK_EP, (uint8_t*)&joystick_input, sizeof(joystick_input));

    }
    
}//end ProcessIO

#endif
