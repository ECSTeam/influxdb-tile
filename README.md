# InfluxDB Tile for Pivotal Cloud Foundry

Stand up an Open Source [InfluxDB](http://www.influxdata.com) server with a Firehose
Nozzle to send metrics to it.

# Deploying

Deploy as you would any other Pivotal Cloud Foundry tile. See the description of
each configuration option for more info about it.

Note that for Firehose Client ID and Firehose Client Secret, if the UAA client does
not exist when "Apply Changes" is pressed, the client will be created. If it does
exist and the client secret is wrong, the nozzle will fail to start, and the install
will fail.

# Supported PCF Versions

* 1.8+
* 1.9+ 
