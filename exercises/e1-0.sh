#! /bin/bash

/usr/bin/curl -XPOST $1':9200/properties_v1/_doc/1' -H 'Content-Type: application/json' -d'
{
  "title": "Big Big House on the hill",
  "description": "very ugly big house on the hill, everything artificial!",
  "floorplan": {
    "bedroom": 10,
    "bathroom": 1,
    "floor": 5,
    "size": 1458,
    "unit": "sf"
  },
  "amnenity": {
    "swimmingpool": true,
    "roof": true,
    "balcony": true
  },
  "price": {
    "min": 12000000,
    "asking": 1500000
  },
  "address": {
    "postcode": 111123,
    "street": "Magic street",
    "full": "888 Magic street, Far Far Away Land, 111123"
  },
  "district": "Magical",
  "category": "landed",
  "timestamp": "2018-09-30 01:34:56"
}
'

/usr/bin/curl -XGET $1':9200/properties_v1/_doc/1'
