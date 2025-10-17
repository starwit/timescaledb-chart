# Helm chart for TimescaleDB / PostgreSQL
This repository contains Helm charts that will install:
* PostgreSQL
* TimescaleDB

Every chart aims at deploying a single node instance. So features like load balancing or high availability are neither integrated nor are they intended in future releases.

These charts were created, to keep simple deployments for smaller projects open source. They are thus published using AGPLv3 and are intended to stay open source.

## PostgreSQL
This chart uses official [Postgres Docker image](https://hub.docker.com/_/postgres). Make sure to visit the [homepage](https://www.postgresql.org) of this fantastic open source software and learn how you can contribute.

See [readme](timescaledb/Readme.md) how to use Postgres chart.

## TimescaleDB
TimescaleDB is an extension for PostgreSQL, that makes working with time series data easy. It is an awesome project and please visit their [homepage](https://www.tigerdata.com/blog/tag/open-source) and see how you can contribute. Chart is using their [Docker image](https://hub.docker.com/r/timescale/timescaledb).

See [readme](timescaledb/Readme.md) how to use TimescaleDB chart. 

Please note, that [PostGIS](https://postgis.net) extension is also included in this chart.


## Contribution

As it has become difficult to find Helm charts for a number of crucial software packages, this chart shall serve as a free alternative for smaller projects. So please consider contributing! Code is released as open source, will stay open source and your contributions will also stay open source.

Bug reports, doc improvements and pull requests are very much welcome!

# License
Project is licensed under AGPL 3 and the license can be found [here](https://github.com/starwit/Urbalytix/blob/main/LICENSE). This component is part of a publicly funded project by the city of [Wolfsburg](https://www.wolfsburg.de/en-us/) and thus usage in your community is very much encouraged. It is part of a group of software modules that shall help communities to analyze urban space and to gain statistical insights.

