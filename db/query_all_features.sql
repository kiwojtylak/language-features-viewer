-- Fetch all table
SELECT l.name as 'language',
       ifnull(cp.name, '')  || CASE WHEN cp.name IS NULL THEN '' ELSE '/' END || c.name as 'category', --from join #2 and join #1
       gf.name as 'feature',
       gf.status
FROM grammar_features gf
    JOIN languages l ON gf.language_id = l.id       -- join with language
    JOIN categories c ON gf.category_id = c.id      -- join #1 with category
    LEFT JOIN categories cp ON cp.id = c.parent_id  -- join #2 with category parent