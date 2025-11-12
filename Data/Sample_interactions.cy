MATCH (u:User {name:"Marcio"}), (t:Track {name:"Bohemian Rhapsody"})
MERGE (u)-[:LISTENED_TO {play_count: 20}]->(t);

MATCH (u:User {name:"Marcio"}), (a:Artist {name:"Queen"})
MERGE (u)-[:LIKES]->(a);

MATCH (u:User {name:"Ana"}), (t:Track {name:"Hello"})
MERGE (u)-[:LISTENED_TO {play_count: 10}]->(t);

MATCH (u:User {name:"Carlos"}), (t:Track {name:"Viva La Vida"})
MERGE (u)-[:LISTENED_TO {play_count: 15}]->(t);

MATCH (u1:User {name:"Marcio"}), (u2:User {name:"Ana"})
MERGE (u1)-[:FOLLOWS]->(u2);

MATCH (u1:User {name:"Marcio"}), (u2:User {name:"Carlos"})
MERGE (u1)-[:FOLLOWS]->(u2);
