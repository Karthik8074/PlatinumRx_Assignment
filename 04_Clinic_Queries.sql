--1 
SELECT 
    sales_channel,
    SUM(amount) AS revenue
FROM clinic_sales
GROUP BY sales_channel;

--2
SELECT 
    uid,
    SUM(amount) AS total_spent
FROM clinic_sales
GROUP BY uid
ORDER BY total_spent DESC
LIMIT 10;

--3
SELECT 
    MONTH(cs.datetime) AS month,
    SUM(cs.amount) AS revenue,
    SUM(e.amount) AS expense,
    (SUM(cs.amount) - SUM(e.amount)) AS profit
FROM clinic_sales cs
JOIN expenses e ON cs.cid = e.cid
GROUP BY MONTH(cs.datetime); 

--4
SELECT 
    cid,
    SUM(amount) AS revenue
FROM clinic_sales
GROUP BY cid
ORDER BY revenue DESC
LIMIT 1; 

--5
SELECT 
    cid,
    SUM(amount) AS revenue
FROM clinic_sales
GROUP BY cid
ORDER BY revenue ASC
LIMIT 1 OFFSET 1;
