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
2. For a machine with DMX, install the latest [Cosmos Bridge Tools](https://www.armidalesoftware.com/Artemis/CosmosBridgeTools.htm#Download). (This should be done after step 1 since it updates the stock dmx.py.)
3. Download and install the [1.3.5-ish executable](https://drive.google.com/file/d/1GAlTMeZvlHjp9EZe0FIZL03RoQSqH3Cx/view?usp=drive_link)
4. Download and install the [Unofficial Patch v1.12](https://artemis.forumchitchat.com/post/show_single_post?pid=1344702595&postcount=1&forum=309501).  The "Unofficial Patch" does not affect the EXE, only other files.
5. From the data\missions directory within the Cosmos install, do `sbs update` then `sbs production -b v1.4.0_dev`.  The latter will reset the missions folder.  Since both modify some of the same files, it is important to do this one last.
6. Install the configuration files in the [Cosmos directory](https://github.com/dthaler/starship-seattle/tree/main/Cosmos) of this repository. (This has to be done after step 5 since the settings.yaml in this repository overwrites the stock LegendaryMissions one.)
