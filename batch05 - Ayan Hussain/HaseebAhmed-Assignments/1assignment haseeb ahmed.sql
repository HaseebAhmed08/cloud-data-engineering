




------- assignment 
--Question 1
select first_name, last_name, city ,phone FROM SALES.customers
where state = 'CA'  AND phone  IS NOT NULL


--Question 2
select  product_id,product_name,model_year,list_price from production.products
order by model_year DESC,list_price ASC;
 

--Question 3
--part A
select top 5  product_name,list_price from production.products
 order by list_price DESC;


 --part B
select top 5 percent * from production.products
 order by list_price asc;

 --Question 4 
 SELECT product_name, list_price
FROM production.products
ORDER BY list_price DESC
OFFSET 0 ROWS
FETCH NEXT 10 ROWS ONLY;

--B
 SELECT product_name, list_price
FROM production.products
ORDER BY list_price DESC
OFFSET 10 ROWS
FETCH NEXT 10 ROWS ONLY;

--C
 SELECT product_name, list_price
FROM production.products
ORDER BY list_price DESC
OFFSET 20 ROWS
FETCH NEXT 10 ROWS ONLY;



-- Question 5

--part A
select DISTINCT state from sales.customers
order by state;

--part B
select DISTINCT state,city from sales.customers
order by state ASC,city ASC;

--part C
select COUNT(DISTINCT model_year) from production.products;

-- Question 6 
SELECT product_id, product_name, brand_id, category_id, list_price 
FROM production.products
WHERE (list_price BETWEEN 500 AND 1500)
  AND (model_year = 2019 OR model_year = 2020)
ORDER BY list_price ASC;
