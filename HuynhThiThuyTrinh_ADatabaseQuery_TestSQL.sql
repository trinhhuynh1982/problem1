/*
-- Query: SELECT t.id, t.friendly_name,t.scientific_name, u.name as owners_name, like_count.likes
FROM dbtest.tree t
JOIN dbtest.user u on t.owner_id = u.id
JOIN (
    SELECT tree_id, COUNT(*) as likes
    FROM dbtest.likes
    GROUP BY tree_id
) as like_count  on like_count.tree_id = t.id
WHERE u.email = 'adam@versett.com'
LIMIT 0, 1000

-- Date: 2021-08-31 22:17
*/
INSERT INTO `` (`id`,`friendly_name`,`scientific_name`,`owners_name`,`likes`) VALUES (1,'Oak','Quercus','Adam',2);
INSERT INTO `` (`id`,`friendly_name`,`scientific_name`,`owners_name`,`likes`) VALUES (2,'English Yew','Taxus baccata','Adam',1);
