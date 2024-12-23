// SPDX-License-Identifier: AGPL-3.0-only
// Copyright (C) 2023-2025 Cornelius Koepp

#include "Logic.h"
#include "DfaModule.h"
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
    const uint8_t firmwareRevision = 0;
    openknx.init(firmwareRevision);

    openknx.addModule(1, openknxLogic);
    openknx.addModule(2, openknxDfaModule);
#ifdef ARDUINO_ARCH_RP2040
    openknx.addModule(9, openknxFileTransferModule);
    // TODO check later inclusion of NetworkModule & UsbExchangeModule for KNX_IP_GENERIC
#endif

    openknx.setup();

#ifdef OPENKNX_DEBUG
    #ifdef OKNXHW_REG1_BASE_V1
        openknx.info1Led.pulsing();
    #else
        openknx.progLed.pulsing();
    #endif
#endif
}

void loop()
{
    openknx.loop();
}
