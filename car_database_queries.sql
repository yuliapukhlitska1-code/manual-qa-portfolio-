SELECT
    cars.id,
    car_brands.title AS brand,
    car_models.title AS model,
    cars.mileage
FROM my_database.cars
JOIN my_database.car_brands
    ON cars.carBrandId = car_brands.id
JOIN my_database.car_models
    ON cars.carModelId = car_models.id
WHERE cars.mileage > 70000
ORDER BY cars.mileage DESC;