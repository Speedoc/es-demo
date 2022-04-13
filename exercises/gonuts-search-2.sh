#! /bin/bash

/usr/bin/curl -XGET 'https://es.leongkui.me/gonuts/_search?pretty' -H 'Content-Type: application/json' -d'
{
  "query": {
        "multi_match": {
          "query": "golang",
          "fields": ["subject", "body"]
        }
    }
}
'
