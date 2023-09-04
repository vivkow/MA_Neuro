-- Retrieve all authors of citing articles
CREATE TABLE cn_authors AS
SELECT *
FROM wos_b_202304.items_authors
WHERE item_id IN (SELECT item_id FROM CSVREAD('item_ids.csv')) 

-- Or, if CSV import is not possible:
CREATE TABLE cn_authors AS
SELECT *
FROM wos_b_202304.items_authors
WHERE item_id IN ('WOS:XXXXX');


-- Affiliations of authors of citing articles
CREATE TABLE cn_authors_affil AS
SELECT *
FROM wos_b_202304.authors_affiliations
WHERE item_id IN ('WOS:XXXXX');