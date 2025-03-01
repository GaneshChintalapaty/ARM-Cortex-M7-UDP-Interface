/*******************************************************************************
  USART0 PLIB

  Company:
    Microchip Technology Inc.

  File Name:
    plib_usart0.c

  Summary:
    USART0 PLIB Implementation File

  Description:
    None

*******************************************************************************/

/*******************************************************************************
* Copyright (C) 2018 Microchip Technology Inc. and its subsidiaries.
*
* Subject to your compliance with these terms, you may use Microchip software
* and any derivatives exclusively with Microchip products. It is your
* responsibility to comply with third party license terms applicable to your
* use of third party software (including open source software) that may
* accompany Microchip software.
*
* THIS SOFTWARE IS SUPPLIED BY MICROCHIP "AS IS". NO WARRANTIES, WHETHER
* EXPRESS, IMPLIED OR STATUTORY, APPLY TO THIS SOFTWARE, INCLUDING ANY IMPLIED
* WARRANTIES OF NON-INFRINGEMENT, MERCHANTABILITY, AND FITNESS FOR A
* PARTICULAR PURPOSE.
*
* IN NO EVENT WILL MICROCHIP BE LIABLE FOR ANY INDIRECT, SPECIAL, PUNITIVE,
* INCIDENTAL OR CONSEQUENTIAL LOSS, DAMAGE, COST OR EXPENSE OF ANY KIND
* WHATSOEVER RELATED TO THE SOFTWARE, HOWEVER CAUSED, EVEN IF MICROCHIP HAS
* BEEN ADVISED OF THE POSSIBILITY OR THE DAMAGES ARE FORESEEABLE. TO THE
* FULLEST EXTENT ALLOWED BY LAW, MICROCHIP'S TOTAL LIABILITY ON ALL CLAIMS IN
* ANY WAY RELATED TO THIS SOFTWARE WILL NOT EXCEED THE AMOUNT OF FEES, IF ANY,
* THAT YOU HAVE PAID DIRECTLY TO MICROCHIP FOR THIS SOFTWARE.
*******************************************************************************/

#include "device.h"
#include "plib_usart0.h"
#include "interrupts.h"

// *****************************************************************************
// *****************************************************************************
// Section: USART0 Implementation
// *****************************************************************************
// *****************************************************************************

static void USART0_ErrorClear( void )
{
    uint8_t dummyData = 0u;

   if (USART0_REGS->US_CSR & (US_CSR_USART_OVRE_Msk | US_CSR_USART_PARE_Msk | US_CSR_USART_FRAME_Msk))
   {
        /* Clear the error flags */
        USART0_REGS->US_CR = US_CR_USART_RSTSTA_Msk;

        /* Flush existing error bytes from the RX FIFO */
        while (USART0_REGS->US_CSR & US_CSR_USART_RXRDY_Msk)
        {
            dummyData = (USART0_REGS->US_RHR & US_RHR_RXCHR_Msk);
        }
   }

    /* Ignore the warning */
    (void)dummyData;
}


void USART0_Initialize( void )
{
    /* Reset USART0 */
    USART0_REGS->US_CR = (US_CR_USART_RSTRX_Msk | US_CR_USART_RSTTX_Msk | US_CR_USART_RSTSTA_Msk);

    /* Enable USART0 */
    USART0_REGS->US_CR = (US_CR_USART_TXEN_Msk | US_CR_USART_RXEN_Msk);

    /* Configure USART0 mode */
    USART0_REGS->US_MR = (US_MR_USART_USCLKS_MCK | US_MR_USART_CHRL_8_BIT | US_MR_USART_PAR_NO | US_MR_USART_NBSTOP_1_BIT | (0 << US_MR_USART_OVER_Pos));

    /* Configure USART0 Baud Rate */
    USART0_REGS->US_BRGR = US_BRGR_CD(976);
}

USART_ERROR USART0_ErrorGet( void )
{
    USART_ERROR errors = USART_ERROR_NONE;

    uint32_t status = USART0_REGS->US_CSR;

    errors = (USART_ERROR)(status & (US_CSR_USART_OVRE_Msk | US_CSR_USART_PARE_Msk | US_CSR_USART_FRAME_Msk));

    if(errors != USART_ERROR_NONE)
    {
        USART0_ErrorClear();
    }

    /* All errors are cleared, but send the previous error state */
    return errors;
}

bool USART0_SerialSetup( USART_SERIAL_SETUP *setup, uint32_t srcClkFreq )
{
    uint32_t baud = setup->baudRate;
    uint32_t brgVal = 0;
    uint32_t overSampVal = 0;
    uint32_t usartMode;
    bool status = false;

    if (setup != NULL)
    {
        baud = setup->baudRate;
        if(srcClkFreq == 0)
        {
            srcClkFreq = USART0_FrequencyGet();
        }

        /* Calculate BRG value */
        if (srcClkFreq >= (16 * baud))
        {
            brgVal = (srcClkFreq / (16 * baud));
        }
        else if (srcClkFreq >= (8 * baud))
        {
            brgVal = (srcClkFreq / (8 * baud));
            overSampVal = US_MR_USART_OVER(1);
        }
        else
        {
            return false;
        }

        if (brgVal > 65535)
        {
            /* The requested baud is so low that the ratio of srcClkFreq to baud exceeds the 16-bit register value of CD register */
            return false;
        }

        /* Configure USART0 mode */
        usartMode = USART0_REGS->US_MR;
        usartMode &= ~(US_MR_USART_CHRL_Msk | US_MR_USART_MODE9_Msk | US_MR_USART_PAR_Msk | US_MR_USART_NBSTOP_Msk | US_MR_USART_OVER_Msk);
        USART0_REGS->US_MR = usartMode | ((uint32_t)setup->dataWidth | (uint32_t)setup->parity | (uint32_t)setup->stopBits | (uint32_t)overSampVal);

        /* Configure USART0 Baud Rate */
        USART0_REGS->US_BRGR = US_BRGR_CD(brgVal);
        status = true;
    }

    return status;
}

bool USART0_Read( void *buffer, const size_t size )
{
    bool status = false;
    uint32_t errorStatus = 0;
    size_t processedSize = 0;
    uint8_t* pBuffer = (uint8_t *)buffer;

    if(pBuffer != NULL)
    {
        /* Clear errors that may have got generated when there was no active read request pending */
        USART0_ErrorClear();

        while( size > processedSize )
        {
            while (!(USART0_REGS->US_CSR & US_CSR_USART_RXRDY_Msk));

            /* Read error status */
            errorStatus = (USART0_REGS->US_CSR & (US_CSR_USART_OVRE_Msk | US_CSR_USART_FRAME_Msk | US_CSR_USART_PARE_Msk));

            if(errorStatus != 0)
            {
                break;
            }

            if (USART0_REGS->US_MR & US_MR_USART_MODE9_Msk)
            {
                *((uint16_t*)pBuffer) = (USART0_REGS->US_RHR & US_RHR_RXCHR_Msk);
                pBuffer += 2;
            }
            else
            {
                *pBuffer++ = (USART0_REGS->US_RHR & US_RHR_RXCHR_Msk);
            }

            processedSize++;
        }

        if(size == processedSize)
        {
            status = true;
        }
    }

    return status;
}

bool USART0_Write( void *buffer, const size_t size )
{
    bool status = false;
    size_t processedSize = 0;
    uint8_t* pBuffer = (uint8_t *)buffer;

    if(NULL != pBuffer)
    {
        while( size > processedSize )
        {
            while (!(USART0_REGS->US_CSR & US_CSR_USART_TXRDY_Msk));

            if (USART0_REGS->US_MR & US_MR_USART_MODE9_Msk)
            {
                USART0_REGS->US_THR = ((uint16_t*)pBuffer)[processedSize++] & US_THR_TXCHR_Msk;
            }
            else
            {
                USART0_REGS->US_THR = pBuffer[processedSize++] & US_THR_TXCHR_Msk;
            }
        }

        status = true;
    }

    return status;
}

int USART0_ReadByte( void )
{
    return(USART0_REGS->US_RHR & US_RHR_RXCHR_Msk);
}

void USART0_WriteByte( int data )
{
    while (!(USART0_REGS->US_CSR & US_CSR_USART_TXRDY_Msk));

    USART0_REGS->US_THR = (US_THR_TXCHR(data) & US_THR_TXCHR_Msk);
}

bool USART0_TransmitterIsReady( void )
{
    if(USART0_REGS->US_CSR & US_CSR_USART_TXRDY_Msk)
    {
        return true;
    }

    return false;
}

bool USART0_TransmitComplete( void )
{
    if(USART0_REGS->US_CSR & US_CSR_USART_TXEMPTY_Msk)
    {
        return true;
    }

    return false;
}

bool USART0_ReceiverIsReady( void )
{
    if(USART0_REGS->US_CSR & US_CSR_USART_RXRDY_Msk)
    {
        return true;
    }

    return false;
}


