#! /bin/bash

/usr/bin/curl -XGET $1':9200/properties_v1/_search?pretty' -H 'Content-Type: application/json' -d'
{
  "query": {
    "bool": {
      "must": [
        { "term": { "title": "condo" } },
        { "term": { "description": "condo" } },
        { "range": { "price.asking": {"lte": 100000} } }
      ]
    }
  }
}
'
