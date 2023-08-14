-- LTS version from 26.06.2023: wos_b_202304; accessible until 30.06.2025. See https://partners.fiz-karlsruhe.de/wiki/pages/viewpage.action?pageId=129073723

-- Keyword Section
-- Table for %Computational neuroscience
CREATE TABLE cn1 AS
SELECT *
FROM wos_b_202304.items
WHERE EXISTS (
  SELECT *
  FROM unnest(wos_b_202304.items.keyword) n
  WHERE n LIKE 'computational neuroscience%'
);

-- Table for %Computational neurosciences
CREATE TABLE cn2 AS
SELECT *
FROM wos_b_202304.items
WHERE EXISTS (
  SELECT *
  FROM unnest(wos_b_202304.items.keyword) n
  WHERE n LIKE 'computational neurosciences%'
);

-- Titles
-- Table for %Computational neuroscience
CREATE TABLE cn1_titles AS
SELECT *
FROM wos_b_202304.items
WHERE item_title LIKE '%computational neuroscience%';

-- Table for %Computational neurosciences
CREATE TABLE cn2_titles AS
SELECT *
FROM wos_b_202304.items
WHERE item_title LIKE '%computational neurosciences%';

-- Abstracts
-- Table for %Computational neuroscience
CREATE TABLE cn1_abs AS
SELECT *
FROM wos_b_202304.items
WHERE item_id IN (
    SELECT item_id
    FROM wos_b_202304.abstracts
    WHERE abstract[1] LIKE '%computational neuroscience%'
);

-- Table for %Computational neurosciences
CREATE TABLE cn2_abs AS
SELECT *
FROM wos_b_202304.items
WHERE item_id IN (
    SELECT item_id
    FROM wos_b_202304.abstracts
    WHERE abstract[1] LIKE '%computational neurosciences%'
);


-- Abstracts for cn1
CREATE TABLE cn1_abstracts AS
SELECT *
FROM wos_b_202304.abstracts
WHERE item_id IN (
    SELECT item_id
    FROM cn1
);

-- Abstracts for cn2
CREATE TABLE cn2_abstracts AS
SELECT *
FROM wos_b_202304.abstracts
WHERE item_id IN (
    SELECT item_id
    FROM cn2
);

-- Abstracts for cn1_titles
CREATE TABLE cn1_titles_abstracts AS
SELECT *
FROM wos_b_202304.abstracts
WHERE item_id IN (
    SELECT item_id
    FROM cn1_titles
);

-- Abstracts for cn2_titles
CREATE TABLE cn2_titles_abstracts AS
SELECT *
FROM wos_b_202304.abstracts
WHERE item_id IN (
    SELECT item_id
    FROM cn2_titles
);

-- Abstracts for cn1_abs
CREATE TABLE cn1_abs_abstracts AS
SELECT *
FROM wos_b_202304.abstracts
WHERE item_id IN (
    SELECT item_id
    FROM cn1_abs
);

-- Abstracts for cn2_abs
CREATE TABLE cn2_abs_abstracts AS
SELECT *
FROM wos_b_202304.abstracts
WHERE item_id IN (
    SELECT item_id
    FROM cn2_abs
);