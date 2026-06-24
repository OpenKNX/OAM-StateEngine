# OpenKNX State-Engine (OAM-StateEngine)

Abbildung von zustandsabhängigem Verhalten und universellen Logikfunktionen in KNX, konfigurierbar über die ETS.

Von Cornelius Köpp 2023 -- 2026

# Funktionen / OpenKNX-Module 

| Modul                                                                  | Dokumentation ETS-Applikation                                                                                                                       | Beschreibung                                                                                                                                                                                                            |
|------------------------------------------------------------------------|-----------------------------------------------------------------------------------------------------------------------------------------------------|-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|
| [OpenKNX](https://github.com/OpenKNX/OGM-Common)                       | [Applikationsbeschreibung OGM-Common](https://github.com/OpenKNX/OGM-Common/blob/v1/doc/Applikationsbeschreibung-Common.md#openknx)                 | Basis-Funktionen für OpenKNX-Geräte                                                                                                                                                                                     |
| [Konfigurationstansfer](https://github.com/OpenKNX/OFM-ConfigTransfer) | [Applikationsbeschreibung OFM-ConfigTransfer](https://github.com/OpenKNX/OFM-ConfigTransfer/blob/v1/doc/Applikationsbeschreibung-ConfigTransfer.md) | Hilfsmittel zur Konfiguration: Kopieren, Exportieren, Importieren von Beispielen                                                                                                                                        |
| 16&nbsp;[Zustandsautomaten](https://github.com/OpenKNX/OFM-DFA)        | [Applikationsbeschreibung OFM-DFA](https://github.com/OpenKNX/OFM-DFA/blob/v1/doc/DFA_Applikationsbeschreibung.md)                                  | Universelle Modellierung von zustansbehaftetem Verhalten auf Basis von Determenistischen Endlichen Automaten, mit mehreren Eingängen, Timeout und mehreren Ausgängen                                                    |
| 99&nbsp;[Logiken](https://github.com/OpenKNX/OFM-LogicModule)          | [Applikationsbeschreibung OFM-LogicModule](https://github.com/OpenKNX/OFM-LogicModule/blob/v1/doc/Applikationsbeschreibung-Logik.md)                | Nützlich zur Vorverarbeitung von Ereignissen, Konvertierung aus verschiedenste DPTs, sowie Nachverarbeitung und weitere Funktionen<br>Hinweis: Logik-Ausgänge können direkt für Eingänge der Automaten verwenden werden |
| [Dateitransfer](https://github.com/OpenKNX/OFM-FileTransferModule)     | (unsichtbar in ETS-Applikation)                                                                                                                     | Erlaubt Firmware-Upgrades über den KNX-Bus                                                                                                                                                                              |



# Hardware

Das Release enthält Firmware für nachfolgende RP2040-basierte (sowie experimentell auch ESP32) Geräte mit TP-Schnittstelle:

| Gerät                                                                                        | Kommentar                                                                                   |
|----------------------------------------------------------------------------------------------|---------------------------------------------------------------------------------------------|
| [OpenKNX REG1-Base](https://github.com/OpenKNX/OpenKNX/wiki/REG1-Base) (V1)                  | Empfohlen für Dauereinsatz. PROD-Test erfolgt auf dieser Basis.                             |
| [OpenKNX REG1-Base V0](https://github.com/OpenKNX/OpenKNX/wiki/REG1-Base-V0)                 | Abgelöst durch V1, bislang ohne Einschränkungen nutzbar. Wird nicht mehr explizit getestet. |
| [OpenKNX PiPico-BCU-Connector](https://github.com/OpenKNX/OpenKNX/wiki/PiPico-BCU-Connector) | DEV-Test.                                                                                   |
| OpenKNX REG2                                                                                 | ungetestet                                                                                  |
| OpenKNXiao RP2040                                                                            |                                                                                             |
| SmartMF 1TE REG                                                                              |                                                                                             |
| OpenKNXiao ESP32                                                                             | ungetestet                                                                                  |
