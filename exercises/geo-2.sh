#! /bin/bash

/usr/bin/curl -XGET $1':9200/chickenrices/_search?pretty' -H 'Content-Type: application/json' -d'
{
  "query": {
    "term": {
      "menu": "chicken"
    }
  }
}
'
