/*******
CREATE TABLE dataco_supply_chain (
    `Type` VARCHAR(50),
    `Days for shipping (real)` INT,
    `Days for shipment (scheduled)` INT,
    `Benefit per order` DECIMAL(15,6),
    `Sales per customer` DECIMAL(15,6),
    `Delivery Status` VARCHAR(100),
    `Late_delivery_risk` INT,
    `Category Id` INT,
    `Category Name` VARCHAR(255),
    `Customer City` VARCHAR(255),
    `Customer Country` VARCHAR(255),
    `Customer Email` VARCHAR(255),
    `Customer Fname` VARCHAR(100),
    `Customer Id` INT,
    `Customer Lname` VARCHAR(100),
    `Customer Password` VARCHAR(255),
    `Customer Segment` VARCHAR(100),
    `Customer State` VARCHAR(100),
    `Customer Street` VARCHAR(255),
    `Customer Zipcode` INT,
    `Department Id` INT,
    `Department Name` VARCHAR(255),
    `Latitude` DECIMAL(12,8),
    `Longitude` DECIMAL(12,8),
    `Market` VARCHAR(100),
    `Order City` VARCHAR(255),
    `Order Country` VARCHAR(255),
    `Order Customer Id` INT,
    `order date (DateOrders)` DATETIME,
    `Order Id` INT,
    `Order Item Cardprod Id` INT,
    `Order Item Discount` DECIMAL(15,6),
    `Order Item Discount Rate` DECIMAL(10,6),
    `Order Item Id` INT,
    `Order Item Product Price` DECIMAL(15,6),
    `Order Item Profit Ratio` DECIMAL(10,6),
    `Order Item Quantity` INT,
    `Sales` DECIMAL(15,6),
    `Order Item Total` DECIMAL(15,6),
    `Order Profit Per Order` DECIMAL(15,6),
    `Order Region` VARCHAR(255),
    `Order State` VARCHAR(255),
    `Order Status` VARCHAR(100),
    `Order Zipcode` INT NULL,
    `Product Card Id` INT,
    `Product Category Id` INT,
    `Product Description` VARCHAR(500),
    `Product Image` VARCHAR(500),
    `Product Name` VARCHAR(255),
    `Product Price` DECIMAL(15,6),
    `Product Status` INT,
    `shipping date (DateOrders)` DATETIME,
    `Shipping Mode` VARCHAR(100)
);
********/

/********
LOAD DATA LOCAL INFILE
"C:/Users/Krishna/Desktop/Supply Chain Project/Demand Forecasting Project/Data/DataCoSupplyChainDataset 2(in).csv"
INTO TABLE dataco_supply_chain
FIELDS TERMINATED BY ','
ENCLOSED BY '"'
LINES TERMINATED BY '\n'
IGNORE 1 ROWS;
**********/

 SELECT * FROM dataco_supply_chain;
