#SELECT * FROM dataco_supply_chain LIMIT 10;

/*******
SELECT `order date (DateOrders)`, `shipping date (DateOrders)`
FROM dataco_supply_chain
LIMIT 5;
*****/

/*********
ALTER TABLE dataco_supply_chain
DROP COLUMN order_date_clean;
*********/

/*********
ALTER TABLE dataco_supply_chain
DROP COLUMN shipping_date_clean;
*********/

/*********
ALTER TABLE dataco_supply_chain
ADD COLUMN order_date_clean DATETIME,
ADD COLUMN shipping_date_clean DATETIME;
**********/

/***********
UPDATE dataco_supply_chain
SET order_date_clean = STR_TO_DATE(`order date (DateOrders)`, '%m/%d/%Y %H:%i'),
    shipping_date_clean = STR_TO_DATE(`shipping date (DateOrders)`, '%m/%d/%Y %H:%i');
********/


/*********
ALTER TABLE dataco_supply_chain
DROP COLUMN `order date (DateOrders)`,
DROP COLUMN `shipping date (DateOrders)`;
**********/

/*********
ALTER TABLE dataco_supply_chain
CHANGE COLUMN order_date_clean order_date DATETIME,
CHANGE COLUMN shipping_date_clean shipping_date DATETIME;
*********/

#SELECT * FROM dataco_supply_chain

/******
SELECT `Type`, COUNT(*) AS frequency
FROM dataco_supply_chain
GROUP BY `Type`
ORDER BY frequency DESC;
******/

/*******
SELECT `Order Item Id`, COUNT(*) AS frequency
FROM dataco_supply_chain
GROUP BY `Order Item Id`
ORDER BY frequency DESC;
******/

#SELECT * FROM dataco_supply_chain

/*********
ALTER TABLE dataco_supply_chain
DROP COLUMN `Customer Password`,
DROP COLUMN `Product Description`,
DROP COLUMN `Product Image`,
DROP COLUMN `Customer Email`;
*********/

/********
ALTER TABLE dataco_supply_chain
RENAME COLUMN `Type` TO `Transaction Type`
*********/


/*********
ALTER TABLE dataco_supply_chain
RENAME COLUMN `Benefit per order` TO `Earning per order`
********/


/**************
ALTER TABLE dataco_supply_chain
RENAME COLUMN `Benefit per order` TO `Earning per order`
*********/

/*****
SELECT `Category Id`, `Category Name`, COUNT(*) AS frequency
FROM dataco_supply_chain
GROUP BY `Category Id`, `Category Name`
ORDER BY `Category Id`;
******/

/**************
select  `Customer City`, `Customer Country`, `Customer State`, `Customer Street`, `Customer Zipcode`, `Latitude`,  `Longitude`, `Market`, `Order City`, `Order Country`, `Order Region`, `Order State` 
from dataco_supply_chain
*************/

/*********
ALTER TABLE dataco_supply_chain
DROP COLUMN `Customer Zipcode`
**********/

/********
select  `Customer City`, `Customer Country`, `Customer State`, `Customer Street`, `Latitude`,  `Longitude`, `Market`, `Order City`, `Order Country`, `Order Region`, `Order State` 
from dataco_supply_chain
************/

/*****
SELECT `Customer State`, COUNT(*) AS frequency
FROM dataco_supply_chain
GROUP BY `Customer State`
ORDER BY frequency DESC;
*******/

/******
select  `Customer City`, `Customer Country`, `Customer State`, `Customer Street`, `Latitude`,  `Longitude`, `Market`, `Order City`, `Order Country`, `Order Region`, `Order State` 
from dataco_supply_chain
******/

/*****
SELECT `Customer Country`, `Customer State`, COUNT(*) AS frequency
FROM dataco_supply_chain
GROUP BY `Customer Country`, `Customer State`
*******/

/********
select  `Customer City`, `Customer Country`, `Customer State`, `Customer Street`, `Latitude`,  `Longitude`, `Market`, `Order City`, `Order Country`, `Order Region`, `Order State` 
from dataco_supply_chain
******/

/*******
UPDATE dataco_supply_chain
SET `Customer Country` = 'USA'
WHERE `Customer Country` = 'EE. UU.';
**********/

/*******
select  `Customer City`, `Customer Country`, `Customer State`, `Customer Street`, `Latitude`,  `Longitude`, `Market`, `Order City`, `Order Country`, `Order Region`, `Order State` 
from dataco_supply_chain
**********/

/********
ALTER TABLE dataco_supply_chain
DROP COLUMN `Customer Street`
*******/

/******
select  `Customer City`, `Customer Country`, `Customer State`, `Latitude`,  `Longitude`, `Market`, `Order City`, `Order Country`, `Order Region`, `Order State` 
from dataco_supply_chain
*****/

# select * from dataco_supply_chain

/********
select  `Customer City`, `Customer Country`, `Customer State`, `Latitude`,  `Longitude`, `Market`, `Order City`, `Order Country`, `Order Region`, `Order State` 
from dataco_supply_chain
******/

/*******
SELECT `Customer Id`, `Order Customer Id`, COUNT(*) AS frequency
FROM dataco_supply_chain
GROUP BY `Customer Id`, `Order Customer Id`
******/

/********
ALTER TABLE dataco_supply_chain
DROP COLUMN `Order Customer Id`
**********/

/******
SELECT `Department Id`, `Department Name`, COUNT(*) AS frequency
FROM dataco_supply_chain
GROUP BY `Department Id`, `Department Name`
*********/



/*****
SELECT `Order Item Id`, COUNT(*) AS frequency
FROM dataco_supply_chain
GROUP BY `Order Item Id`
*******/

/********
ALTER TABLE dataco_supply_chain
MODIFY COLUMN `Order Item Id` INT FIRST;
*********/

/*********
ALTER TABLE dataco_supply_chain
MODIFY COLUMN `order_date` DATETIME AFTER `Order Item Id`;
*********/

/****
select  `Customer City`, `Customer Country`, `Customer State`, `Latitude`,  `Longitude`, `Market`, `Order City`, `Order Country`, `Order Region`, `Order State` 
from dataco_supply_chain
*****/

/******
# step 1 
ALTER TABLE dataco_supply_chain
RENAME COLUMN `Customer City` TO `temp_city`,
RENAME COLUMN `Customer Country` TO `temp_country`,
RENAME COLUMN `Customer State` TO `temp_state`;
*******/

/****
# Step 2 
ALTER TABLE dataco_supply_chain
RENAME COLUMN `Order City` TO `Customer City`,
RENAME COLUMN `Order Country` TO `Customer Country`,
RENAME COLUMN `Order State` TO `Customer State`;
******/

/******
# Step 3 
ALTER TABLE dataco_supply_chain
RENAME COLUMN `temp_city` TO `Order City`,
RENAME COLUMN `temp_country` TO `Order Country`,
RENAME COLUMN `temp_state` TO `Order State`;
********/

/**********
# Step 4 
ALTER TABLE dataco_supply_chain
RENAME COLUMN `Latitude` TO `Order Placed at Latitude`,
RENAME COLUMN `Longitude` TO `Order Placed at Longitude`,
RENAME COLUMN `Market` TO `Customer Market`,
RENAME COLUMN `Order Region` TO `Customer Region`;
**********/


/********
ALTER TABLE dataco_supply_chain
DROP COLUMN `Customer Fname`,
DROP COLUMN `Customer Id`,
DROP COLUMN `Customer Lname`;
******/

/******
ALTER TABLE dataco_supply_chain
RENAME COLUMN `Customer Segment` TO `Segment`;
*******/

/*********
ALTER TABLE dataco_supply_chain
DROP COLUMN `Order Zipcode`;
*****/

/****
SELECT `Product Status`, COUNT(*) AS count
FROM dataco_supply_chain
GROUP BY `Product Status`;
******/

/****
select  `Earning per order`, `Sales per customer`, `Order Item Discount`, `Order Item Discount Rate`,  `Order Item Product Price`, `Order Item Profit Ratio`, `Order Item Quantity`, `Sales`, `Order Item Total`, `Order Profit Per Order`, `Product Price` 
from dataco_supply_chain
******/

/*****
ALTER TABLE dataco_supply_chain
RENAME COLUMN `Order Profit Per Order` TO `Profit Per Order`;
*****/

/*********
select  `Earning per order`, `Sales per customer`, `Order Item Discount`, `Order Item Discount Rate`,  `Order Item Product Price`, `Order Item Profit Ratio`, `Order Item Quantity`, `Sales`, `Order Item Total`, `Profit Per Order`, `Product Price` 
from dataco_supply_chain
*********/

/**********
ALTER TABLE dataco_supply_chain
DROP COLUMN `Earning per order`;
*********/

/********
select  `Sales per customer`, `Order Item Discount`, `Order Item Discount Rate`,  `Order Item Product Price`, `Order Item Profit Ratio`, `Order Item Quantity`, `Sales`, `Order Item Total`, `Profit Per Order`, `Product Price` 
from dataco_supply_chain
******/

/******
ALTER TABLE dataco_supply_chain
DROP COLUMN `Sales per customer`;
********/

/**********
select `Order Item Discount`, `Order Item Discount Rate`,  `Order Item Product Price`, `Order Item Profit Ratio`, `Order Item Quantity`, `Sales`, `Order Item Total`, `Profit Per Order`, `Product Price` 
from dataco_supply_chain
*********/

/*******
ALTER TABLE dataco_supply_chain
DROP COLUMN `Order Item Product Price`;
********/

/********
select `Order Item Discount`, `Order Item Discount Rate`, `Order Item Profit Ratio`, `Order Item Quantity`, `Sales`, `Order Item Total`, `Profit Per Order`, `Product Price` 
from dataco_supply_chain
*********/

/********
ALTER TABLE dataco_supply_chain
MODIFY COLUMN `Order Country` VARCHAR(255) AFTER `order_date`;

ALTER TABLE dataco_supply_chain
MODIFY COLUMN `Order State` VARCHAR(100) AFTER `Order Country`;

ALTER TABLE dataco_supply_chain
MODIFY COLUMN `Order City` VARCHAR(255) AFTER `Order State`;

ALTER TABLE dataco_supply_chain
MODIFY COLUMN `Order Placed at Latitude` DECIMAL(12,8) AFTER `Order City`;

ALTER TABLE dataco_supply_chain
MODIFY COLUMN `Order Placed at Longitude` DECIMAL(12,8) AFTER `Order Placed at Latitude`;
********/

/*********
ALTER TABLE dataco_supply_chain
DROP COLUMN `Product Category Id`;
**********/

/*****
select `Department Name`, `Department Id`, `Category Name`, `Category Id`, `Product Name`
from dataco_supply_chain
******/

/******
SELECT `Department Name`, `Category Name`, `Product Name`, COUNT(*) AS frequency
FROM dataco_supply_chain
GROUP BY `Department Name`, `Category Name`, `Product Name`
**********/

/********
ALTER TABLE dataco_supply_chain
MODIFY COLUMN `Department Name` VARCHAR(255) AFTER `Order Placed at Longitude`;

ALTER TABLE dataco_supply_chain
MODIFY COLUMN `Department Id` INT AFTER `Department Name`;

ALTER TABLE dataco_supply_chain
MODIFY COLUMN `Category Name` VARCHAR(255) AFTER `Department Id`;

ALTER TABLE dataco_supply_chain
MODIFY COLUMN `Category Id` INT AFTER `Category Name`;

ALTER TABLE dataco_supply_chain
MODIFY COLUMN `Product Name` VARCHAR(255) AFTER `Category Id`;
**********/

/******
select `Order Item Discount`, `Order Item Discount Rate`, `Order Item Profit Ratio`, `Order Item Quantity`, `Sales`, `Order Item Total`, `Profit Per Order`, `Product Price` 
from dataco_supply_chain
********/


/*********
ALTER TABLE dataco_supply_chain
MODIFY COLUMN `Product Price` DECIMAL(15,6) AFTER `Product Name`;

ALTER TABLE dataco_supply_chain
MODIFY COLUMN `Order Item Quantity` INT AFTER `Product Price`;

ALTER TABLE dataco_supply_chain
MODIFY COLUMN `Sales` DECIMAL(15,6) AFTER `Order Item Quantity`;

ALTER TABLE dataco_supply_chain
MODIFY COLUMN `Order Item Discount Rate` DECIMAL(10,6) AFTER `Sales`;

ALTER TABLE dataco_supply_chain
MODIFY COLUMN `Order Item Discount` DECIMAL(15,6) AFTER `Order Item Discount Rate`;

ALTER TABLE dataco_supply_chain
MODIFY COLUMN `Order Item Total` DECIMAL(15,6) AFTER `Order Item Discount`;

ALTER TABLE dataco_supply_chain
MODIFY COLUMN `Order Item Profit Ratio` DECIMAL(10,6) AFTER `Order Item Total`;

ALTER TABLE dataco_supply_chain
MODIFY COLUMN `Profit Per Order` DECIMAL(15,6) AFTER `Order Item Profit Ratio`;
**********/

/*********
select `Customer Market`, `Customer Region`, `Customer Country`, `Customer State`, `Customer City`
from dataco_supply_chain
*****/

/*************
ALTER TABLE dataco_supply_chain
MODIFY COLUMN `Customer Market` VARCHAR(100) AFTER `Transaction Type`;

ALTER TABLE dataco_supply_chain
MODIFY COLUMN `Customer Region` VARCHAR(255) AFTER `Customer Market`;

ALTER TABLE dataco_supply_chain
MODIFY COLUMN `Customer Country` VARCHAR(255) AFTER `Customer Region`;

ALTER TABLE dataco_supply_chain
MODIFY COLUMN `Customer State` VARCHAR(255) AFTER `Customer Country`;

ALTER TABLE dataco_supply_chain
MODIFY COLUMN `Customer City` VARCHAR(255) AFTER `Customer State`;
************/

/*****
select `shipping_date`, `Shipping Mode`, `Days for shipping (real)`, `Days for shipment (scheduled)`, `Late_delivery_risk`, `Delivery Status`, `Order Status`, `Product Status`
from dataco_supply_chain
********/


/***********
ALTER TABLE dataco_supply_chain
MODIFY COLUMN `shipping_date` DATETIME AFTER `Customer City`;

ALTER TABLE dataco_supply_chain
MODIFY COLUMN `Shipping Mode` VARCHAR(100) AFTER `shipping_date`;

ALTER TABLE dataco_supply_chain
MODIFY COLUMN `Days for shipping (real)` INT AFTER `Shipping Mode`;

ALTER TABLE dataco_supply_chain
MODIFY COLUMN `Days for shipment (scheduled)` INT AFTER `Days for shipping (real)`;

ALTER TABLE dataco_supply_chain
MODIFY COLUMN `Late_delivery_risk` INT AFTER `Days for shipment (scheduled)`;

ALTER TABLE dataco_supply_chain
MODIFY COLUMN `Delivery Status` VARCHAR(100) AFTER `Late_delivery_risk`;

ALTER TABLE dataco_supply_chain
MODIFY COLUMN `Order Status` VARCHAR(100) AFTER `Delivery Status`;

ALTER TABLE dataco_supply_chain
MODIFY COLUMN `Product Status` INT AFTER `Order Status`;
*********/

/*******
ALTER TABLE dataco_supply_chain
DROP COLUMN `Order Item Cardprod Id`;
*********/

/****
ALTER TABLE dataco_supply_chain
RENAME COLUMN `Product Card Id` TO `Product RFID Code`;
******/

/*******
ALTER TABLE dataco_supply_chain
MODIFY COLUMN `Product RFID Code` INT AFTER `Product Name`;
*********/

/******
ALTER TABLE dataco_supply_chain
MODIFY COLUMN `Segment` VARCHAR(100) AFTER `Order Placed at Longitude`;
*******/

/****
CREATE TABLE dataco_supply_chain_working AS
SELECT * FROM dataco_supply_chain;
********/

