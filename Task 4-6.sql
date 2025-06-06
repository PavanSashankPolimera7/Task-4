-- Calculate the total revenue generated from pizza sales.

SELECT 
    ROUND(SUM(pizzas.price * order_det.quantity),2) AS total_revenue
FROM
    pizzas
        JOIN
    order_det ON pizzas.pizza_id = order_det.pizza_id;
    
    
    
    
    
    
    