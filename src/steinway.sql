CREATE TABLE "PianoType" (
    "type" VARCHAR PRIMARY KEY,
    UNIQUE ("type")
);

CREATE TABLE "PianoModel" (
    "model" VARCHAR PRIMARY KEY,
    "type" VARCHAR REFERENCES "PianoType" ("type"),
    "price" DECIMAL,
    UNIQUE ("model")
);


CREATE TABLE "Specialist" (
    "id" SERIAL PRIMARY KEY,
    "name" VARCHAR,
    "availability" BOOLEAN
);

CREATE TABLE "ProductionOrder" (
    "id" SERIAL PRIMARY KEY,
    "piano_model_id" VARCHAR REFERENCES "PianoModel" ("model"),
    "specialist_id" INTEGER REFERENCES "Specialist" ("id"),
    "prod_order_date" DATE,
    "status" VARCHAR
);

CREATE TABLE "Option" (
    "id" SERIAL PRIMARY KEY,
    "piano_model_id" VARCHAR REFERENCES "PianoModel" ("model"),
    "option_name" VARCHAR,
    "price" DECIMAL
);

CREATE TABLE "CustomerOrderOption" (
    "id" SERIAL PRIMARY KEY,
    "option_product_id" INTEGER REFERENCES "Option" ("id"),
    "production_order_id" INTEGER REFERENCES "ProductionOrder" ("id")
);