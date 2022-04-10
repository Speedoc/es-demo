#! /bin/bash

/usr/bin/curl -X PUT $1":9200/metrics" -H 'Content-Type: application/json' -d'
{
    "mappings": {
        "_doc" : {
            "properties" : {
                "metric_sugg" : {
                    "type" : "completion"
                },
                "metric" : {
                    "type": "keyword"
                }
            }
        }
    }
}
'

/usr/bin/curl -X POST $1":9200/metrics/_doc?refresh" -H 'Content-Type: application/json' -d'
{
    "metric_sugg" : "ESS.voltage",
    "metric" : "ESS.voltage"
}
'

/usr/bin/curl -X POST $1":9200/metrics/_doc?refresh" -H 'Content-Type: application/json' -d'
{
    "metric_sugg": "ESS.current",
    "metric": "ESS.current"
}
'

/usr/bin/curl -X POST $1":9200/metrics/_doc?refresh" -H 'Content-Type: application/json' -d'
{
    "metric_sugg": "ESS.power",
    "metric": "ESS.power"
}
'

/usr/bin/curl -X POST $1":9200/metrics/_doc?refresh" -H 'Content-Type: application/json' -d'
{
    "metric_sugg": "ESS.activepower",
    "metric": "ESS.activepower"
}
'
