-- Retrieval of references for the cleaned set of citing articles (wos_b_202304); item_id_citing is the WOS ID of the citing article and can be found in list_item_ids (not published here)
CREATE TABLE cn_refs AS
SELECT *
FROM wos_b_202304.refs
WHERE item_id_citing IN ('WOS:XXXXX');

-- OR, IF IMPORT OF CSV "item_ids.csv" IS POSSIBLE,
SELECT *
FROM wos_b_202304.refs
WHERE item_id_citing IN (SELECT item_id FROM CSVREAD('item_ids.csv')) 
