SET search_path TO ezcream;

INSERT INTO CUSTOMER (first_name, last_name, email, adress)
VALUES
   (
        'Ragnar',
        'Lothbrok',
        'ragnar@kattegat.com',
        '1 Valhalla Way'
    ),
    (
        'Lagertha',
        'Lothbrok',
        'lagertha@kattegat.com',
        '2 Shieldmaiden Road'
    ),
    (
        'Bjorn',
        'Ironside',
        'bjorn@kattegat.com',
        '3 Viking Bay'
    ),
    (
        'Ivar',
        'the Boneless',
        'ivar@danes.com',
        '4 The Great Heathen Army Camp'
    );



INSERT INTO 
    ezcream.CUSTOMER (
        customer_id, 
        first_name, 
        last_name, 
        email, 
        adress
    )
VALUES
   (
        50,
        'Ubbe',
        'Lothbrok',
        'ragnar@kattegat.com',
        '1 Valhalla Way'
    );

DELETE FROM ezcream.Customer WHERE customer_id = 50 CASCADE;

SELECT * FROM ezcream.customer;