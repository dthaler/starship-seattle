# Starship Seattle
Artemis Cosmos Spaceship Bridge Simulator configuration files

This repository is organized as follows:

* [StreamDeck directory](https://github.com/dthaler/starship-seattle/tree/main/StreamDeck): relevant only if you have a StreamDeck for Engineering
* [JoyToKey directory](https://github.com/dthaler/starship-seattle/tree/main/JoyToKey): contains JoyToKey configuration files
* [Cosmos directory](https://github.com/dthaler/starship-seattle/tree/main/Cosmos): contains actual Cosmos configuration files
* [ThalerDmx directory](https://github.com/dthaler/starship-seattle/tree/main/ThalerDmx): contains DMX configuration specific to Dave Thaler's DMX equipment
* [RedButton directory](https://github.com/dthaler/starship-seattle/tree/main/RedButton): contains files to support the Big Red Button for Red Alert
* [Desktop directory](https://github.com/dthaler/starship-seattle/tree/main/Desktop): contains other files useful to have on the desktop

The correct order to install Cosmos files is:

1. Download Cosmos-1.3.0-Installer.exe from itch.io and install it
2. Download and install the [1.3.5-ish executable](https://drive.google.com/file/d/1GAlTMeZvlHjp9EZe0FIZL03RoQSqH3Cx/view?usp=drive_link)
3. For a machine with DMX, install the latest [Cosmos Bridge Tools](https://www.armidalesoftware.com/Artemis/CosmosBridgeTools.htm#Download). (This should be done after step 1 since it updates the stock dmx.py.)
4. Install the configuration files in the [Cosmos directory](https://github.com/dthaler/starship-seattle/tree/main/Cosmos) of this repository. From your Cosmos install directory, run `xcopy /E /I /Y "<path-to-starship-seattle>\Cosmos\*" .`
5. From your Cosmos install directory, do `ssupdate` (or, if your ship is intrepid `ssupdate intrepid`).

Only steps 1-2 are needed on clients.  All steps are needed on the server.

FYI, the last command above will do the following:

* From the `data\missions` directory within the Cosmos install, do `sbs update` then `sbs production -b v1.4.0_dev`.  The latter will reset the missions folder.
* Copy the `data\missions\LegendaryMissions` folder to a new `data\missions\LegendaryMissionsUnlocked` folder.
* Install the Starship Seattle configuration files. (This has to be done last since some configuration files in this repository overwrite the stock ones.)

In addition on clients, you can lock or unlock the client to a specific ship and console combination:

```
Usage: sslock.bat <shipname> [console]

  shipname: a lower case ship name
  console: optional; a lower case console name

Valid ship names:
  artemis
  harbinger
  intrepid

Valid console names:
  cinematic
  comms
  engineering
  helm
  mainscreen
  science
  weapons

Example: sslock.bat artemis helm
```
