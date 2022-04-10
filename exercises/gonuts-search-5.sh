#! /bin/bash

/usr/bin/curl -XGET $1':9200/gonuts/_search?pretty' -H 'Content-Type: application/json' -d'
{
  "query": {
    "bool": {
      "must": [
        {
          "multi_match": {
            "query": "golang",
            "fields": [
              "subject^10",
              "body"
            ]
          }
        },
        {
          "match": {
            "from": {
              "query": "golang.org",
              "boost": 1000
            }
          }
        }
      ],
      "must_not": [
        {
          "range": {
            "bodylength": {
              "lte": 1000,
              "boost": 150
            }
          }
        }
      ],
      "should": [
        {
          "range": {
            "received": {
              "gte": "now-365d/d",
              "boost": 100
            }
          }
        }
      ]
    }
  }
}
'
