-- Fetch all languages
SELECT l.name as 'language',
       l.latitude, l.longitude,
       l.legend
FROM languages l