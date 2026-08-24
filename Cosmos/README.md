# Cosmos configuration files

Cosmos is configured as follows.

## preferences.json

You can use the stock Cosmos 1.3.0 file which will advertise the default server name of "Cosmos Server" to clients.
The name is stored in the "server-network-name" property.

preferences-harbinger.txt is the stock Cosmos 1.3.0 file with the following changes:

* server-network-name is "Harbinger Server"

preferences-intrepid.txt is the stock Cosmos 1.3.0 file with the following changes:

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
