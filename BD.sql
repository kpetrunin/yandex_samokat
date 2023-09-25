# Список логинов курьеров с количеством их заказов в статусе «В доставке»
SELECT "Couriers".login,
COUNT("Orders"."courierId")
FROM "Orders"
INNER JOIN "Couriers" ON "Orders"."courierId" = "Couriers".id
WHERE "Orders"."inDelivery" = TRUE
GROUP BY "Couriers".login;

# Вывод всех трекеров заказов и их статусов
SELECT track,
    CASE
        WHEN finished = true THEN '2'
        WHEN cancelled = true THEN '-1'
        WHEN "inDelivery" = true THEN '1'
        WHEN cancelled = true THEN '-1'
        ELSE '0'
    END
FROM "Orders";

