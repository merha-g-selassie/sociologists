# Sociologists

### Projet

Le but est d'apprendre et expérimenter les technologies du web sémantique et différentes méthodes d'analyse de données.

- [x] Principes du web sémantique, LOD, RDF
- [x] SPARQL, Wikidata, DBPedia
- [x] Fonctionnement des triplestore
- [x] Installation de GraphDB en local pour tester l'extraction, l'importation et la visualitation de données RDF

### Question de recherche

Comment la population de sociologue a-t-elle évolué dans le temps, l'espce et les institutions ?

### Analyses envisagées

- Distribution des sociologues par décennie de naissance (P569)
- Répartition géographique des sociologues, évent. par génération (P19)
- Relation entre génération et pays de naissance
- Réseau sociologues et institutions (évent. date début/fin d'empmloi P580, P582) (P108)
- Clustering..

### Résultats des requêtes Wikidata

profession (`P106`)
sociologue (`Q2306091`).

| Population | Effectif |
|---|---:|
| Total des sociologues | 34'398 |
| Avec date de naissance (`P569`) | 27'716 |
| Avec lieu de naissance (`P19`) | 13'880 |
| Avec au moins un employeur (`P108`) | 11'723 |
| Avec les trois propriétés (`P569`, `P19`, `P108`) | 6'188 |

[Lien vers les requêtes](documentation/queries/wikidata-queries.md)

### Technologies

- SPARQL, WIKIDATA, RDF
- Triplestore
- Python
- Jupyter Notebook
- Pandas
- etc.

### Prochaines étapes

- [ ] Mise en place du triplestore
- [ ] Récupérer les données RDF depuis Wikidata et DBpedia si besoin.
- [ ] Importer et organiser les données dans un triplestore.
- [ ] Préparer l'environnement Python/Jupyter.
- [ ] Réaliser les distributions temporelles et spatiales.
- [ ] Expérimenter les analyses bivariées.
- [ ] Explorer l'analyse de réseau et le clustering.

**Livrable final** : un dépôt GitHub documentant la démarche, les technologies utilisées et les analyses exploratoires réalisées.

### Liens utiles

- https://allegrograph.cloud/signin
- https://yasgui.matdata.eu/
- https://query.wikidata.org/
- https://matgui.matdata.eu/
- https://lod4hss.org/guides/more-about-fair
- https://elites-suisses.lod4hss.org/
- https://yasgui.matdata.eu/
- https://github.com/Sciences-historiques-numeriques/astronomers/blob/main/documentation/wikidata/Wikidata-exploration.md
- https://historian.digital/courses/lod-and-data-analysis/
- https://historian.digital/tutorials/RDF_SPARQL/introduction-semantic-web-lod.html
