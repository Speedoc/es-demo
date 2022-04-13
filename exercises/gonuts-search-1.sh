#! /bin/bash

/usr/bin/curl -XGET 'https://es.leongkui.me/gonuts/_search?pretty' -H 'Content-Type: application/json' -d'
{
  "query": {
          "term": { "body": "golang" }
    }
}
'
