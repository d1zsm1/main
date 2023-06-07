-- Альбомы вышедшие в 2018 году

SELECT album_name, year_edition
FROM album
WHERE year_edition = 2018

-- Название и продолжительность самого длинного трека

SELECT song_name, duration
FROM song
ORDER BY duration DESC
LIMIT 1

-- Название треков, продолжительностью не менее 3,5 минут

SELECT song_name
FROM song
WHERE duration >= '00:03:30'

-- Название сборников вышедших в период с 2018 по 2020 год

SELECT collection_name
FROM collection
WHERE year_edition >= 2018 AND year_edition <= 2020

-- Исполнители чье имя состоит из 1 слова

SELECT performer_name
FROM performer
WHERE NOT performer_name LIKE '% %'

-- Названия треков, которые содержат слово "Мой"/"My"

SELECT song_name
FROM song
WHERE song_name LIKE '%Мой%' OR song_name LIKE '%My%'