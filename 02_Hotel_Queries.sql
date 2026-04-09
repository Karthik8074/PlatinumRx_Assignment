-- 1 
 SELECT b.user_id, b.room_no
FROM bookings b
WHERE booking_date = (
    SELECT MAX(booking_date)
    FROM bookings b2
    WHERE b2.user_id = b.user_id
);

-- 2

SELECT 
    bc.booking_id,
    SUM(bc.item_quantity * i.item_rate) AS total_bill
FROM booking_commercials bc
JOIN items i ON bc.item_id = i.item_id
WHERE MONTH(bc.bill_date) = 11 AND YEAR(bc.bill_date) = 2021
GROUP BY bc.booking_id;

-- 3
SELECT 
    bc.bill_id,
    SUM(bc.item_quantity * i.item_rate) AS bill_amount
FROM booking_commercials bc
JOIN items i ON bc.item_id = i.item_id
WHERE MONTH(bc.bill_date) = 10 AND YEAR(bc.bill_date) = 2021
GROUP BY bc.bill_id
HAVING bill_amount > 1000;

--4 
SELECT item_id, SUM(item_quantity) AS total_qty
FROM booking_commercials
GROUP BY item_id;

--5

SELECT 
    bill_id,
    SUM(item_quantity * item_rate) AS bill_amount
FROM booking_commercials bc
JOIN items i ON bc.item_id = i.item_id
GROUP BY bill_id
ORDER BY bill_amount DESC
LIMIT 1 OFFSET 1;