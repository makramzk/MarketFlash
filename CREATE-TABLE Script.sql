 
CREATE TABLE `MarketFlash`.`Clients` (
  `Client_id` VARCHAR(10) NOT NULL,
  `CompanyName` VARCHAR(200) NOT NULL,
  `Address` VARCHAR(300) NOT NULL,
  `Email` VARCHAR(250) NOT NULL,
  `Phone_No` VARCHAR(15) NOT NULL,
  `Contact_Person` VARCHAR(50) NOT NULL,
  PRIMARY KEY (`Client_id`),
  UNIQUE INDEX `Email_UNIQUE` (`Email` ASC) VISIBLE);
  
  ===========================================================
  
  
  CREATE TABLE `MarketFlash`.`Departments` (
  `Dep_id` VARCHAR(10) NOT NULL,
  `Department_Name` VARCHAR(50) NOT NULL,
  PRIMARY KEY (`Dep_id`));
  
  ===========================================================
  
  CREATE TABLE `MarketFlash`.`Channels` (
  `Channel_id` VARCHAR(10) NOT NULL,
  `Channel_Name` VARCHAR(50) NOT NULL,
  PRIMARY KEY (`Channel_id`));
  
  ===========================================================
  
  CREATE TABLE `MarketFlash`.`Audience` (
  `Audience_id` VARCHAR(10) NOT NULL,
  `Audience_Group` VARCHAR(50) NOT NULL,
  PRIMARY KEY (`Audience_id`));
  
  ===========================================================
  
  CREATE TABLE `MarketFlash`.`Location` (
  `Loc_id` VARCHAR(10) NOT NULL,
  `Location_Name` VARCHAR(50) NOT NULL,
  PRIMARY KEY (`Loc_id`));
  
  ===========================================================
  
  CREATE TABLE `MarketFlash`.`Campaign_Type` (
  `CType_id` VARCHAR(10) NOT NULL,
  `CType_Name` VARCHAR(50) NOT NULL,
  PRIMARY KEY (`CType_id`));
  
  ===========================================================
  
   CREATE TABLE `MarketFlash`.`Employees` (
  `Emp_id` VARCHAR(10) NOT NULL,
  `First_Name` VARCHAR(50) NOT NULL,
  `Last_Name` VARCHAR(50) NOT NULL,
  `Address` VARCHAR(300) NOT NULL,
  `Email` VARCHAR(250) NOT NULL,
  `Phone_No` VARCHAR(15) NOT NULL,
  `Department` VARCHAR(10) NOT NULL,
  `Supervisor` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`Emp_id`),
  UNIQUE INDEX `Email_UNIQUE` (`Email` ASC) VISIBLE
  FOREIGN KEY (Department) REFERENCES Departments(Dep_id),
  FOREIGN KEY (Supervisor) REFERENCES Employees(Emp_id)
  );
  
  ===========================================================
  CREATE TABLE `MarketFlash`.`Campaigns` (
  `Campaign_Number` VARCHAR(10) NOT NULL,
  `Start_Date` DATE NOT NULL,
  `End_Date` DATE NOT NULL,
  `Channel_id` VARCHAR(10) NOT NULL,
  `Client_id` VARCHAR(10) NOT NULL,
  `Audience_id` VARCHAR(10) NOT NULL,
  `Location_id` VARCHAR(10) NOT NULL,
  `Views` INT NULL,
  `Engagement` INT NULL,
  `Clicks` INT NULL,
  `Conversions` INT NOT NULL,
  `Expense` DECIMAL(25,2) NOT NULL,
  `Excutive` VARCHAR(10) NOT NULL,
  `Campaign_Type` VARCHAR(10) NOT NULL,
  `Total_Sales` DECIMAL(25,2) NULL,
  PRIMARY KEY (`Campaign_Number`)
  FOREIGN KEY (Channel_id) REFERENCES Channels(Channel_id),
  FOREIGN KEY (Client_id) REFERENCES Clients(Client_id),
  FOREIGN KEY (Ayduebce_id) REFERENCES Audience (Audience_id),
  FOREIGN KEY (Location_id) REFERENCES Location (Loc_id),
  FOREIGN KEY (Excutive) REFERENCES Employees(Emp_id),
  FOREIGN KEY (Campaign_Type) REFERENCES Campaign_Type(CType_id)  
  );
