SELECT * FROM "PianoType";

SELECT * FROM "ProductionOrder" WHERE status = 'completed';

SELECT * FROM "PianoModel" ORDER BY price DESC;

SELECT "name" FROM "Specialist" WHERE "availability" = true;

SELECT "model", 
       "price" * 0.8 AS discounted_price 
FROM "PianoModel"
WHERE "type" = 'Grand';

SELECT * 
FROM "PianoModel" 
WHERE "price" BETWEEN 10000 AND 50000;

SELECT "type", 
       COUNT(*) AS total_models, 
       ROUND(MIN("price")) AS min_price, 
       ROUND(MAX("price")) AS max_price, 
       ROUND(AVG("price")) AS avg_price 
FROM "PianoModel" 
GROUP BY "type";

SELECT s."name" AS specialist_name,
       po."status",
       COUNT(*) AS total_orders
FROM "ProductionOrder" po, "Specialist" s
WHERE po."specialist_id" = s."id"
GROUP BY s."name", po."status";