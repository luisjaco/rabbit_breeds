SELECT 
	rabbits.id as rabbit_id,
	rabbits.name, 
	min_size, 
	max_size,
	furs.fur,
	ears.ear,
	color_description, 
	arba_recognized, 
	brc_recognized, 
	origins.origin
FROM rabbit_descriptions
JOIN rabbits
	ON rabbits.id=rabbit_id
JOIN ears
	ON ears.id=ear_id
JOIN rabbits_furs
	ON rabbits_furs.rabbit_id=rabbits.id
JOIN furs
	ON rabbits_furs.fur_id=furs.id
JOIN rabbits_origins
	ON rabbits_origins.rabbit_id=rabbits.id
JOIN origins
	ON rabbits_origins.origin_id=origins.id
ORDER BY rabbit_id ASC;
