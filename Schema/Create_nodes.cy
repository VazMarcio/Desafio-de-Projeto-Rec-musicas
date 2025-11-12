// Criação de nós principais para o projeto

CREATE (:User {name: "Marcio"}),
       (:User {name: "Ana"}),
       (:User {name: "Carlos"}),

       (:Artist {name: "Queen"}),
       (:Artist {name: "Adele"}),
       (:Artist {name: "Coldplay"}),

       (:Genre {name: "Rock"}),
       (:Genre {name: "Pop"}),
       (:Genre {name: "Indie"}),

       (:Track {name: "Bohemian Rhapsody", year: 1975, energy: 0.9}),
       (:Track {name: "Hello", year: 2015, energy: 0.4}),
       (:Track {name: "Viva La Vida", year: 2008, energy: 0.6});
