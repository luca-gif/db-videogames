--6- Selezionare categorie e classificazioni PEGI dei videogiochi che hanno ricevuto recensioni da 4 e 5 stelle, mostrandole una sola volta (3363)


--5- Selezionare i premi ricevuti da ogni software house per i videogiochi che ha prodotto (55)
SELECT *
FROM awards
JOIN award_videogame
ON awards.id = award_videogame.award_id
JOIN videogames
ON videogames.id = award_videogame.videogame_id;

--4- Selezionare i dati di tutte le software house che hanno rilasciato almeno un gioco dopo il 2020, mostrandoli una sola volta (6)
SELECT DISTINCT software_houses.*
FROM software_houses
JOIN videogames
ON software_house_id = videogames.software_house_id
WHERE YEAR(videogames.release_date) = 2020;

--3- Mostrare le categorie di ogni videogioco (1718)
SELECT categories.name
FROM categories
JOIN category_videogame
ON categories.id = category_videogame.category_id
JOIN videogames
ON videogames.id = category_videogame.videogame_id;

--2- Sezionare tutti i videogame dei tornei tenuti nel 2016, mostrandoli una sola volta (226)
SELECT DISTINCT videogames.name
FROM videogames 
JOIN tournament_videogame
ON videogames.id = tournament_videogame.videogame_id
JOIN tournaments 
ON tournaments.id = tournament_videogame.tournament_id
WHERE tournaments.YEAR = 2016;

--1- Selezionare i dati di tutti giocatori che hanno scritto almeno una recensione, mostrandoli una sola volta (996)
SELECT DISTINCT players.*
FROM players
JOIN reviews
ON reviews.player_id = player_id;