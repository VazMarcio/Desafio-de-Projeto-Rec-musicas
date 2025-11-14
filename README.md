## 🎧 Sistema de Recomendação de Músicas com Grafos — Neo4j

![Capa projeto](Cover.png)

Projeto desenvolvido para explorar grafos como base para sistemas de recomendação musical. Utiliza o banco de dados orientado a grafos Neo4j Aura Free para conectar usuários, faixas, artistas e gêneros, permitindo gerar recomendações inteligentes com base em interações e preferências.

## 📌 Objetivos

- Modelar um grafo musical com usuários, faixas, artistas e gêneros
- Simular interações como escutas, curtidas e conexões sociais
- Criar consultas Cypher para gerar recomendações personalizadas
- Organizar o projeto em arquivos modulares para facilitar manutenção e escalabilidade
  
## 🧱 Estrutura do Grafo

 - `user`: Representa um usuário
 - `track`: Representa uma faixa musical
 - `artist`: Representa o artista que interpreta a música
 - `genre`: Representa o gênero musical
  
## 🔗 Relacionamentos

- `LISTENED_TO`: Usuário escutou uma música `(play_count)`
- `LIKES`: Usuário curte um artista
- `FOLLOWS`: Usuário segue outro usuário
- `PERFORMED_BY`: Música foi interpretada por um artista
- `HAS_GENRE`: Música pertence a um gênero musical
  
## 📁 Estrutura de Pastas

### Desafio de Projeto Recomendações Músicas

| Pasta | Arquivos |
|-------|----------|
|📊 Data   | 🤝 Samle_interaction.cy|
|       | 🎵 Sample_tracks.cy|
|       | 👤 Sample_users.cy |
|🔍 Queries |🎤 Recomend_by_artist.cy|
|         |👥Recomend_by_friends.cy|
|         |🎶Recomend_by_genre.cy|
|🗂️Schema |⚖️Constraints.cy|
|        |🧩reate_nodes.cy|
|        |🔗Create_relationships.cy|
|🛠️Utils  |🗑️Delete_all.cy|
|        |♻️Delete_database.cy|
|        | `{}`Arquivo.json|
|        | 🖼️Cover.png|
|        | 🖼️Grafos.png|
|        | 📚README.md|

## 🚀 Como usar

1. Acesse sua instância no [Neo4J Aura Free](https://neo4j.com/cloud/aura-free/)
   
2. Execute os arquivos `cypher` na seguinte ordem:
   
   -  `schema/constraints.cypher`
   -  `schema/create_nodes.cypher`
   -  `schema/create_relationships.cypher` 
   -  `data/sample_users.cypher`
   -  `data/sample_tracks.cypher`
   -  `data/sample_interactions.cypher`
  
3. Visualize o Grafo
   
`````cypher
   MATCH (n)-[r]->(m) RETURN n, r, m
`````
4. Execute as consultas de recomendação
  
    - Por artista: `queries/recommend_by_artist.cypher`
    - Por amigos: `queries/recommend_by_friends.cypher`
    - Por gênero: `queries/recommend_by_genre.cypher`
  
## 🧪 Exemplos de Consultas

````Cypher

// Recomendar faixas por artistas curtidos
MATCH (u:User {name:"Marcio"})-[:LIKES]->(a:Artist)<-[:PERFORMED_BY]-(t:Track)
RETURN DISTINCT t.name AS Recomendacao;

// Recomendar faixas escutadas por amigos
MATCH (u:User {name:"Marcio"})-[:FOLLOWS]->(f:User)-[l:LISTENED_TO]->(t:Track)
WHERE NOT (u)-[:LISTENED_TO]->(t)
RETURN t.name, COUNT(*) AS Popularidade
ORDER BY Popularidade DESC
LIMIT 5;

// Recomendar faixas por gênero escutado
MATCH (u:User {name:"Marcio"})-[:LISTENED_TO]->(:Track)-[:HAS_GENRE]->(g:Genre)<-[:HAS_GENRE]-(t:Track)
WHERE NOT (u)-[:LISTENED_TO]->(t)
RETURN DISTINCT t.name AS Sugestao;
```` 

## 🧠 Aprendizados

- Como modelar dados musicais em grafos
- Como usar Cypher para criar e consultar relacionamentos
- Como estruturar um projeto modular com arquivos `Cypher`
- Como gerar recomendações com base em conexões e preferências
  
## 📌 Autor

👤 Márcio Antonio Vaz

📧 githubmarcio@gmail.com
 



   




