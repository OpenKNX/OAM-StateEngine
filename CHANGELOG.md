# Changes

> *Anmerkung:* Das Versions-Schema weicht vom Konzept der semantischen Versionierung (SemVer) ab!
> Dies ist aufgrund von technischen Limitationen der ETS erforderlich. 

## v0.4: 2025-07-11
> **Wichtige Update-Hinweise:** 
> 1. Die Geräteadresse (PA) muss erneut zugewiesen werden, da sich das interne Speicherformat im Stack verändert hat.
> 2. KO-Nummern im Bereich 2 bis 19 haben sich verändert. 
>    Ggf. vorhandene interne Referenzen müssen manuell angepasst werde. 
>    Zur Übersicht siehe Tabelle unten.

* Fixes/Update: OFM-DFA auf 0.5
  * Behebt Fehler bei Ausgängen mit DPT 8,9,13,14
  * Details siehe [Changelog](https://github.com/OpenKNX/OFM-DFA/blob/v1/CHANGELOG.md)
* Update OpenKNX(-Module) auf den neuen stabilen Stand 2025-07:
  * **knx**-Stack auf 2.2 
  * OGM-**Common** auf 1.4
  * OFM-**ConfigTransfer** auf 0.4
  * OFM-**Logic**Module auf 3.7
  * OFM-**FileTransferModule** auf 0.1.1
  * OGM-**HardwareConfig** auf Stand 2025-06-25 (6ef296df02c9fdf3d44c82101c9049a4adfc4e11)
* Fix #8: Wrong Memory-Layout (16MiB instead of 2MiB) was used for some devices.<br /> Affected Devices:
  * *OpenKNX REG2 PiPico V1*
  * *OpenKNXiao Mini V1*
* Hardware-Support:
  * Add Device *SmartMF 1TE REG*
* Dev-Environment
  * Build-Action to Check Full Project 
  * Add Tasks for Git-Updates
* Documentation
  * Extend Readme

### Änderung von zentralen Kommunikationsobjekten

| KO                           | alt | neu | Kommentar                                |
|------------------------------|-----|-----|------------------------------------------|
| In Betrieb                   | 1   | 1   | (unverändert)                            |
| Uhrzeit                      | 2 * | 2   | KO war bislang geteilt mit Uhrzeit/Datum |
| Datum                        | 3   | 3   | (unverändert)                            |
| Uhrzeit/Datum                | 2 * | 4   | Separiert von KO 2 Uhrzeit.              |
| Sommerzeit aktiv             | 10  | 5   |                                          |
| Speichern                    | 11  | 6   |                                          |
| Diagnose                     | 7   | 7   | (unverändert)                            |
| Urlaub                       | 4   | 15  |                                          |
| Welcher Feiertag ist heute?  | 5   | 16  |                                          |
| Welcher Feiertag ist morgen? | 6   | 17  |                                          |
<!--
| LED sperren                  | 8   | 18  | (nicht in State-Engine enthalten)        |
| Buzzer sperren               | 9   | 19  | (nicht in State-Engine enthalten)        |
-->

\*: Doppelbelegung der KO-Nummer. Einblendung war abhängig von Konfiguration. 

## 2025-03-01 First DFA16 Beta with new ApplicationNumber (16xDFA16 + 48xLOG)

* Use DFA reduced to 16 states to prevent frequent excessive programming time (was &gt;6 minutes for 32xDFA32 every 10th time) and reduce 
* Add Support for *OpenKNXiao Mini* Hardware


## 2025-02 Second Beta Release (32xDFA32 + 96xLOG)

* Update OFM-**DFA** to 0.3.0 (with improvements from first PROD beta-test)
* Update OFM-**Logic**Module to 3.5.2
* Update OFM-**ConfigTransfer** to v 0.2.0


## 2024-07-01 First Beta Release (Internal Release Only)

* Update OFM-**DFA** to 0.1.0
* Update OFM-**Logic**Module to 3.1.4
* Include OFM-**ConfigTransfer** for Universal Export/Import/Copy/Reset Configuration


## 2023-12-30 Second Alpha-Version (PROD-Test without Release)

Use reworked OFM-DFA *2023-12-30 Second Alpha-Version*. See [CHANGELOG](https://github.com/OpenKNX/OFM-DFA/blob/dev/CHANGELOG.md#2023-12-30-second-alpha-version-prod-test).


## 2023-10-09 First Alpha-Version (Internal Release Only)

Working Stable implementation for demonstration and first feedback from users
