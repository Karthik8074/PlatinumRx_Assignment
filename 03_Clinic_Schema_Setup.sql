CREATE TABLE clinics (
    cid VARCHAR(50),
    clinic_name VARCHAR(100),
    city VARCHAR(100),
    state VARCHAR(100),
    country VARCHAR(100)
);

CREATE TABLE customer (
    uid VARCHAR(50),
    name VARCHAR(100),
    mobile VARCHAR(15)
);

CREATE TABLE clinic_sales (
    oid VARCHAR(50),
    uid VARCHAR(50),
    cid VARCHAR(50),
    amount INT,
    datetime DATETIME,
    sales_channel VARCHAR(50)
);

CREATE TABLE expenses (
    eid VARCHAR(50),
    cid VARCHAR(50),
    description VARCHAR(255),
    amount INT,
    datetime DATETIME
);

-- INSERT DATA

INSERT INTO clinics VALUES
('c1','ABC Clinic','Hyderabad','Telangana','India'),
('c2','XYZ Clinic','Chennai','Tamil Nadu','India');

INSERT INTO customer VALUES
('u1','John','9999999991'),
('u2','David','9999999992');

INSERT INTO clinic_sales VALUES
('o1','u1','c1',5000,'2021-01-10 10:00:00','online'),
('o2','u2','c2',7000,'2021-01-15 12:00:00','offline');

INSERT INTO expenses VALUES
('e1','c1','rent',2000,'2021-01-10 09:00:00'),
('e2','c2','salary',3000,'2021-01-15 09:00:00'); 
