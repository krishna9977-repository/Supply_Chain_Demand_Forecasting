/****
SELECT CONCAT(
    'SUM(`', COLUMN_NAME, '` IS NULL) AS `', COLUMN_NAME, '_nulls`'
) AS query_part
FROM information_schema.COLUMNS
WHERE TABLE_NAME = 'dataco_supply_chain_working'
  AND TABLE_SCHEMA = 'forecasting_db';
*******/

/********
SELECT
SUM(`Order Item Id` IS NULL) AS `Order Item Id_nulls`,
SUM(`order_date` IS NULL) AS `order_date_nulls`,
SUM(`Order Country` IS NULL) AS `Order Country_nulls`,
SUM(`Order State` IS NULL) AS `Order State_nulls`,
SUM(`Order City` IS NULL) AS `Order City_nulls`,
SUM(`Order Placed at Latitude` IS NULL) AS `Order Placed at Latitude_nulls`,
SUM(`Order Placed at Longitude` IS NULL) AS `Order Placed at Longitude_nulls`,
SUM(`Segment` IS NULL) AS `Segment_nulls`,
SUM(`Department Name` IS NULL) AS `Department Name_nulls`,
SUM(`Department Id` IS NULL) AS `Department Id_nulls`,
SUM(`Category Name` IS NULL) AS `Category Name_nulls`,
SUM(`Category Id` IS NULL) AS `Category Id_nulls`,
SUM(`Product Name` IS NULL) AS `Product Name_nulls`,
SUM(`Product RFID Code` IS NULL) AS `Product RFID Code_nulls`,
SUM(`Product Price` IS NULL) AS `Product Price_nulls`,
SUM(`Order Item Quantity` IS NULL) AS `Order Item Quantity_nulls`,
SUM(`Sales` IS NULL) AS `Sales_nulls`,
SUM(`Order Item Discount Rate` IS NULL) AS `Order Item Discount Rate_nulls`,
SUM(`Order Item Discount` IS NULL) AS `Order Item Discount_nulls`,
SUM(`Order Item Total` IS NULL) AS `Order Item Total_nulls`,
SUM(`Order Item Profit Ratio` IS NULL) AS `Order Item Profit Ratio_nulls`,
SUM(`Profit Per Order` IS NULL) AS `Profit Per Order_nulls`,
SUM(`Transaction Type` IS NULL) AS `Transaction Type_nulls`,
SUM(`Customer Market` IS NULL) AS `Customer Market_nulls`,
SUM(`Customer Region` IS NULL) AS `Customer Region_nulls`,
SUM(`Customer Country` IS NULL) AS `Customer Country_nulls`,
SUM(`Customer State` IS NULL) AS `Customer State_nulls`,
SUM(`Customer City` IS NULL) AS `Customer City_nulls`,
SUM(`shipping_date` IS NULL) AS `shipping_date_nulls`,
SUM(`Shipping Mode` IS NULL) AS `Shipping Mode_nulls`,
SUM(`Days for shipping (real)` IS NULL) AS `Days for shipping (real)_nulls`,
SUM(`Days for shipment (scheduled)` IS NULL) AS `Days for shipment (scheduled)_nulls`,
SUM(`Late_delivery_risk` IS NULL) AS `Late_delivery_risk_nulls`,
SUM(`Delivery Status` IS NULL) AS `Delivery Status_nulls`,
SUM(`Order Status` IS NULL) AS `Order Status_nulls`,
SUM(`Product Status` IS NULL) AS `Product Status_nulls`,
SUM(`Order Id` IS NULL) AS `Order Id_nulls`
FROM dataco_supply_chain_working
*********/


/******
SELECT CONCAT(
    'SUM(`', COLUMN_NAME, '` = '''') AS `', COLUMN_NAME, '_blanks`'
) AS query_part
FROM information_schema.COLUMNS
WHERE TABLE_NAME = 'dataco_supply_chain_working'
  AND TABLE_SCHEMA = 'forecasting_db'
  AND DATA_TYPE IN ('varchar', 'text', 'char');
*******/



/*******
select
SUM(`Order Country` = '') AS `Order Country_blanks`,
SUM(`Order State` = '') AS `Order State_blanks`,
SUM(`Order City` = '') AS `Order City_blanks`,
SUM(`Segment` = '') AS `Segment_blanks`,
SUM(`Department Name` = '') AS `Department Name_blanks`,
SUM(`Category Name` = '') AS `Category Name_blanks`,
SUM(`Product Name` = '') AS `Product Name_blanks`,
SUM(`Transaction Type` = '') AS `Transaction Type_blanks`,
SUM(`Customer Market` = '') AS `Customer Market_blanks`,
SUM(`Customer Region` = '') AS `Customer Region_blanks`,
SUM(`Customer Country` = '') AS `Customer Country_blanks`,
SUM(`Customer State` = '') AS `Customer State_blanks`,
SUM(`Customer City` = '') AS `Customer City_blanks`,
SUM(`Shipping Mode` = '') AS `Shipping Mode_blanks`,
SUM(`Delivery Status` = '') AS `Delivery Status_blanks`,
SUM(`Order Status` = '') AS `Order Status_blanks`
from dataco_supply_chain_working
********/

/*******
SELECT
    MIN(`Sales`) AS min_sales, MAX(`Sales`) AS max_sales,
    MIN(`Profit Per Order`) AS min_profit, MAX(`Profit Per Order`) AS max_profit,
    MIN(`Product Status`) AS min_product_status, MAX(`Product Status`) AS max_product_status,
    MIN(`Product RFID Code`) AS min_rfid, MAX(`Product RFID Code`) AS max_rfid,
    MIN(`Product Price`) AS min_price, MAX(`Product Price`) AS max_price,
    MIN(`Order Placed at Longitude`) AS min_longitude, MAX(`Order Placed at Longitude`) AS max_longitude,
    MIN(`Order Placed at Latitude`) AS min_latitude, MAX(`Order Placed at Latitude`) AS max_latitude,
    MIN(`Order Item Total`) AS min_item_total, MAX(`Order Item Total`) AS max_item_total,
    MIN(`Order Item Quantity`) AS min_qty, MAX(`Order Item Quantity`) AS max_qty,
    MIN(`Order Item Profit Ratio`) AS min_profit_ratio, MAX(`Order Item Profit Ratio`) AS max_profit_ratio,
    MIN(`Order Item Id`) AS min_item_id, MAX(`Order Item Id`) AS max_item_id,
    MIN(`Order Item Discount Rate`) AS min_discount_rate, MAX(`Order Item Discount Rate`) AS max_discount_rate,
    MIN(`Order Item Discount`) AS min_discount, MAX(`Order Item Discount`) AS max_discount,
    MIN(`Order Id`) AS min_order_id, MAX(`Order Id`) AS max_order_id,
    MIN(`Late_delivery_risk`) AS min_late_risk, MAX(`Late_delivery_risk`) AS max_late_risk,
    MIN(`Department Id`) AS min_dept_id, MAX(`Department Id`) AS max_dept_id,
    MIN(`Days for shipping (real)`) AS min_ship_days, MAX(`Days for shipping (real)`) AS max_ship_days,
    MIN(`Days for shipment (scheduled)`) AS min_sched_days, MAX(`Days for shipment (scheduled)`) AS max_sched_days,
    MIN(`Category Id`) AS min_category_id, MAX(`Category Id`) AS max_category_id
FROM dataco_supply_chain_working;
*********/

/**********
SELECT
    MIN(`Sales`) AS `Sales_min`, MAX(`Sales`) AS `Sales_max`,
    MIN(`Profit Per Order`) AS `Profit Per Order_min`, MAX(`Profit Per Order`) AS `Profit Per Order_max`,
    MIN(`Product Status`) AS `Product Status_min`, MAX(`Product Status`) AS `Product Status_max`,
    MIN(`Product RFID Code`) AS `Product RFID Code_min`, MAX(`Product RFID Code`) AS `Product RFID Code_max`,
    MIN(`Product Price`) AS `Product Price_min`, MAX(`Product Price`) AS `Product Price_max`,
    MIN(`Order Placed at Longitude`) AS `Order Placed at Longitude_min`, MAX(`Order Placed at Longitude`) AS `Order Placed at Longitude_max`,
    MIN(`Order Placed at Latitude`) AS `Order Placed at Latitude_min`, MAX(`Order Placed at Latitude`) AS `Order Placed at Latitude_max`,
    MIN(`Order Item Total`) AS `Order Item Total_min`, MAX(`Order Item Total`) AS `Order Item Total_max`,
    MIN(`Order Item Quantity`) AS `Order Item Quantity_min`, MAX(`Order Item Quantity`) AS `Order Item Quantity_max`,
    MIN(`Order Item Profit Ratio`) AS `Order Item Profit Ratio_min`, MAX(`Order Item Profit Ratio`) AS `Order Item Profit Ratio_max`,
    MIN(`Order Item Id`) AS `Order Item Id_min`, MAX(`Order Item Id`) AS `Order Item Id_max`,
    MIN(`Order Item Discount Rate`) AS `Order Item Discount Rate_min`, MAX(`Order Item Discount Rate`) AS `Order Item Discount Rate_max`,
    MIN(`Order Item Discount`) AS `Order Item Discount_min`, MAX(`Order Item Discount`) AS `Order Item Discount_max`,
    MIN(`Order Id`) AS `Order Id_min`, MAX(`Order Id`) AS `Order Id_max`,
    MIN(`Late_delivery_risk`) AS `Late_delivery_risk_min`, MAX(`Late_delivery_risk`) AS `Late_delivery_risk_max`,
    MIN(`Department Id`) AS `Department Id_min`, MAX(`Department Id`) AS `Department Id_max`,
    MIN(`Days for shipping (real)`) AS `Days for shipping (real)_min`, MAX(`Days for shipping (real)`) AS `Days for shipping (real)_max`,
    MIN(`Days for shipment (scheduled)`) AS `Days for shipment (scheduled)_min`, MAX(`Days for shipment (scheduled)`) AS `Days for shipment (scheduled)_max`,
    MIN(`Category Id`) AS `Category Id_min`, MAX(`Category Id`) AS `Category Id_max`
FROM dataco_supply_chain_working;
********/

/*******
SELECT
    COUNT(*) AS total_rows,

    SUM(`Product Price` * `Order Item Quantity` != `Sales`) AS sales_mismatch,

    SUM(`Sales` * `Order Item Discount Rate` != `Order Item Discount`) AS discount_mismatch,

    SUM(`Sales` - `Order Item Discount` != `Order Item Total`) AS item_total_mismatch,

    SUM(`Order Item Total` * `Order Item Profit Ratio` != `Profit Per Order`) AS profit_mismatch

FROM dataco_supply_chain_working;
*********/

/******
SELECT
    COUNT(*) AS total_rows,
    SUM(ROUND(`Product Price` * `Order Item Quantity`, 4) != ROUND(`Sales`, 4)) AS sales_mismatch,
    SUM(ROUND(`Sales` * `Order Item Discount Rate`, 4) != ROUND(`Order Item Discount`, 4)) AS discount_mismatch,
    SUM(ROUND(`Sales` - `Order Item Discount`, 4) != ROUND(`Order Item Total`, 4)) AS item_total_mismatch,
    SUM(ROUND(`Order Item Total` * `Order Item Profit Ratio`, 4) != ROUND(`Profit Per Order`, 4)) AS profit_mismatch
FROM dataco_supply_chain_working;
*********/

/**********
SELECT
    COUNT(*) AS total_rows,
    SUM(ROUND(`Product Price` * `Order Item Quantity`, 2) != ROUND(`Sales`, 2)) AS sales_mismatch,
    SUM(ROUND(`Sales` * `Order Item Discount Rate`, 2) != ROUND(`Order Item Discount`, 2)) AS discount_mismatch,
    SUM(ROUND(`Sales` - `Order Item Discount`, 2) != ROUND(`Order Item Total`, 2)) AS item_total_mismatch,
    SUM(ROUND(`Order Item Total` * `Order Item Profit Ratio`, 2) != ROUND(`Profit Per Order`, 2)) AS profit_mismatch
FROM dataco_supply_chain_working;
*********/

/********
SET SQL_SAFE_UPDATES = 0;

UPDATE dataco_supply_chain_working
SET `Product Price` = ROUND(`Product Price`, 0);
*********/

/********
ALTER TABLE dataco_supply_chain_working
MODIFY COLUMN `Product Price` INT;
**********/


/*****
SET SQL_SAFE_UPDATES = 0;

UPDATE dataco_supply_chain_working
SET `Sales` = `Product Price` * `Order Item Quantity`;
******/

/*******
ALTER TABLE dataco_supply_chain_working
MODIFY COLUMN `Sales` INT;
*****/

/******
UPDATE dataco_supply_chain_working
SET `Order Item Discount Rate` = ROUND(`Order Item Discount Rate`, 2);
******/

/********
ALTER TABLE dataco_supply_chain_working
MODIFY COLUMN `Order Item Discount Rate` DECIMAL(4,2);
********/


/*********
SET SQL_SAFE_UPDATES = 0;

UPDATE dataco_supply_chain_working
SET `Order Item Discount` = ROUND(`Sales` * `Order Item Discount Rate`, 2);
******/

/********
ALTER TABLE dataco_supply_chain_working
MODIFY COLUMN `Order Item Discount` DECIMAL(10,2);
*********/

/********
UPDATE dataco_supply_chain_working
SET `Order Item Total` = `Sales` - `Order Item Discount`;
********/

/*********
ALTER TABLE dataco_supply_chain_working
MODIFY COLUMN `Order Item Total` DECIMAL(10,2);
************/

/*********
SET SQL_SAFE_UPDATES = 0;

UPDATE dataco_supply_chain_working
SET `Order Item Profit Ratio` = ROUND(`Order Item Profit Ratio`, 2);
*********/

/**********
ALTER TABLE dataco_supply_chain_working
MODIFY COLUMN `Order Item Profit Ratio` DECIMAL(5,2);
***********/

/*********
SET SQL_SAFE_UPDATES = 0;

UPDATE dataco_supply_chain_working
SET `Profit Per Order` = ROUND(`Order Item Total` * `Order Item Profit Ratio`, 2);
********/


/*******
ALTER TABLE dataco_supply_chain_working
MODIFY COLUMN `Profit Per Order` DECIMAL(10,2);
**********/

/*********
SELECT
    COUNT(*) AS total_rows,
    SUM(`Product Price` * `Order Item Quantity` != `Sales`) AS sales_mismatch,
    SUM(ROUND(`Sales` * `Order Item Discount Rate`, 2) != `Order Item Discount`) AS discount_mismatch,
    SUM(`Sales` - `Order Item Discount` != `Order Item Total`) AS item_total_mismatch,
    SUM(ROUND(`Order Item Total` * `Order Item Profit Ratio`, 2) != `Profit Per Order`) AS profit_mismatch
FROM dataco_supply_chain_working;
**********/

/********
SELECT `Category Id`, COUNT(DISTINCT `Category Name`) AS name_variants
FROM dataco_supply_chain_working
GROUP BY `Category Id`
HAVING COUNT(DISTINCT `Category Name`) > 1;
********/

/*******
SELECT `Category Name`, COUNT(DISTINCT `Category Id`) AS id_variants
FROM dataco_supply_chain_working
GROUP BY `Category Name`
HAVING COUNT(DISTINCT `Category Id`) > 1;
***********/

/********
SELECT `Category Id`, `Category Name`, COUNT(*) AS row_count
FROM dataco_supply_chain_working
WHERE `Category Name` = 'Electronics'
GROUP BY `Category Id`, `Category Name`;
*********/


/**********
SELECT `Category Id`, `Category Name`, COUNT(*) AS frequency
FROM dataco_supply_chain_working
GROUP BY `Category Id`, `Category Name`
********/

/*********
SELECT * FROM dataco_supply_chain_working
WHERE `Category Id` IN (13, 37)
********/

/********
SELECT `Department Name`, `Department Id`, `Category Name`, `Category Id`, `Product Name`, COUNT(*) AS frequency
FROM dataco_supply_chain_working
GROUP BY `Department Name`, `Department Id`, `Category Name`, `Category Id`, `Product Name`
*********/

/******
SELECT `Department Name`, COUNT(*) AS frequency
FROM dataco_supply_chain_working
GROUP BY `Department Name`
*******/

/*****
SELECT `Department Name`, `Department Id`, `Category Name`, `Category Id`, `Product Name`, COUNT(*) AS frequency
FROM dataco_supply_chain_working
WHERE `Category Name` = 'Electronics'
GROUP BY `Department Name`, `Department Id`, `Category Name`, `Category Id`, `Product Name`
**********/

/******
SELECT `Department Name`, `Department Id`, `Category Name`, `Category Id`, `Product Name`, COUNT(*) AS frequency
FROM dataco_supply_chain_working
GROUP BY `Department Name`, `Department Id`, `Category Name`, `Category Id`, `Product Name`
**********/

/*******
SELECT
    COUNT(*) AS total_rows,
    SUM(
        (`Days for shipping (real)` > `Days for shipment (scheduled)` AND `Late_delivery_risk` != 1)
        OR
        (`Days for shipping (real)` <= `Days for shipment (scheduled)` AND `Late_delivery_risk` != 0)
    ) AS mismatch_count
FROM dataco_supply_chain_working;
**********/

/*****
SELECT `Days for shipping (real)`, `Days for shipment (scheduled)`, `Late_delivery_risk`
FROM dataco_supply_chain_working
WHERE
    (`Days for shipping (real)` > `Days for shipment (scheduled)` AND `Late_delivery_risk` != 1)
    OR
    (`Days for shipping (real)` <= `Days for shipment (scheduled)` AND `Late_delivery_risk` != 0)
*******/

/*****
SELECT COUNT(*) AS mismatch_count
FROM dataco_supply_chain_working
WHERE `Days for shipping (real)` > `Days for shipment (scheduled)`
  AND `Late_delivery_risk` = 0;
********/


/*****
SELECT COUNT(*) AS mismatch_count
FROM dataco_supply_chain_working
WHERE `Days for shipping (real)` <= `Days for shipment (scheduled)`
  AND `Late_delivery_risk` = 1;
*******/

/*******
SELECT *
FROM dataco_supply_chain_working
WHERE `Days for shipping (real)` > `Days for shipment (scheduled)`
  AND `Late_delivery_risk` = 0;
******/

/******
SELECT COUNT(*) AS canceled_count
FROM dataco_supply_chain_working
WHERE `Delivery Status` = 'Shipping canceled';
********/



/*****
SELECT *
FROM dataco_supply_chain_working
WHERE `Delivery Status` = 'Shipping canceled';
****/

/*****
SELECT *
FROM dataco_supply_chain_working
*******/

/*********
SELECT `Department Name`, `Department Id`, `Category Name`, `Category Id`, `Product Name`, COUNT(*) AS frequency
FROM dataco_supply_chain_working
GROUP BY `Department Name`, `Department Id`, `Category Name`, `Category Id`, `Product Name`
*********/

SELECT `Category Name`, `Category Id` , COUNT(*) AS frequency
FROM dataco_supply_chain_working
GROUP BY `Category Name`, `Category Id`