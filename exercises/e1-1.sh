#! /bin/bash

/usr/bin/curl -XPOST $1':9200/properties_v1/_doc' -H 'Content-Type: application/json' -d'
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

/usr/bin/curl -XPOST $1':9200/properties_v1/_doc' -H 'Content-Type: application/json' -d'
{
  "title": "Small Small House By the lake",
  "description": "very beautiful house by the lake, everything natural!",
  "floorplan": {
    "bedroom": 1,
    "bathroom": 0,
    "floor": 1,
    "size": 58,
    "unit": "sf"
  },
  "amnenity": {
    "swimmingpool": false,
    "roof": false,
    "balcony": false
  },
  "price": {
    "min": 120000000,
    "asking": 15000000
  },
  "address": {
    "postcode": 890098,
    "street": "Quiet street",
    "full": "0 Quiet street, Far Far Away Land, 890098"
  },
  "district": "Peaceful",
  "category": "landed",
  "timestamp": "2018-10-01 16:34:56"
}
'

/usr/bin/curl -XPOST $1':9200/properties_v1/_doc' -H 'Content-Type: application/json' -d'
{
  "title": "Massive condo unit with view to the whole world!",
  "description": "Huge condo at very top floor for sale, come with everything preinstalled, including maids!",
  "level": 108,
  "unit": "1",
  "floorplan": {
    "bedroom": 20,
    "bathroom": 22,
    "size": 365800,
    "unit": "sf"
  },
  "amnenity": {
    "swimmingpool": true,
    "roof": true,
    "balcony": true
  },
  "price": {
    "min": 120000000,
    "asking": 150000000
  },
  "address": {
    "postcode": 987654,
    "street": "Rich street",
    "full": "101 Rich street, Far Far Away Land, 987654"
  },
  "district": "Skyland",
  "category": "small condo",
  "timestamp": "2018-10-01 02:34:56"
}
'

/usr/bin/curl -XPOST $1':9200/properties_v1/_doc' -H 'Content-Type: application/json' -d'
{
  "title": "Shoebox condo",
  "description": "Cheap shoebox condo for sale, nothing included!",
  "level": 18,
  "unit": "1345",
  "floorplan": {
    "bedroom": 1,
    "bathroom": 0,
    "size": 40,
    "unit": "sf"
  },
  "amnenity": {
    "swimmingpool": false,
    "roof": false,
    "balcony": false
  },
  "price": {
    "min": 12000,
    "asking": 15000
  },
  "address": {
    "postcode": 987654,
    "street": "Rich street",
    "full": "101 Rich street, Far Far Away Land, 987654"
  },
  "district": "Skyland",
  "category": "small condo",
  "timestamp": "2018-10-02 12:34:56"
}
'

/usr/bin/curl -XPOST $1':9200/properties_v1/_doc' -H 'Content-Type: application/json' -d'
{
  "title": "Shoebox condo",
  "description": "Cheap shoebox condo for sale, nothing included!",
  "level": 18,
  "unit": "1345",
  "floorplan": {
    "bedroom": 1,
    "bathroom": 0,
    "size": 40,
    "unit": "sf"
  },
  "amnenity": {
    "swimmingpool": false,
    "roof": false,
    "balcony": false
  },
  "price": {
    "min": 12000,
    "asking": 15000
  },
  "address": {
    "postcode": 987654,
    "street": "Rich street",
    "full": "101 Rich street, Far Far Away Land, 987654"
  },
  "district": "Skyland",
  "category": "small condo",
  "timestamp": "2018-10-02 12:34:56"
}
'

/usr/bin/curl -XPOST $1':9200/properties_v1/_doc' -H 'Content-Type: application/json' -d'
{
  "title": "Shoebox condo",
  "description": "Cheap shoebox condo for sale, nothing included!",
  "level": 18,
  "unit": "1346",
  "floorplan": {
    "bedroom": 1,
    "bathroom": 0,
    "size": 40,
    "unit": "sf"
  },
  "amnenity": {
    "swimmingpool": false,
    "roof": false,
    "balcony": false
  },
  "price": {
    "min": 12000,
    "asking": 15000
  },
  "address": {
    "postcode": 987654,
    "street": "Rich street",
    "full": "101 Rich street, Far Far Away Land, 987654"
  },
  "district": "Skyland",
  "category": "small condo",
  "timestamp": "2018-10-02 12:34:56"
}
'


/usr/bin/curl -XPOST $1':9200/properties_v1/_doc' -H 'Content-Type: application/json' -d'
{
  "title": "Shoebox condo",
  "description": "Cheap shoebox condo for sale, nothing included!",
  "level": 18,
  "unit": "1347",
  "floorplan": {
    "bedroom": 1,
    "bathroom": 0,
    "size": 40,
    "unit": "sf"
  },
  "amnenity": {
    "swimmingpool": false,
    "roof": false,
    "balcony": false
  },
  "price": {
    "min": 12000,
    "asking": 15000
  },
  "address": {
    "postcode": 987654,
    "street": "Rich street",
    "full": "101 Rich street, Far Far Away Land, 987654"
  },
  "district": "Skyland",
  "category": "small condo",
  "timestamp": "2018-10-02 12:34:56"
}
'

/usr/bin/curl -XPOST $1':9200/properties_v1/_doc' -H 'Content-Type: application/json' -d'
{
  "title": "Shoebox",
  "description": "Cheap shoebox condo for sale, nothing included!",
  "level": 18,
  "unit": "1348",
  "floorplan": {
    "bedroom": 1,
    "bathroom": 0,
    "size": 40,
    "unit": "sf"
  },
  "amnenity": {
    "swimmingpool": false,
    "roof": false,
    "balcony": false
  },
  "price": {
    "min": 12000,
    "asking": 15000
  },
  "address": {
    "postcode": 987654,
    "street": "Rich street",
    "full": "101 Rich street, Far Far Away Land, 987654"
  },
  "district": "Skyland",
  "category": "small condo",
  "timestamp": "2018-10-02 12:34:56"
}
'
