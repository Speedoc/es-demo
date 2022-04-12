#! /bin/bash

/usr/bin/curl -X PUT $1":9200/chickenrices" -H 'Content-Type: application/json' -d'
{
    "mappings": {
        "properties" : {
            "name": {
                "type": "text"
            },
            "menu": {
                "type": "text"
            },
            "location": {
                "type": "geo_point"
            }
        }
    }
}
'

/usr/bin/curl -X POST $1":9200/chickenrices/_doc?refresh" -H 'Content-Type: application/json' -d'
{
    "name": "Warung Chicken Rice",
    "menu": ["white chicken", "roast chicken"],
    "location": "1.326615949017512, 103.88502619992441"
}
'

/usr/bin/curl -X POST $1":9200/chickenrices/_doc?refresh" -H 'Content-Type: application/json' -d'
{
    "name": "Lao Wang Chicken Rice",
    "menu": ["white chicken", "roast pork", "roast chicken"],
    "location": "1.3312339103319197, 103.90004089161245"
}
'

/usr/bin/curl -X POST $1":9200/chickenrices/_doc?refresh" -H 'Content-Type: application/json' -d'
{
    "name": "Far East Chicken Rice",
    "menu": ["white chicken"],
    "location": "1.3261658490662802, 103.90128648643147"
}
'

/usr/bin/curl -X POST $1":9200/chickenrices/_doc?refresh" -H 'Content-Type: application/json' -d'
{
    "name": "Wan Li Xiang Chicken Rice",
    "menu": ["roast chicken", "roast pork"],
    "location": "1.3316093162614644, 103.89342119994663"
}
'

/usr/bin/curl -X POST $1":9200/chickenrices/_doc?refresh" -H 'Content-Type: application/json' -d'
{
    "name": "Kim Huat Hainanese Chicken Rice",
    "menu": ["white chicken", "BBQ pork"],
    "location": "1.3321885168686909, 103.89528801735652"
}
'
