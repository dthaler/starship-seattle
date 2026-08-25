# Cosmos configuration files

Cosmos is configured as follows.

## preferences.json

You can use the stock Cosmos 1.3.0 file which will advertise the default server name of "Cosmos Server" to clients.
The name is stored in the "server-network-name" property.

Each preferences-*.txt file starts with the stock Cosmos 1.3.0 file and has the following changes:

* default_mission_folder is "LegendaryMissions".  This means when the server is started, it will auto-select
  Legendary Missions (which includes Siege) by default.  (This does not prevent other missions from being selected.)

In addition, preferences-harbinger.txt adds the following changes:

* server-network-name is "Harbinger Server"

and preferences-intrepid.txt adds has the following changes:

* server-network-name is "Intrepid Server"

To use either file, it should be copied to your Cosmos-1.3.0\data directory and renamed preferences.json.

## Engineering-Presets.txt

This has the following presets:

* 1: Balanced
* 2: Sensor priority
* 3: Warp priority
* 4: Front combat
* 5: Close combat
* 6: Rear combat
* 7: Tube priority
* 8: Shield priority
* 9: Emergency warp
* 0: Max Beams

Engineering-Presets.txt.backup also exists as a duplicate file just because it is used by the Reset script
in the Desktop directory.

## settings.yaml

Cosmos-1.3.0\data\missions\LegendaryMissions\settings.yaml contains settings specific to the Legendary Missions
(including Siege).  Some docs on the settings are in:

* https://artemis-sbs.github.io/LegendaryMissions/hosting/settings.yaml/
* https://github.com/artemis-sbs/LegendaryMissions/blob/main/mkdocs/docs/hosting/settings.yaml.md

The settings.yaml file starts with the stock Cosmos 1.3.0 file and has the following changes:

* Sets the GameMaster pin to 202526
* Sets player ship respawn to true
* Changes ship names to be Harbinger, Intrepid, and Artemis (in that order)
* Changes the first ship type to be Battle Cruiser, so all player ships are the same type
* Prevent changing the console mid-game
* Prevent changing the ship name or type

It also sets the following defaults, which may be overridden by profiles:

* Sets friendly ships to Lots
* Sets monsters to None (to avoid Typhons)
* Sets the default game time limit to 25 minutes
