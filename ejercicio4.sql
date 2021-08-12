SELECT pizza.id, pizza.name, pizza.url FROM pizza
LEFT JOIN pizza_ingredient ON pizza.id = pizza_ingredient.id_pizza
LEFT JOIN ingredient ON pizza_ingredient.id_ingredient = ingredient.id 
WHERE pizza_ingredient.id IS NULL;