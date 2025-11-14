
MATCH (u:User {name:"Marcio"})-[:LIKES]->(a:Artist)<-[:PERFORMED_BY]-(t:Track)
RETURN DISTINCT t.name AS Recomendacao;
