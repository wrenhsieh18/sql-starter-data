SELECT COUNT(plant_name) AS "count", plant_name FROM plant
WHERE plant_id IN (SELECT garden_bed.plant_id FROM seeds
INNER JOIN garden_bed ON seeds.plant_id = garden_bed.plant_id)
GROUP BY plant_name;

-- SELECT plant_name FROM plant
-- WHERE plant_id IN (SELECT seeds.plant_id FROM seeds
-- LEFT JOIN garden_bed ON seeds.plant_id = garden_bed.plant_id);

-- SELECT plant_name FROM plant
-- WHERE plant_id IN (SELECT garden_bed.plant_id FROM seeds
-- RIGHT JOIN garden_bed ON seeds.plant_id = garden_bed.plant_id);

-- SELECT plant_name FROM plant
-- WHERE plant_id IN (

-- 	SELECT seeds.plant_id FROM seeds
-- 	LEFT JOIN garden_bed ON seeds.plant_id = garden_bed.plant_id

-- 	UNION

-- 	SELECT garden_bed.plant_id FROM seeds
-- 	RIGHT JOIN garden_bed ON seeds.plant_id = garden_bed.plant_id
-- );

-- INSERT seeds(expiration_date, quantity, reorder, plant_id)
-- VALUES ("2020-08-05", 100, 0, (SELECT plant_id FROM plant WHERE plant_name = "Hosta"));





