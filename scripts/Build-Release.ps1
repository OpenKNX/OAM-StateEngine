# This script is just a template and has to be copied and modified per project
# This script should be called from .vscode/tasks.json with
#
#   scripts/Build-Release.ps1            - for Beta builds
#   scripts/Build-Release.ps1 Release    - for Release builds
#
# {
#     "label": "Build-Release",
#     "type": "shell",
#     "command": "scripts/Build-Release.ps1 Release",
#     "args": [],
#     "problemMatcher": [],
#     "group": "test"
# },
# {
#     "label": "Build-Beta",
#     "type": "shell",
#     "command": "scripts/Build-Release.ps1 ",
#     "args": [],
#     "problemMatcher": [],
#     "group": "test"
# }

# set product names, allows mapping of (devel) name in Project to a more consistent name in release
# $settings = scripts/OpenKNX-Build-Settings.ps1

# execute generic pre-build steps
../OGM-Common/scripts/setup/reusable/Build-Release-Preprocess.ps1 $args[0]
if (!$?) { exit 1 }


# Note:
# * optional param 4 for script name
# * supported hardware from OpenKNXHardware.h

# build firmware for PiPico-BCU-Connector
lib/OGM-Common/scripts/setup/reusable/Build-Step.ps1 release_PiPico_BCU_Connector firmware-PiPico_BCU_Connector uf2
if (!$?) { exit 1 }

# build firmware for REG1_BASE_V0
lib/OGM-Common/scripts/setup/reusable/Build-Step.ps1 release_REG1_BASE_V0 firmware-REG1_BASE_V0 uf2
if (!$?) { exit 1 }

# build firmware for REG1_BASE_V1
lib/OGM-Common/scripts/setup/reusable/Build-Step.ps1 release_REG1_BASE_V1 firmware-REG1_BASE_V1 uf2
if (!$?) { exit 1 }

# build firmware for OKNXHW_REG2_PIPICO_V1
lib/OGM-Common/scripts/setup/reusable/Build-Step.ps1 release_REG2_PIPICO_V1 firmware-REG2_PIPICO_V1 uf2
if (!$?) { exit 1 }

# build firmware for OKNXHW_OPENKNXIAO_RP2040_MINI_V1
lib/OGM-Common/scripts/setup/reusable/Build-Step.ps1 release_XIAO_MINI_RP2040_V1 firmware-XIAO_MINI_RP2040_V1 uf2
if (!$?) { exit 1 }

# build firmware for DEVICE_SMARTMF_1TE_REG
lib/OGM-Common/scripts/setup/reusable/Build-Step.ps1 release_SMARTMF_1TE_REG firmware-SmartMF-1TE-REG uf2
if (!$?) { exit 1 }

# build firmware for UP1
# lib/OGM-Common/scripts/setup/reusable/Build-Step.ps1 release_UP1 firmware-UP1 uf2
# if (!$?) { exit 1 }


# build firmware based on generated headerfile for ESP32
# ../OGM-Common/scripts/setup/reusable/Build-Step.ps1 release_ESP32 firmware-ESP32 bin
# if (!$?) { exit 1 }

../OGM-Common/scripts/setup/reusable/Build-Step.ps1 release_XIAO_MINI_ESP32_V1 firmware-XIAO_MINI_ESP32_V1 bin
if (!$?) { exit 1 }


# Quick-Fix: Remove unwanted files from release folder:
Remove-Item -Path "release/data/*.bin" -Exclude "*ESP32*.bin", "*OpenKNX-REG1-Basismodul-IP*" -ErrorAction SilentlyContinue -Force
Remove-Item -Path "release/OTA-Upload-Firmware-*.ps1" -Exclude "*OpenKNX-REG1-Basismodul-IP*" -ErrorAction SilentlyContinue -Force
Remove-Item -Path "release/KNX-Upload-Firmware-OpenKNX-REG1-Basismodul-IP.ps1" -ErrorAction SilentlyContinue -Force
Remove-Item -Path "release/data/OTA-Upload-Firmware-Generic.ps1" -ErrorAction SilentlyContinue -Force
Remove-Item -Path "release/data/Upload-Firmware-Generic-SAMD.ps1" -ErrorAction SilentlyContinue -Force

# execute generic post-build steps
../OGM-Common/scripts/setup/reusable/Build-Release-Postprocess.ps1 $args[0]
if (!$?) { exit 1 }
