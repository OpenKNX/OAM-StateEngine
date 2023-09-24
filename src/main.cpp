// SPDX-License-Identifier: AGPL-3.0-only
// Copyright (C) 2023 Cornelius Koepp

#include "DfaModule.h"
#include "Logic.h"
#include "OpenKNX.h"

#ifdef ARDUINO_ARCH_RP2040
    #include "FileTransferModule.h"
#endif

void setup()
{
    const uint8_t firmwareRevision = 0;
    openknx.init(firmwareRevision);

    openknx.addModule(1, new Logic());
    openknx.addModule(2, new DfaModule());
#ifdef ARDUINO_ARCH_RP2040
    openknx.addModule(9, new FileTransferModule());
#endif

    openknx.setup();

#ifdef OPENKNX_DEBUG
    openknx.progLed.blinking();
#endif
}

void loop()
{
    openknx.loop();
}
