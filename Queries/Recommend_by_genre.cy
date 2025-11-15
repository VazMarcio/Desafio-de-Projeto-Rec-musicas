MATCH (u:User {name:"Marcio"})-[:LISTENED_TO]->(:Track)-[:HAS_GENRE]->(g:Genre)<-[:HAS_GENRE]-(t:Track)
WHERE NOT (u)-[:LISTENED_TO]->(t)
RETURN DISTINCT t.name AS Sugestao;
