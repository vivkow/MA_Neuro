%%% Exploration of untracked keywords used synonymously for Computational Neuroscience
%
%Proposed keywords:

%Biological neural networks
%Brain models
%Computational neuroscience
%Computational neurosciences
%Computational Psychiatry
%Connectionism 
%Hodgkin-Huxley Model
%Neurodynamics
%Neuroinformatics
%Population coding
%Spike-timing-dependent plasticity

CREATE TABLE bionn AS
SELECT *
FROM wos_b_202210.items
WHERE EXISTS (
  SELECT *
  FROM unnest(wos_b_202210.items.keyword) n
  WHERE n LIKE 'biological neural networks%'
);

CREATE TABLE brainm AS
SELECT *
FROM wos_b_202210.items
WHERE EXISTS (
  SELECT *
  FROM unnest(wos_b_202210.items.keyword) n
  WHERE n LIKE 'brain models%'
);

CREATE TABLE compn AS
SELECT *
FROM wos_b_202210.items
WHERE EXISTS (
  SELECT *
  FROM unnest(wos_b_202210.items.keyword) n
  WHERE n LIKE 'computational neuroscience%'
);

CREATE TABLE compns AS
SELECT *
FROM wos_b_202210.items
WHERE EXISTS (
  SELECT *
  FROM unnest(wos_b_202210.items.keyword) n
  WHERE n LIKE 'computational neurosciences%'
);

CREATE TABLE compp AS
SELECT *
FROM wos_b_202210.items
WHERE EXISTS (
  SELECT *
  FROM unnest(wos_b_202210.items.keyword) n
  WHERE n LIKE 'computational psychiatry%'
);

CREATE TABLE conne AS
SELECT *
FROM wos_b_202210.items
WHERE EXISTS (
  SELECT *
  FROM unnest(wos_b_202210.items.keyword) n
  WHERE n LIKE 'connectionism%'
);

CREATE TABLE hhm AS
SELECT *
FROM wos_b_202210.items
WHERE EXISTS (
  SELECT *
  FROM unnest(wos_b_202210.items.keyword) n
  WHERE n LIKE 'hodgkin-huxley model%'
);

CREATE TABLE ndyn AS
SELECT *
FROM wos_b_202210.items
WHERE EXISTS (
  SELECT *
  FROM unnest(wos_b_202210.items.keyword) n
  WHERE n LIKE 'neurodynamics%'
);

CREATE TABLE ninfo AS
SELECT *
FROM wos_b_202210.items
WHERE EXISTS (
  SELECT *
  FROM unnest(wos_b_202210.items.keyword) n
  WHERE n LIKE 'neuroinformatics%'
);

CREATE TABLE popc AS
SELECT *
FROM wos_b_202210.items
WHERE EXISTS (
  SELECT *
  FROM unnest(wos_b_202210.items.keyword) n
  WHERE n LIKE 'population coding%'
);

CREATE TABLE stdp AS
SELECT *
FROM wos_b_202210.items
WHERE EXISTS (
  SELECT *
  FROM unnest(wos_b_202210.items.keyword) n
  WHERE n LIKE 'spike-timing-dependent plasticity%'
);






% Titles
-- Table for %Biological neural networks
CREATE TABLE bionn_titles AS
SELECT *
FROM wos_b_202210.items
WHERE item_title LIKE '%biological neural networks%';

-- Table for %Brain models
CREATE TABLE brainm_titles AS
SELECT *
FROM wos_b_202210.items
WHERE item_title LIKE '%brain models%';

-- Table for %Computational neuroscience
CREATE TABLE compn_titles AS
SELECT *
FROM wos_b_202210.items
WHERE item_title LIKE '%computational neuroscience%';

-- Table for %Computational neurosciences
CREATE TABLE compns_titles AS
SELECT *
FROM wos_b_202210.items
WHERE item_title LIKE '%computational neurosciences%';

-- Table for %Computational Psychiatry
CREATE TABLE compp_titles AS
SELECT *
FROM wos_b_202210.items
WHERE item_title LIKE '%computational psychiatry%';

-- Table for %Connectionism
CREATE TABLE conne_titles AS
SELECT *
FROM wos_b_202210.items
WHERE item_title LIKE '%connectionism%';

-- Table for %Hodgkin-Huxley Model
CREATE TABLE hhm_titles AS
SELECT *
FROM wos_b_202210.items
WHERE item_title LIKE '%hodgkin-huxley model%';

-- Table for %Neurodynamics
CREATE TABLE ndyn_titles AS
SELECT *
FROM wos_b_202210.items
WHERE item_title LIKE '%neurodynamics%';

-- Table for %Neuroinformatics
CREATE TABLE ninfo_titles AS
SELECT *
FROM wos_b_202210.items
WHERE item_title LIKE '%neuroinformatics%';

-- Table for %Population coding
CREATE TABLE popc_titles AS
SELECT *
FROM wos_b_202210.items
WHERE item_title LIKE '%population coding%';

-- Table for %Spike-timing-dependent plasticity
CREATE TABLE stdp_titles AS
SELECT *
FROM wos_b_202210.items
WHERE item_title LIKE '%spike-timing-dependent plasticity%';






% Abstracts --> note: not the abstracts themselves are retrieved in this step, but the items that have an abstract containing the keywords!

-- Table for %Biological neural networks
CREATE TABLE bionn_abs AS
SELECT *
FROM wos_b_202210.items
WHERE item_id IN (
    SELECT item_id
    FROM wos_b_202210.abstracts
    WHERE abstract[1] LIKE '%biological neural networks%'
);

-- Table for %Brain models
CREATE TABLE brainm_abs AS
SELECT *
FROM wos_b_202210.items
WHERE item_id IN (
    SELECT item_id
    FROM wos_b_202210.abstracts
    WHERE abstract[1] LIKE '%brain models%'
);

-- Table for %Computational neuroscience
CREATE TABLE compn_abs AS
SELECT *
FROM wos_b_202210.items
WHERE item_id IN (
    SELECT item_id
    FROM wos_b_202210.abstracts
    WHERE abstract[1] LIKE '%computational neuroscience%'
);

-- Table for %Computational neurosciences
CREATE TABLE compns_abs AS
SELECT *
FROM wos_b_202210.items
WHERE item_id IN (
    SELECT item_id
    FROM wos_b_202210.abstracts
    WHERE abstract[1] LIKE '%computational neurosciences%'
);

-- Table for %Computational Psychiatry
CREATE TABLE compp_abs AS
SELECT *
FROM wos_b_202210.items
WHERE item_id IN (
    SELECT item_id
    FROM wos_b_202210.abstracts
    WHERE abstract[1] LIKE '%computational psychiatry%'
);

-- Table for %Connectionism
CREATE TABLE conne_abs AS
SELECT *
FROM wos_b_202210.items
WHERE item_id IN (
    SELECT item_id
    FROM wos_b_202210.abstracts
    WHERE abstract[1] LIKE '%connectionism%'
);

-- Table for %Hodgkin-Huxley Model
CREATE TABLE hhm_abs AS
SELECT *
FROM wos_b_202210.items
WHERE item_id IN (
    SELECT item_id
    FROM wos_b_202210.abstracts
    WHERE abstract[1] LIKE '%hodgkin-huxley model%'
);

-- Table for %Neurodynamics
CREATE TABLE ndyn_abs AS
SELECT *
FROM wos_b_202210.items
WHERE item_id IN (
    SELECT item_id
    FROM wos_b_202210.abstracts
    WHERE abstract[1] LIKE '%neurodynamics%'
);

-- Table for %Neuroinformatics
CREATE TABLE ninfo_abs AS
SELECT *
FROM wos_b_202210.items
WHERE item_id IN (
    SELECT item_id
    FROM wos_b_202210.abstracts
    WHERE abstract[1] LIKE '%neuroinformatics%'
);

-- Table for %Population coding
CREATE TABLE popc_abs AS
SELECT *
FROM wos_b_202210.items
WHERE item_id IN (
    SELECT item_id
    FROM wos_b_202210.abstracts
    WHERE abstract[1] LIKE '%population coding%'
);

-- Table for %Spike-timing-dependent plasticity
CREATE TABLE stdp_abs AS
SELECT *
FROM wos_b_202210.items
WHERE item_id IN (
    SELECT item_id
    FROM wos_b_202210.abstracts
    WHERE abstract[1] LIKE '%spike-timing-dependent plasticity%'
);