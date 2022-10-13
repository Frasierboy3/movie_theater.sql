CREATE TABLE customer(
    customer_id SERIAL PRIMARY KEY,
    first_name VARCHAR(50),
    last_name VARCHAR(50),
    email VARCHAR(100),
    phone VARCHAR (15),
    isMember BOOLEAN
); 

--had to name date in ticket table show_date due to date being something already
CREATE TABLE tickets(
    ticket_id SERIAL PRIMARY KEY,
    customer_id INTEGER,
    movie_id INTEGER,
    showing VARCHAR(15),
    show_date VARCHAR(15),
    price NUMERIC(10,2)
);

CREATE TABLE movies(
    movie_id SERIAL PRIMARY KEY,
    movie_name VARCHAR(50),
    rating VARCHAR(10)
);

CREATE TABLE product(
    product_id SERIAL PRIMARY KEY,
    price NUMERIC(10,2),
    brand VARCHAR(50),
    prod_name VARCHAR(50)
);

CREATE TABLE concessions(
    cart_id SERIAL PRIMARY KEY,
    customer_id INTEGER,
    product_id INTEGER,
    FOREIGN KEY(customer_id) REFERENCES customer(customer_id),
    FOREIGN KEY(product_id) REFERENCES product(product_id) 
);

ALTER TABLE tickets
ADD FOREIGN KEY (customer_id) REFERENCES customer(customer_id);
ALTER TABLE tickets 
DROP COLUMN price; 
ALTER TABLE tickets
ADD price INTEGER; 
ALTER TABLE product
DROP COLUMN price;
ALTER TABLE product
ADD price INTEGER;