PREFIX rdfs: <http://www.w3.org/2000/01/rdf-schema#>
PREFIX skos: <http://www.w3.org/2004/02/skos/core#>

INSERT {
  GRAPH <http://data.openbudgets.eu/resource/linkset/cl-geo-to-dbpedia> {
    ?source skos:closeMatch ?target .
  }
}
WHERE {
  GRAPH <http://data.openbudgets.eu/resource/codelist/cl-geo> {
    ?source skos:prefLabel ?label .
  }
  GRAPH <http://dbpedia.org> {
    ?target rdfs:label ?label .
  }
}
