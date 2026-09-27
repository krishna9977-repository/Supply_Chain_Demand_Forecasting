# TRUNCATE TABLE dataco_supply_chain;
# SELECT COUNT(*) FROM dataco_supply_chain;


/********
LOAD DATA LOCAL INFILE
"C:/Users/Krishna/Desktop/Supply Chain Project/Demand Forecasting Project/Data/DataCoSupplyChainDataset 2(in).csv"
INTO TABLE dataco_supply_chain
FIELDS TERMINATED BY ','
ENCLOSED BY '"'
LINES TERMINATED BY '\n'
IGNORE 1 ROWS;
**********/


/***
SHOW WARNINGS LIMIT 20;
SELECT COUNT(*) FROM dataco_supply_chain;
****/

# SELECT * FROM dataco_supply_chain LIMIT 10;
#DESCRIBE dataco_supply_chain;


/*********
ALTER TABLE dataco_supply_chain
MODIFY `order date (DateOrders)` VARCHAR(30),
MODIFY `shipping date (DateOrders)` VARCHAR(30);
*********/

# TRUNCATE TABLE dataco_supply_chain;

/********
LOAD DATA LOCAL INFILE
"C:/Users/Krishna/Desktop/Supply Chain Project/Demand Forecasting Project/Data/DataCoSupplyChainDataset 2(in).csv"
INTO TABLE dataco_supply_chain
FIELDS TERMINATED BY ','
ENCLOSED BY '"'
LINES TERMINATED BY '\n'
IGNORE 1 ROWS;
*******/


# SELECT `order date (DateOrders)`, `shipping date (DateOrders)`  FROM dataco_supply_chain LIMIT 10;

# DESCRIBE dataco_supply_chain;

# SELECT * FROM dataco_supply_chain;


DESCRIBE dataco_supply_chain;