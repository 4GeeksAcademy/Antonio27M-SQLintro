-- PLEASE READ THIS BEFORE RUNNING THE EXERCISE

-- ⚠️ IMPORTANT: This SQL file may crash due to two common issues: comments and missing semicolons.

-- ✅ Suggestions:
-- 1) Always end each SQL query with a semicolon `;`
-- 2) Ensure comments are well-formed:
--    - Use `--` for single-line comments only;
--    - Avoid inline comments after queries
--    - Do not use `/* */` multi-line comments, as they may break execution;

-- -----------------------------------------------
-- queries.sql
-- Complete each mission by writing your SQL query
-- directly below the corresponding instruction
-- -----------------------------------------------

--SELECT * FROM regions;
--SELECT * FROM species;
--SELECT * FROM climate;
--SELECT * FROM observations;

--python src/app.py;

-- MISSION 1 ¿Cuáles son las primeras 10 observaciones registradas?
-- Your query here;

--SELECT * FROM observations
--LIMIT 10;

-- MISSION 2 ¿Qué identificadores de región (region_id) aparecen en los datos?
-- Your query here;

--SELECT DISTINCT region_id FROM Observations;

-- MISSION 3 ¿Cuántas especies distintas (species_id) se han observado?
-- Your query here;

--SELECT DISTINCT count(species_id) FROM Observations;

-- MISSION 4 ¿Cuántas observaciones hay para la región con region_id = 2?
-- Your query here;

--SELECT count(species_id) FROM observations
--WHERE species_id = 2;

-- MISSION 5 ¿Cuántas observaciones se registraron el día 1998-08-08?
-- Your query here;

--SELECT count(observation_date) FROM observations
--WHERE observation_date = "1998-08-08";

-- MISSION 6 ¿Cuál es el region_id con más observaciones?
-- Your query here;

--SELECT count(region_id) FROM observations
--GROUP BY region_id;


-- MISSION 7 ¿Cuáles son los 5 species_id más frecuentes?
-- Your query here;

--SELECT species_id, count(*) AS contador FROM observations
--GROUP BY species_id
--ORDER BY contador DESC
--LIMIT 5;

-- MISSION 8 ¿Qué especies (species_id) tienen menos de 5 registros?
-- Your query here;

--SELECT species_id, count(*) AS contador FROM observations
--GROUP BY species_id
--HAVING contador < 5; 

--MISSION 9 ¿Qué observadores (observer) registraron más observaciones?;

--SELECT observer, count(*) AS contador FROM observations
--GROUP BY observer
--ORDER BY contador DESC
--LIMIT 5;

--MISSION 10 Muestra el nombre de la región (regions.name) para cada observación.;

