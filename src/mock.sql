-- Insert piano types
INSERT INTO "PianoType" ("type") VALUES 
    ('Upright'),
    ('Grand'),
    ('Digital'),
    ('Concert');

-- Insert piano models
INSERT INTO "PianoModel" ("model", "type", "price") VALUES
    ('Upright Model A', 'Upright', 10000),
    ('Upright Model B', 'Upright', 12000),
    ('Grand Model C', 'Grand', 30000),
    ('Grand Model D', 'Grand', 50000),
    ('Digital Model E', 'Digital', 8000),
    ('Digital Model F', 'Digital', 10000),
    ('Concert Model G', 'Concert', 70000),
    ('Concert Model H', 'Concert', 90000),
    ('Concert Model I', 'Concert', 120000),
    ('Concert Model J', 'Concert', 150000);

-- Insert specialists
INSERT INTO "Specialist" ("name", "availability") VALUES
    ('John Smith', true),
    ('Emily Davis', false),
    ('Michael Johnson', true);

-- Insert production orders
INSERT INTO "ProductionOrder" ("piano_model_id", "specialist_id", "prod_order_date", "status") VALUES
    ('Upright Model A', 1, '2024-03-27', 'pending'),
    ('Grand Model C', 2, '2024-03-28', 'in_progress'),
    ('Digital Model E', 3, '2024-03-29', 'completed'),
    ('Concert Model G', 1, '2024-03-30', 'pending'),
    ('Upright Model B', 2, '2024-03-31', 'pending'),
    ('Grand Model D', 3, '2024-04-01', 'in_progress'),
    ('Digital Model F', 1, '2024-04-02', 'completed'),
    ('Concert Model H', 2, '2024-04-03', 'pending'),
    ('Concert Model I', 3, '2024-04-04', 'pending'),
    ('Digital Model E', 1, '2024-04-05', 'in_progress');

-- Insert options
INSERT INTO "Option" ("piano_model_id", "option_name", "price") VALUES
    ('Upright Model A', 'Polished Finish', 500),
    ('Grand Model D', 'Custom Carving', 2000),
    ('Concert Model G', 'Extended Warranty', 5000),
    ('Digital Model F', 'Headphones Included', 200);

-- Insert customer order options
INSERT INTO "CustomerOrderOption" ("option_id", "production_order_id") VALUES
    (1, 1),
    (2, 2),
    (3, 3),
    (4, 4);