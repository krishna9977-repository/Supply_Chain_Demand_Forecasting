# SELECT * FROM forecasting_db.dataco_supply_chain_working


# describe dataco_supply_chain_working

/****
SELECT `Category Name`, COUNT(DISTINCT `Category Id`) AS id_variants
FROM dataco_supply_chain_working
GROUP BY `Category Name`
HAVING COUNT(DISTINCT `Category Id`) > 1;
****/

/******
SELECT `Category Id`, `Category Name`, COUNT(*) AS row_count
FROM dataco_supply_chain_working
WHERE `Category Name` = 'Electronics'
GROUP BY `Category Id`, `Category Name`;
*********/

/**********
SET SQL_SAFE_UPDATES = 0;

UPDATE dataco_supply_chain_working
SET `Category Name` = 'Tennis & Racquet'
WHERE `Category Id` = 13 AND `Category Name` = 'Electronics';
********/

/******
SET SQL_SAFE_UPDATES = 0;

UPDATE dataco_supply_chain_working
SET `Category Id` = 36,
    `Category Name` = 'Golf Balls'
WHERE `Category Id` = 37 AND `Category Name` = 'Electronics';
**********/


/********
SET SQL_SAFE_UPDATES = 0;

UPDATE dataco_supply_chain_working
SET `Department Id` = 2,
    `Category Id` = 6
WHERE `Category Id` = 13 AND `Category Name` = 'Tennis & Racquet';
*********/


#SELECT * FROM forecasting_db.dataco_supply_chain_working


/*********
SELECT `Category Name`, COUNT(DISTINCT `Category Id`) AS id_variants
FROM dataco_supply_chain_working
GROUP BY `Category Name`
HAVING COUNT(DISTINCT `Category Id`) > 1;

SELECT `Category Id`, COUNT(DISTINCT `Category Name`) AS name_variants
FROM dataco_supply_chain_working
GROUP BY `Category Id`
HAVING COUNT(DISTINCT `Category Name`) > 1;
***********/


# SELECT * FROM forecasting_db.dataco_supply_chain_working

DESCRIBE dataco_supply_chain_working
