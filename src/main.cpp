// SPDX-License-Identifier: AGPL-3.0-only
// Copyright (C) 2023-2026 Cornelius Koepp

#include "Logic.h"
#include "DfaModule.h"
#include "FunctionBlocksModule.h"
#include "VirtualButtonModule.h"
#include "GpioBinaryInputModule.h"
#ifdef ARDUINO_ARCH_RP2040
    #include "FileTransferModule.h"
    // TODO check later inclusion of NetworkModule & UsbExchangeModule for KNX_IP_GENERIC
#endif
#include "OpenKNX.h"

#ifdef ARDUINO_ARCH_RP2040
    #pragma message "Pico Core Version: " ARDUINO_PICO_VERSION_STR
#endif

void setup()
{
    openknx.init(); // use firmware revision from XML

    openknx.addModule(1, openknxLogic);
    openknx.addModule(2, openknxDfaModule);
    openknx.addModule(3, openknxFunctionBlocksModule);
    openknx.addModule(4, openknxVirtualButtonModule);
#if defined(OPENKNX_BI_GPIO_PINS) && OPENKNX_BI_GPIO_COUNT > 0 && BI_ChannelCount > 0    
    openknx.addModule(5, openknxGpioBinaryInputModule);
#endif
#ifdef ARDUINO_ARCH_RP2040
    openknx.addModule(9, openknxFileTransferModule);
    // TODO check later inclusion of NetworkModule & UsbExchangeModule for KNX_IP_GENERIC
#endif

    openknx.setup();

#ifdef OPENKNX_DEBUG
    #ifdef OKNXHW_REG1_BASE_V1
        openknx.leds.getLed(OpenKNX::Led::LedType::LED_TYPE_INFO1)->pulsing();
    #else
        openknx.leds.getLed(OpenKNX::Led::LedType::LED_TYPE_PROG)->pulsing();
    #endif
#endif
}

void loop()
{
    openknx.loop();
}
