MATCH (u:User {name:"Marcio"})-[:FOLLOWS]->(f:User)-[l:LISTENED_TO]->(t:Track)
WHERE NOT (u)-[:LISTENED_TO]->(t)
RETURN t.name, COUNT(*) AS Popularidade
ORDER BY Popularidade DESC
LIMIT 5;
