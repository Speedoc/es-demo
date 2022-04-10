#! /bin/bash

/usr/bin/curl -XGET $1':9200/gonuts/_search?pretty' -H 'Content-Type: application/json' -d'
{
  "query": {
          "term": { "body": "golang" }
    }
}
'
