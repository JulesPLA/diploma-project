-- Задание 1
-- Список логинов курьеров и количество их заказов в статусе "В доставке"

SELECT
    c.login,
    COUNT(o.id) AS delivery_count
FROM "Couriers" c
LEFT JOIN "Orders" o
    ON c.id = o."courierId"
    AND o."inDelivery" = true
GROUP BY c.login
ORDER BY delivery_count DESC;