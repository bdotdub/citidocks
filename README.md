Citidocks
=========

Information about all of the [Citibike](http://citibikenyc.com/) stations (bikes available, docks available).
There is data every 10 minutes from May 29th to the present.

Importing to postgresql
-----------------------

```shell
createdb citidocks
rake pg:create["dbname=citidocks host=localhost"]
rake pg:import["dbname=citidocks host=localhost"]
```
