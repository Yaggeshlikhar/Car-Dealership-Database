-- stored procedure Customer_Details

CREATE DEFINER=`root`@`localhost` PROCEDURE `Customer_Details`(in cus_ID int)
BEGIN
declare cust_ID int;
set @cust_ID = cus_ID;
SELECT 
    customer.CustomerID,
    customer.Customer_FName AS `Name`,
    cars_sold.Cars_Sold_ID,
    dealers.`Name`,
    dealers.Address,
    dealers.Contact,
    car_models.Car_Models_ID,
    car_models.Model_Name AS Model,
    car_models.Price
FROM
    customer
        INNER JOIN
    cars_sold ON customer.CustomerID = cars_sold.CustomerID
        INNER JOIN
    car_models ON cars_sold.Car_Models_ID = car_models.Car_Models_ID
        INNER JOIN
    dealers ON dealers.DealersID = car_models.DealersID
WHERE
    customer.CustomerID = @cust_ID;
END


--------------------------------------------------------------------------------------

-- stored procedure Dealers Stock

CREATE DEFINER=`root`@`localhost` PROCEDURE `Dealers Stock`(in deal_ID int)
BEGIN
declare dealer_ID int;
set @dealer_ID = deal_ID;
SELECT 
    dealers.DealersID,
    dealers.`Name`,
    dealers.Address,
    dealers.City,
    dealers.Contact,
    car_models.Model_Name,
    car_models.Quantity,
    car_models.Price
FROM
    dealers
        INNER JOIN
    car_models ON dealers.DealersID = car_models.DealersID
WHERE
    dealers.DealersID = @dealer_ID;
END


--------------------------------------------------------------------------------------
-- view cars available

CREATE 
    ALGORITHM = UNDEFINED 
    DEFINER = `root`@`localhost` 
    SQL SECURITY DEFINER
VIEW `cars available` AS
    SELECT 
        `cm`.`Model_Name` AS `Model_Name`,
        `d`.`Name` AS `Name`,
        `d`.`Address` AS `Address`,
        `d`.`Contact` AS `Contact`,
        `cm`.`Price` AS `Price`,
        `cm`.`Quantity` AS `Quantity`
    FROM
        (`car_models` `cm`
        JOIN `dealers` `d` ON ((`cm`.`DealersID` = `d`.`DealersID`)))
        
        
-------------------------------------------------------------------------------------------

-- view revenue

CREATE 
    ALGORITHM = UNDEFINED 
    DEFINER = `root`@`localhost` 
    SQL SECURITY DEFINER
VIEW `revenue` AS
    SELECT 
        `dealers`.`DealersID` AS `DealersID`,
        `dealers`.`Name` AS `Name`,
        SUM(`cars_sold`.`Agreed_Price`) AS `Total Sales`
    FROM
        (`dealers`
        JOIN `cars_sold` ON ((`dealers`.`DealersID` = `cars_sold`.`DealersID`)))
    GROUP BY `dealers`.`DealersID` , `dealers`.`Name` WITH ROLLUP
    

--------------------------------------------------------------------------------------------------

-- trigger

CREATE DEFINER = CURRENT_USER TRIGGER `Lamborghini`.`Cars_Sold_AFTER_INSERT` 
AFTER INSERT ON `Cars_Sold` FOR EACH ROW
BEGIN
declare qty int;
SELECT 
    Quantity
INTO qty FROM
    Car_Models
WHERE
    DealersID = new.DealersID
        AND Car_Models_ID = new.Car_Models_ID;
if qty <2

then
signal sqlstate '45000' set message_text = 'Quantity not available';
elseif qty>2
then
Update Car_Models
SET Quantity=Quantity-1
where DealersID = new.DealersID
        AND Car_Models_ID = new.Car_Models_ID;
end if;
END

