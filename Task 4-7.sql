-- Identify the most common pizza size ordered.

SELECT 
    pizzas.size, COUNT(order_det.quantity) AS order_count
FROM
    pizzas
        JOIN
    order_det ON pizzas.pizza_id = order_det.pizza_id
GROUP BY pizzas.size
ORDER BY order_det.quantity DESC LIMIT 1;

