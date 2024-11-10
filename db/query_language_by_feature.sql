-- Fetch all languages that exhibit a certain feature
SELECT l.name as 'language',
       l.latitude, l.longitude,
       l.legend
FROM grammar_features gf
  	JOIN languages l ON gf.language_id = l.id       -- join with language
  	JOIN categories c ON gf.category_id = c.id      -- join #1 with category
  	LEFT JOIN categories cp ON cp.id = c.parent_id  -- join #2 with category parent
-- WHERE ...
WHERE gf.name == ?feature_name
AND gf.status == TRUE