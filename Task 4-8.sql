-- List the top 5 most ordered pizza types along with their quantities.

SELECT 
    pizzas.pizza_type_id,
    SUM(order_det.quantity) AS total_quantity
FROM
    pizzas
        JOIN
    order_det ON pizzas.pizza_id = order_det.pizza_id
GROUP BY pizzas.pizza_type_id
ORDER BY total_quantity DESC LIMIT 5;


