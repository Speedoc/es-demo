#! /bin/bash

/usr/bin/curl -XGET $1':9200/chickenrices/_search?pretty' -H 'Content-Type: application/json' -d'
{
  "query": {
    "bool": {
        "must": {
            "term": {
                "menu": "chicken"
            }
        },
        "filter": {
            "geo_distance": {
                "distance": "1km",
                "location": "1.3330251397276023, 103.90498688481946"
            }
        }
    }
  }
}
'
