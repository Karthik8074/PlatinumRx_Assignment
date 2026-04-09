-- CREATE TABLES

CREATE TABLE users (
    user_id VARCHAR(50),
    name VARCHAR(100),
    phone_number VARCHAR(15),
    mail_id VARCHAR(100),
    billing_address VARCHAR(255)
);

CREATE TABLE bookings (
    booking_id VARCHAR(50),
    booking_date DATETIME,
    room_no VARCHAR(50),
    user_id VARCHAR(50)
);

CREATE TABLE items (
    item_id VARCHAR(50),
    item_name VARCHAR(100),
    item_rate INT
);

CREATE TABLE booking_commercials (
    id VARCHAR(50),
    booking_id VARCHAR(50),
    bill_id VARCHAR(50),
    bill_date DATETIME,
    item_id VARCHAR(50),
    item_quantity INT
);

-- INSERT DATA

INSERT INTO users VALUES 
('u1','John','9999999991','john@gmail.com','Hyderabad'),
('u2','David','9999999992','david@gmail.com','Chennai');

INSERT INTO bookings VALUES
('b1','2021-11-10 10:00:00','101','u1'),
('b2','2021-10-15 12:00:00','102','u1'),
('b3','2021-11-20 09:00:00','103','u2');

INSERT INTO items VALUES
('i1','Paratha',50),
('i2','Rice',100),
('i3','Curry',150);

INSERT INTO booking_commercials VALUES
('1','b1','bill1','2021-11-10 12:00:00','i1',5),
('2','b1','bill1','2021-11-10 12:00:00','i2',2),
('3','b2','bill2','2021-10-15 14:00:00','i3',10),
('4','b3','bill3','2021-11-20 10:00:00','i1',20); 
