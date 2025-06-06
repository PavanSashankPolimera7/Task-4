# left join
SELECT 
    order_det.order_id,
    order_det.pizza_id,
    order_det.quantity,
    pizzas.size,
    pizzas.price
FROM 
    dominos.order_det 
left join
    dominos.pizzas 
ON 
    order_det.pizza_id = pizzas.pizza_id;
    
# right join
SELECT 
    order_det.order_id,
    order_det.pizza_id,
    order_det.quantity,
    pizzas.size,
    pizzas.price
FROM 
    dominos.order_det 
right join 
    dominos.pizzas 
ON 
    order_det.pizza_id = pizzas.pizza_id;

# in operator
SELECT * 
FROM dominos.pizzas 
WHERE pizzas.size IN ('S','M');

# any operator
SELECT * 
FROM dominos.pizzas 
WHERE price > ANY
 ( SELECT price 
    FROM dominos.pizzas 
    WHERE price > 10 AND price < 15 );
    
 # all operator   
 SELECT * 
FROM dominos.pizzas 
WHERE price > all 
( SELECT price 
    FROM dominos.pizzas 
    WHERE price > 10 AND price < 15 );   
