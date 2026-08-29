# Cosmos configuration files

Cosmos is configured as follows.

## hot_key_settings.txt

This is the keybind fixes from Quaris's [Unofficial Patch v1.12](https://artemis.forumchitchat.com/post/show_single_post?pid=1344702595&postcount=1&forum=309501).

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

## LegendaryMissions\settings.yaml

Cosmos-1.3.0\data\missions\LegendaryMissions\settings.yaml contains settings specific to the Legendary Missions
(including Siege).  Some docs on the settings are in:

* https://artemis-sbs.github.io/LegendaryMissions/hosting/settings.yaml/
* https://github.com/artemis-sbs/LegendaryMissions/blob/main/mkdocs/docs/hosting/settings.yaml.md

The settings.yaml file starts with the stock Cosmos 1.3.0 file and has the following changes:

* Set the ship names to Harbinger, Intrepid, and Artemis
* Set the Harbinger ship type to battle cruiser (same as the other ships) instead of light cruiser
* Prevent changing the console mid-game
* Sets the GameMaster pin to 202526
* Sets player ship respawn to true
* Prevent changing ship names and types

It also sets the following defaults, which can be changed in the server UI:

* Sets the default game time limit to 25 minutes

## LegendaryMissionsUnlocked\settings.yaml

Same as `LegendaryMissions\settings.yaml` except that changing ship names and types is NOT prevented.

## game_codes\LegendaryMissions.yaml

Cosmos-1.3.0\data\missions\common_data\game_codes\LegendaryMissions.yaml contains settings profiles for the Siege mission,
which can override the settings in settings.yaml.

It also sets the following settings, where the column is the profile:

|                   | Harbinger      | Harbinger-Intrepid | Harbinger-Intrepid-Artemis | Notes |
|-------------------|----------------|--------------------|----------------------------|-------|
|PLAYER_COUNT       | 1              | 2                  | 3                          | Set number of player ships |
|FRIENDLY_SELECT    | few            | some               | lots                       | Set friendlies |
