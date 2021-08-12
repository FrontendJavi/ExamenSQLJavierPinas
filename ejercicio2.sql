INSERT INTO ingredient(id, name, price)
             VALUES(
                  UUID_TO_BIN(UUID()),
                  'tomate',
                  '1');
        INSERT INTO ingredient(id, name, price)
             VALUES(
                  UUID_TO_BIN(UUID()),
                  'queso',
                  '3');
        
        INSERT INTO pizza (id, name, url) 
            VALUES (
                    UUID_TO_BIN(UUID()), 
                    'Carbonara',
                    'url');

        BEGIN;
        INSERT INTO pizza_ingredient (id, id_pizza, id_ingredient, quantity) 
        VALUES (UUID_TO_BIN(UUID()), 
        (SELECT id FROM pizza WHERE name='Carbonara'), 
        (SELECT id FROM ingredient WHERE name='queso'),
        1);

        BEGIN;
        INSERT INTO pizza_ingredient (id, id_pizza, id_ingredient, quantity) 
        VALUES (UUID_TO_BIN(UUID()), 
        (SELECT id FROM pizza WHERE name='Carbonara'), 
        (SELECT id FROM ingredient WHERE name='tomate'),
        1)
        