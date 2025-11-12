// Garantir unicidade de nomes
// Criando as Constraints

CREATE CONSTRAINT user_name_unique IF NOT EXISTS ON (u:User) ASSERT u.name IS UNIQUE;
CREATE CONSTRAINT artist_name_unique IF NOT EXISTS ON (a:Artist) ASSERT a.name IS UNIQUE;
CREATE CONSTRAINT genre_name_unique IF NOT EXISTS ON (g:Genre) ASSERT g.name IS UNIQUE;
CREATE CONSTRAINT track_name_unique IF NOT EXISTS ON (t:Track) ASSERT t.name IS UNIQUE;


