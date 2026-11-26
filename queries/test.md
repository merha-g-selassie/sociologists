# select 
SELECT ?personne ?lieu ?date
WHERE {
    ?personne wdt:P106 wd:Q2306091 .

    OPTIONAL {
        ?personne wdt:P19 ?lieu .
    }

    OPTIONAL {
        ?personne wdt:P569 ?date .
    }
}
# triplets
CONSTRUCT {
    ?personne wdt:P106 wd:Q2306091 .
    ?personne wdt:P19 ?lieu .
    ?personne wdt:P569 ?date .
}
WHERE {
    ?personne wdt:P106 wd:Q2306091 .

    OPTIONAL {
        ?personne wdt:P19 ?lieu .
    }

    OPTIONAL {
        ?personne wdt:P569 ?date .
    }
}