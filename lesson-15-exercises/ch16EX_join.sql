-- SELECT space_number, garden_bed.plant_id FROM seeds
-- INNER JOIN garden_bed ON seeds.plant_id = garden_bed.plant_id;

-- SELECT seed_id, space_number FROM seeds
-- LEFT JOIN garden_bed ON seeds.plant_id = garden_bed.plant_id;

-- SELECT garden_bed.plant_id, seed_id FROM seeds
-- RIGHT JOIN garden_bed ON seeds.plant_id = garden_bed.plant_id;

SELECT seeds.plant_id, expiration_date, date_planted, space_number FROM seeds
LEFT JOIN garden_bed ON seeds.plant_id = garden_bed.plant_id

UNION ALL

SELECT garden_bed.plant_id, expiration_date, date_planted, space_number FROM seeds
RIGHT JOIN garden_bed ON seeds.plant_id = garden_bed.plant_id