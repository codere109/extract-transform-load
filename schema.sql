create table dnd_monsters(
    id serial primary key,
    name varchar(255),
    cr float,
    type varchar(255),
    size varchar(255),
    ac int,
    hp int,
    align varchar(255)
);

create table folklore_creatures(
    name varchar(255),
    origin varchar(255),
    description varchar(255)
    
);

SELECT customer_name.id, customer_name.first_name, customer_name.last_name, customer_location.address, customer_location.us_state
FROM customer_name 
JOIN customer_location
ON customer_name.id = customer_location.id;