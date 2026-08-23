# Changelog

> *Anmerkung:* Das Versions-Schema weicht vom Konzept der semantischen Versionierung ([SemVer](https://semver.org/)) ab!
> Dies ist aufgrund von technischen Limitationen der ETS erforderlich.


## v0.8.2: 2026-04-04 (Bedingter Start-Zustand + Input-/Rekonstruktions-Fixes) 

> Wichtige Update-Hinweise **nur für Nutzer der Version v0.1** Public Beta "StateEngineDFA16"
>
> Wie bereits für v0.5, v0.6 und v0.7.x:
>> 1. Die Geräteadresse (PA) muss erneut zugewiesen werden, da sich das interne Speicherformat im Stack verändert hat.
>> 2. KO-Nummern im Bereich 2 bis 19 haben sich verändert.
>>    Ggf. vorhandene interne Referenzen müssen manuell angepasst werde.
>>    Zur Übersicht siehe Tabelle [Änderung von zentralen Kommunikationsobjekten](#änderung-von-zentralen-kommunikationsobjekten) unten.

> Update Hinweis für Nutzer mit **OpenKNX REG1-Base und Version v0.6 und v0.7.x**
> 
> Die Unterscheidung in verschiedene Firmware-Versionen entfällt, 
> da die Zeit-Status-Anzeige nun per ETS konfiguriert werden kann.
> Beide Verhaltensweisen können jetzt über die einheitliche Firmware `OpenKNX-REG1-Base` dargestellt werden.
> Ausgehend von der alten Firmware wird folgendes Vorgehen zur Migration empfohlen:
> * `firmware-OpenKNX-REG1-Base___no-time-led` - hier ist *keine* gesonderte Konfiguration erforderlich
> * `firmware-OpenKNX-REG1-Base___time-led3` - Auswahl der Funktion **Zeitstatus** in der ETS-Applikation unter OpenKNX / Info LEDs / LED "Info {1,2,3}". 

* **Wichtig:** Update auf OpenKNXproducer 4.0.1 erforderlich
* Fix-Update OFM-**DFA** auf 0.8.0 (von 0.8.2; [Changes](https://github.com/OpenKNX/OFM-DFA/blob/v1/CHANGELOG.md))
  * Fixes Eingänge
    * Fix: *Bestehendes KO* nutzte falsche KO-Nummer
    * Fix: *Eingang Symbol T* funktionierte nicht (oder fehlerhaft) über KO
  * Fixes: Rekonstruktiosfunktion
    * Fix: Es hätte ein falscher Rest-Timeout rekonstuiert werden können, nach Shutdown fast zeitgleich zum Ende
    * Fix: Verhalten bei zuvor inaktiven Kanälen in Verbindung mit Pausieren 


## v0.8.0: 2026-03-12 (Bedingter Start-Zustand + OpenKNX Updates) 

> Wichtige Update-Hinweise **nur für Nutzer der Version v0.1** Public Beta "StateEngineDFA16"
>
> Wie bereits für v0.5, v0.6 und v0.7.x:
>> 1. Die Geräteadresse (PA) muss erneut zugewiesen werden, da sich das interne Speicherformat im Stack verändert hat.
>> 2. KO-Nummern im Bereich 2 bis 19 haben sich verändert.
>>    Ggf. vorhandene interne Referenzen müssen manuell angepasst werde.
>>    Zur Übersicht siehe Tabelle [Änderung von zentralen Kommunikationsobjekten](#änderung-von-zentralen-kommunikationsobjekten) unten.

> Update Hinweis für Nutzer mit **OpenKNX REG1-Base und Version v0.6 und v0.7.x**
> 
> Die Unterscheidung in verschiedene Firmware-Versionen entfällt, 
> da die Zeit-Status-Anzeige nun per ETS konfiguriert werden kann.
> Beide Verhaltensweisen können jetzt über die einheitliche Firmware `OpenKNX-REG1-Base` dargestellt werden.
> Ausgehend von der alten Firmware wird folgendes Vorgehen zur Migration empfohlen:
> * `firmware-OpenKNX-REG1-Base___no-time-led` - hier ist *keine* gesonderte Konfiguration erforderlich
> * `firmware-OpenKNX-REG1-Base___time-led3` - Auswahl der Funktion **Zeitstatus** in der ETS-Applikation unter OpenKNX / Info LEDs / LED "Info {1,2,3}". 

* **Wichtig:** Update auf OpenKNXproducer 4.0.1 erforderlich
* Update OFM-**DFA** auf 0.8 (von 0.7.1; [Changes](https://github.com/OpenKNX/OFM-DFA/blob/v1/CHANGELOG.md))
  * Neues Feature: Starten mit bedingtem Zustandsübergang (als Option)
  * Update: KO-Bezeichner (Name und Objektfunktion) entsprechend neuer einheitlicher Konventionen für OpenKNX-Module
* Update anderer OpenKNX-Module:
  * **knx** (Stack) auf 2.3.0
  * OGM-**Common** auf 1.7.2 (von 1.5.1; [Changes](https://github.com/OpenKNX/OGM-Common/blob/v1/CHANGELOG.md#172-2026-03-02))
    * Neues Feature: Status-LEDs-Konfiguration 
    * Hinweis: Synchronisation von Modul-Support bleibt deaktiviert, da keine hardwareabhängigkeit vorhanden
  * OFM-**ConfigTransfer** auf 0.5 (von 0.4; [Changelog](https://github.com/OpenKNX/OFM-ConfigTransfer/blob/v1/CHANGELOG.md#050-log-patches-2026-02-24))
  * OFM-**LogicModule** auf 4.0.1 (von 3.7.3; [Änderungshistorie](https://github.com/OpenKNX/OFM-LogicModule/blob/v1/doc/Applikationsbeschreibung-Logik.md#%C3%A4nderungshistorie))
    * Neues Feature: Steuerung von Status-LEDs
  * OFM-**FileTransfer**Module auf 0.1.5
  * OGM-HardwareConfig auf Stand 2026-02-23


## v0.7.1: 2025-11-09 (Bedingte Zustände + Updates + FAQs)

> Wichtige Update-Hinweise **für Nutzer der Version v0.1 Public Beta "StateEngineDFA16"**:
>
> Wie bereits für v0.5, v0.6 und v0.7:
>> 1. Die Geräteadresse (PA) muss erneut zugewiesen werden, da sich das interne Speicherformat im Stack verändert hat.
>> 2. KO-Nummern im Bereich 2 bis 19 haben sich verändert.
>>    Ggf. vorhandene interne Referenzen müssen manuell angepasst werde.
>>    Zur Übersicht siehe Tabelle [Änderung von zentralen Kommunikationsobjekten](#änderung-von-zentralen-kommunikationsobjekten) unten.

* Update OFM-**DFA** auf Fix-Version 0.7.1:
  * Fix: Kommando-Verarbeitung `history` und `*TEST*`
  * Refactor: Kommando-Vorverarbeitung


## v0.7.0: 2025-11-02 (Bedingte Zustände + OpenKNX Updates)

> Wichtige Update-Hinweise **für Nutzer der Version v0.1 Public Beta "StateEngineDFA16"**:
>
> Wie bereits für v0.5 und v0.6:
>> 1. Die Geräteadresse (PA) muss erneut zugewiesen werden, da sich das interne Speicherformat im Stack verändert hat.
>> 2. KO-Nummern im Bereich 2 bis 19 haben sich verändert.
>>    Ggf. vorhandene interne Referenzen müssen manuell angepasst werde.
>>    Zur Übersicht siehe Tabelle [Änderung von zentralen Kommunikationsobjekten](#änderung-von-zentralen-kommunikationsobjekten) unten.

* Update OFM-**DFA** auf 0.7 mit u.A.:
  * Feature (Umfangreiche Funktionserweiterung): **Bedingte Zustände**
  * Feature: Direktes Auslösen von Timeouts über KO
  * Diverse Detail-Verbesserungen in der ETS-App und Kommandos für Diagnose.
* Update anderer OpenKNX-Module:
  * **knx** auf 2.2.2
  * OGM-**Common** auf 1.5.1
    * Hinweis: Synchronisation von Modul-Support wurde deaktiviert, da keine hardwareabhängigkeit vorhanden
  * OFM-**LogicModule** auf 3.7.3
  * OFM-**FileTransfer**Module auf 0.1.4
  * OGM-HardwareConfig auf Stand 2025-10-24
* Update auf OpenKNXproducer 3.12.2 mit Anpassung Versionskonfiguration


## v0.6: 2025-09-18 (Fixes + Improvements)

> Wichtige Update-Hinweise **für Nutzer der Version v0.1 Public Beta "StateEngineDFA16"**:
> 
> Wie bereits für v0.5: 
>> 1. Die Geräteadresse (PA) muss erneut zugewiesen werden, da sich das interne Speicherformat im Stack verändert hat.
>> 2. KO-Nummern im Bereich 2 bis 19 haben sich verändert.
>>    Ggf. vorhandene interne Referenzen müssen manuell angepasst werde.
>>    Zur Übersicht siehe Tabelle [Änderung von zentralen Kommunikationsobjekten](#änderung-von-zentralen-kommunikationsobjekten) unten.

* Siehe auch Einträge zu v0.5 und v0.4 (diese wurden nicht öffentlich bereitgstellt)
* Anpassung der Firmware-Bezeichnung an Benennung in OGM-HardwareConfig
* Unterstützung von Status-Anzeige per LED3 für neue Zeitimplementierung für REG1-Base.<br />
  Die Firmware wird in zwei Varianten bereitstellt:
  * `firmware-OpenKNX-REG1-Base___time-led3` - mit dauerhaft blinkender LED bei bekannter Zeit
  * `firmware-OpenKNX-REG1-Base___no-time-led` - ohne LED für Zeit
* Update OpenKNX-Module zur Behebung verschiedener kleinerer Fehler
  * **knx** auf 2.2.1
  * OFM-**DFA** auf 0.6
  * OFM-**LogicModule** auf 3.7.2
* Verlängerte `OPENKNX_LOOPTIME_WARNING` zur Reduktion von Warn-Ausgaben auf der Konsole 


## v0.5: 2025-08-08 (Fix Outputs + OpenKNX Updates)

> **Wichtige Update-Hinweise<!-- für Nutzer der Version v0.1 Public Beta "StateEngineDFA16"-->:**
> 1. Die Geräteadresse (PA) muss erneut zugewiesen werden, da sich das interne Speicherformat im Stack verändert hat.
> 2. KO-Nummern im Bereich 2 bis 19 haben sich verändert.
> 
>    Ggf. vorhandene interne Referenzen müssen manuell angepasst werde.
> 
>    Zur Übersicht siehe Tabelle [Änderung von zentralen Kommunikationsobjekten](#änderung-von-zentralen-kommunikationsobjekten) unten.

* Fix für abweichendes Projekt-Encoding:
  Bisher wurden Sonderzeichen wie Umlaute fehlerhaft auf dem Bus ausgegeben, 
  falls das Projekt-Encoding in der ETS auf UTF-8 eingestellt wurde (wie von manchen Herstellern gefordert).
  Durch explizite Angabe des Encodings für die Applikation mit Nutzung des Producers v3.9 tritt dieses Problem nicht mehr auf. 
* Fixes für neue Zeitimplementierung / Update auf den neuen stabilen Stand 2025-08 (Ergänzend zu v0.4):
  * OGM-**Common** auf 1.4.3
  * OFM-**Logic**Module auf 3.7.1
  * OGM-**HardwareConfig** auf Stand 2025-08-01 (7dad5ab82a44ab893d6df64f79f39f9d0a76ece2)
* bereits mit v0.4, Details siehe nachfolgender Abschnitt:
  * Fixes für verschiedene Ausgangstypen in den Zustandsautotamen, siehe [Changelog OAM-StateEngine](https://github.com/OpenKNX/OFM-DFA/blob/v1/CHANGELOG.md)
  * Unterstützung weiterer Geräte
* Fix: Processor-Definition für mit v0.4 eingeführte ESP32-Geräte war fehlerhaft in contentx.xml

## v0.4: 2025-07-11 (kein öffentliches Release)

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

## 2025-03-01 First DFA16 Beta with new ApplicationNumber (16xDFA16 + 48xLOG): "StateEngineDFA16 v0.1"

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
