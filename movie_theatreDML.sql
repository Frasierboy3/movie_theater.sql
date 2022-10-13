SELECT * FROM customer;

INSERT INTO customer(
    first_name,
    last_name,
    email,
    phone,
    isMember
)
VALUES(
    'Chet',
    'Frasier',
    'cf@gmail.com',
    '555-555-5555',
    true
);
INSERT INTO customer(
    first_name,
    last_name,
    email,
    phone,
    isMember
)
VALUES(
    'Chester',
    'Frasier',
    'cf@gmail.com',
    '555-555-5555',
    false
);

SELECT * FROM tickets;
INSERT INTO tickets(
    showing,
    show_date,
    price
)
VALUES(
    'Smile',
    'R',
    12
);

INSERT INTO movies(
    movie_name,
    rating
)
VALUES(
    'Smile',
    'R'
);

INSERT INTO product(
    price,
    brand,
    prod_name
)
VALUES(
    4.00,
    'MARS',
    'Peanut M&M'
);

INSERT INTO concessions(customer_id, product_id)
VALUES (1,1),(1,1);