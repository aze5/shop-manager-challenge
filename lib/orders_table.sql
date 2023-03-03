
-- file: order_table.sql


CREATE TABLE orders (
  id SERIAL PRIMARY KEY,
  customer TEXT,
  date DATE
);

-- Then the table with the foreign key first.
CREATE TABLE items (
  id SERIAL PRIMARY KEY,
  name TEXT,
  price FLOAT,
  order_id int,
  constraint fk_order foreign key(order_id)
    references orders(id)
    on delete cascade
);