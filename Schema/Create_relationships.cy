Criando os Relacionamentos

MATCH (t:Track {name:"Bohemian Rhapsody"}), (a:Artist {name:"Queen"}), (g:Genre {name:"Rock"})
MERGE (t)-[:PERFORMED_BY]->(a)
MERGE (t)-[:HAS_GENRE]->(g);

MATCH (t:Track {name:"Hello"}), (a:Artist {name:"Adele"}), (g:Genre {name:"Pop"})
MERGE (t)-[:PERFORMED_BY]->(a)
MERGE (t)-[:HAS_GENRE]->(g);

MATCH (t:Track {name:"Viva La Vida"}), (a:Artist {name:"Coldplay"}), (g:Genre {name:"Indie"})
MERGE (t)-[:PERFORMED_BY]->(a)
MERGE (t)-[:HAS_GENRE]->(g);
