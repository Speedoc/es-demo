#! /bin/bash

/usr/bin/curl -X POST $1":9200/metrics/_search?pretty" -H 'Content-Type: application/json' -d'
{
    "suggest": {
        "metric-suggest" : {
            "prefix" : "ESS",
            "completion" : {
                "field" : "metric_sugg"
            }
        }
    }
}
'

/usr/bin/curl -X POST $1":9200/metrics/_search?pretty" -H 'Content-Type: application/json' -d'
{
    "suggest": {
        "metric-suggest" : {
            "prefix" : "ESS.p",
            "completion" : {
                "field" : "metric_sugg"
            }
        }
    }
}
'
