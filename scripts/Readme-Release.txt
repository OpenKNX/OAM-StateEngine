Open #   OpenKNX: OAM-StateEngine *BETA* v0.2 *BETA*
+----+   https://github.com/OpenKNX/OAM-StateEngine
# KNX    Cornelius Köpp (OpenKNX) 2023-09 -- 2025

Zustandsmodellierung für KNX mit Deterministischen Endlichen Automaten (DEA), konfigurierbar über ETS


+----+
# Installation

Dieses Release kann unter Windows 10/11 folgendermaßen installiert werden:
- falls noch nicht geschehen: Das gesamte zip in ein Verzeichnis entpacken
- das Verzeichnis, in das entpackt wurde, öffnen
- rechte Maustaste auf Build-knxprod.ps1
- "Mit PowerShell ausführen" wählen, ggf. die Sicherheitswarnung mit "Datei öffnen" bestätigen
    (jetzt wird eine zum Release passende Produktdatenbank *.knxprod gebaut)


RP2040
    - Hardware an den USB-Port stecken,
    - rechte Maustaste auf "Upload-Firmware-xxx.ps1"
    - "Mit PowerShell ausführen" wählen
        (jetzt wird die Firmware auf die Hardware geladen)
    - sobald die Firmware erfolgreich hochgeladen wurde, startet sich das Modul neu

Jetzt kann man die erzeugte knxprod in die ETS über den Katalog importieren und
danach wie gewohnt zuerst die Physikalische Adresse und nach der Parametrierung die Applikation programmieren.
Bitte noch die Applikationsbeschreibung beachten, dort stehen Hinweise zum update (ob man z.B. nur Firmware- oder nur ETS-Update braucht, normalerweise braucht man beides).
Fertig.


+----+
# Lizenzen

Die enthaltenen Projekte stehen unter freien Software-Lizenzen (Details siehe Repo):

knx (OpenKNX KNX-Stack)
* GPL-3.0
* https://github.com/OpenKNX/knx.git

OFM-ConfigTransfer
* AGPL-3.0
* https://github.com/OpenKNX/OFM-ConfigTransfer.git

OFM-DFA
* AGPL-3.0
* https://github.com/OpenKNX/OFM-DFA.git

OFM-FileTransferModule
* GPL-3.0
* https://github.com/OpenKNX/OFM-FileTransferModule.git

OFM-LogicModule
* GPL-3.0
* https://github.com/OpenKNX/OFM-LogicModule.git

OGM-Common
* GPL-3.0
* https://github.com/OpenKNX/OGM-Common.git

OGM-HardwareConfig
* GPL-3.0
* https://github.com/OpenKNX/OGM-HardwareConfig.git


Icons with "openknx" or "ofm-" or "ofa-" in filename were designed individually for this project.

Others were created as custom export from Pictogrammers Material Design Icons Collection:

> Pictogrammers Free License
> --------------------------
>
> Last Updated: February 1st, 2023
>
> This package is released as free, open-source, and GPL friendly by
> the [Pictogrammers](https://pictogrammers.com/). You may use it
> for commercial projects, open-source projects, or anything really.
>
> # Icons: Apache 2.0 (https://www.apache.org/licenses/LICENSE-2.0)
> Some of the icons are redistributed under the Apache 2.0 license. All other
> icons are either redistributed under their respective licenses or are
> distributed under the Apache 2.0 license.
