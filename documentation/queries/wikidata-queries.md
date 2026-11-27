### Nb total de sociologues : 34398

`SELECT (COUNT(DISTINCT ?personne) AS ?total)
WHERE {
    ?personne wdt:P106 wd:Q2306091 .
}`


### Nb total de sociologues avec une date de naissance : 27716
`SELECT (COUNT(DISTINCT ?personne) AS ?total)
WHERE {
    ?personne wdt:P106 wd:Q2306091 .
    ?personne wdt:P569 ?dateNaissance .
}`


### Nb total de sociologues avec un lieu de naissance : 13880

`SELECT (COUNT(DISTINCT ?personne) AS ?total)
WHERE {
    ?personne wdt:P106 wd:Q2306091 .
    ?personne wdt:P19 ?lieuNaissance .
}`

### Nb total de sociologues avec au moins un employeur : 11723

`SELECT (COUNT(DISTINCT ?personne) AS ?total)
WHERE {
    ?personne wdt:P106 wd:Q2306091 .
    ?personne wdt:P108 ?employeur .
}`