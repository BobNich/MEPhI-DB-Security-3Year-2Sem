CREATE TABLE Piano (
  id INTEGER PRIMARY KEY AUTOINCREMENT,
  model_name TEXT,
  specifications TEXT,
  price DECIMAL
);

CREATE TABLE Option (
  id INTEGER PRIMARY KEY AUTOINCREMENT,
  piano_id INTEGER,
  option_name TEXT,
  FOREIGN KEY (piano_id) REFERENCES Piano (id)
);

CREATE TABLE CustomerOrderOption (
  id INTEGER PRIMARY KEY AUTOINCREMENT,
  customer_order_id INTEGER,
  option_id INTEGER,
  FOREIGN KEY (customer_order_id) REFERENCES CustomerOrderItem (id),
  FOREIGN KEY (option_id) REFERENCES Option (id)
);

CREATE TABLE CustomerOrderItem (
  id INTEGER PRIMARY KEY AUTOINCREMENT,
  piano_id INTEGER,
  FOREIGN KEY (piano_id) REFERENCES Piano (id)
);

CREATE TABLE Specialist (
  id INTEGER PRIMARY KEY AUTOINCREMENT,
  name TEXT,
  model_name TEXT,
  availability INTEGER,
  FOREIGN KEY (model_name) REFERENCES Piano (model_name)
);

CREATE TABLE ProductionOrder (
  id INTEGER PRIMARY KEY AUTOINCREMENT,
  customer_item_order_id INTEGER,
  piano_id INTEGER,
  specialist_id INTEGER,
  prod_order_date DATE,
  status TEXT,
  FOREIGN KEY (customer_item_order_id) REFERENCES CustomerOrderItem (id),
  FOREIGN KEY (piano_id) REFERENCES Piano (id),
  FOREIGN KEY (specialist_id) REFERENCES Specialist (id)
);

CREATE TABLE Inventory (
  id INTEGER PRIMARY KEY AUTOINCREMENT,
  piano_id INTEGER,
  FOREIGN KEY (piano_id) REFERENCES Piano (id)
);
