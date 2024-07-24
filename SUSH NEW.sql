
CREATE DATABASE Bank;

USE Bank;

CREATE TABLE Customers (
    CustomerID INT AUTO_INCREMENT PRIMARY KEY,
    FirstName VARCHAR(50),
    LastName VARCHAR(50),
    Email VARCHAR(100),
    City VARCHAR(50),
    AccountType VARCHAR(20),
    Balance DECIMAL(10, 2)
);

INSERT INTO Customers (FirstName, LastName, Email, City, AccountType, Balance)
VALUES
('John', 'Doe', 'john.doe1@example.com', 'New York', 'Savings', 1500.00),
('Jane', 'Smith', 'jane.smith2@example.com', 'Los Angeles', 'Checking', 2000.00),
('Sam', 'Wilson', 'sam.wilson3@example.com', 'Chicago', 'Savings', 3000.00),
('Lucy', 'Brown', 'lucy.brown4@example.com', 'Houston', 'Checking', 2500.00),
('Mike', 'Johnson', 'mike.johnson5@example.com', 'Phoenix', 'Savings', 1000.00),
('Emily', 'Davis', 'emily.davis6@example.com', 'Philadelphia', 'Checking', 1750.00),
('David', 'Clark', 'david.clark7@example.com', 'San Antonio', 'Savings', 2250.00),
('Emma', 'Martinez', 'emma.martinez8@example.com', 'San Diego', 'Checking', 2750.00),
('Daniel', 'Rodriguez', 'daniel.rodriguez9@example.com', 'Dallas', 'Savings', 3250.00),
('Sophia', 'Lopez', 'sophia.lopez10@example.com', 'San Jose', 'Checking', 1250.00),
('James', 'Garcia', 'james.garcia11@example.com', 'Austin', 'Savings', 1800.00),
('Olivia', 'Hernandez', 'olivia.hernandez12@example.com', 'Jacksonville', 'Checking', 2300.00),
('Michael', 'Martinez', 'michael.martinez13@example.com', 'San Francisco', 'Savings', 2800.00),
('Isabella', 'Gonzalez', 'isabella.gonzalez14@example.com', 'Columbus', 'Checking', 3300.00),
('Ethan', 'Perez', 'ethan.perez15@example.com', 'Fort Worth', 'Savings', 1300.00),
('Ava', 'Lee', 'ava.lee16@example.com', 'Charlotte', 'Checking', 1900.00),
('Alexander', 'Sanchez', 'alexander.sanchez17@example.com', 'Indianapolis', 'Savings', 2400.00),
('Mia', 'Clark', 'mia.clark18@example.com', 'Seattle', 'Checking', 2900.00),
('William', 'Ramirez', 'william.ramirez19@example.com', 'Denver', 'Savings', 3400.00),
('Amelia', 'Lewis', 'amelia.lewis20@example.com', 'Washington', 'Checking', 1400.00),
('Elijah', 'Walker', 'elijah.walker21@example.com', 'Boston', 'Savings', 1950.00),
('Charlotte', 'Hall', 'charlotte.hall22@example.com', 'El Paso', 'Checking', 2450.00),
('Benjamin', 'Allen', 'benjamin.allen23@example.com', 'Detroit', 'Savings', 2950.00),
('Harper', 'Young', 'harper.young24@example.com', 'Nashville', 'Checking', 3450.00),
('Lucas', 'Hernandez', 'lucas.hernandez25@example.com', 'Memphis', 'Savings', 1450.00),
('Ella', 'King', 'ella.king26@example.com', 'Portland', 'Checking', 2000.00),
('Henry', 'Wright', 'henry.wright27@example.com', 'Oklahoma City', 'Savings', 2500.00),
('Scarlett', 'Lopez', 'scarlett.lopez28@example.com', 'Las Vegas', 'Checking', 3000.00),
('Jack', 'Scott', 'jack.scott29@example.com', 'Louisville', 'Savings', 3500.00),
('Grace', 'Green', 'grace.green30@example.com', 'Baltimore', 'Checking', 1500.00),
('Mason', 'Adams', 'mason.adams31@example.com', 'Albuquerque', 'Savings', 1550.00),
('Sofia', 'Baker', 'sofia.baker32@example.com', 'Fresno', 'Checking', 2050.00),
('Logan', 'Perez', 'logan.perez33@example.com', 'Sacramento', 'Savings', 2550.00),
('Aiden', 'Moore', 'aiden.moore34@example.com', 'Kansas City', 'Checking', 3050.00),
('Riley', 'Taylor', 'riley.taylor35@example.com', 'Mesa', 'Savings', 3550.00),
('Zoe', 'Anderson', 'zoe.anderson36@example.com', 'Atlanta', 'Checking', 1650.00),
('Jackson', 'Thomas', 'jackson.thomas37@example.com', 'Omaha', 'Savings', 2150.00),
('Lily', 'Jackson', 'lily.jackson38@example.com', 'Miami', 'Checking', 2650.00),
('Carter', 'White', 'carter.white39@example.com', 'Long Beach', 'Savings', 3150.00),
('Victoria', 'Harris', 'victoria.harris40@example.com', 'Virginia Beach', 'Checking', 3650.00),
('Jayden', 'Martin', 'jayden.martin41@example.com', 'Oakland', 'Savings', 1750.00),
('Grace', 'Thompson', 'grace.thompson42@example.com', 'Minneapolis', 'Checking', 2250.00),
('Liam', 'Garcia', 'liam.garcia43@example.com', 'Tulsa', 'Savings', 2750.00),
('Chloe', 'Martinez', 'chloe.martinez44@example.com', 'Arlington', 'Checking', 3250.00),
('Lucas', 'Robinson', 'lucas.robinson45@example.com', 'Tampa', 'Savings', 3750.00),
('Natalie', 'Clark', 'natalie.clark46@example.com', 'Aurora', 'Checking', 1850.00),
('Levi', 'Rodriguez', 'levi.rodriguez47@example.com', 'Anaheim', 'Savings', 2350.00),
('Avery', 'Lewis', 'avery.lewis48@example.com', 'St. Louis', 'Checking', 2850.00),
('Ella', 'Lee', 'ella.lee49@example.com', 'Riverside', 'Savings', 3350.00),
('Logan', 'Walker', 'logan.walker50@example.com', 'Corpus Christi', 'Checking', 3850.00);


CREATE TABLE Loan (
    LoanID INT AUTO_INCREMENT PRIMARY KEY,
    CustomerID INT,
    LoanAmount DECIMAL(10, 2),
    LoanType VARCHAR(20),
    InterestRate DECIMAL(5, 2),
    LoanStartDate DATE,
    LoanEndDate DATE,
    LoanStatus VARCHAR(20),
    FOREIGN KEY (CustomerID) REFERENCES Customers(CustomerID)
);


INSERT INTO Loan (CustomerID, LoanAmount, LoanType, InterestRate, LoanStartDate, LoanEndDate, LoanStatus)
VALUES
(1, 5000.00, 'Personal', 5.5, '2023-01-15', '2026-01-15', 'Approved'),
(2, 10000.00, 'Mortgage', 3.5, '2023-02-20', '2033-02-20', 'Pending'),
(3, 7500.00, 'Auto', 4.0, '2023-03-25', '2028-03-25', 'Approved'),
(4, 3000.00, 'Personal', 5.0, '2023-04-10', '2025-04-10', 'Rejected'),
(5, 12000.00, 'Mortgage', 3.8, '2023-05-05', '2035-05-05', 'Approved'),
(6, 1500.00, 'Personal', 6.0, '2023-06-15', '2024-06-15', 'Pending'),
(7, 2500.00, 'Personal', 5.5, '2023-07-20', '2025-07-20', 'Approved'),
(8, 8000.00, 'Auto', 4.2, '2023-08-25', '2028-08-25', 'Pending'),
(9, 6000.00, 'Personal', 5.7, '2023-09-10', '2026-09-10', 'Approved'),
(10, 11000.00, 'Mortgage', 3.4, '2023-10-05', '2033-10-05', 'Rejected'),
(11, 4000.00, 'Auto', 4.5, '2023-11-15', '2028-11-15', 'Approved'),
(12, 5000.00, 'Personal', 5.6, '2023-12-20', '2026-12-20', 'Pending'),
(13, 9000.00, 'Mortgage', 3.6, '2023-01-25', '2034-01-25', 'Approved'),
(14, 2500.00, 'Personal', 6.2, '2023-02-10', '2025-02-10', 'Rejected'),
(15, 6500.00, 'Auto', 4.1, '2023-03-05', '2028-03-05', 'Approved'),
(16, 3500.00, 'Personal', 5.9, '2023-04-15', '2025-04-15', 'Pending'),
(17, 7000.00, 'Mortgage', 3.9, '2023-05-20', '2032-05-20', 'Approved'),
(18, 2000.00, 'Personal', 5.8, '2023-06-25', '2025-06-25', 'Approved'),
(19, 4000.00, 'Auto', 4.3, '2023-07-10', '2028-07-10', 'Rejected'),
(20, 7500.00, 'Personal', 5.4, '2023-08-05', '2026-08-05', 'Approved'),
(21, 8000.00, 'Mortgage', 3.7, '2023-09-15', '2030-09-15', 'Pending'),
(22, 2500.00, 'Personal', 6.1, '2023-10-20', '2025-10-20', 'Rejected'),
(23, 4500.00, 'Auto', 4.6, '2023-11-25', '2028-11-25', 'Approved'),
(24, 5500.00, 'Personal', 5.2, '2023-12-10', '2026-12-10', 'Pending'),
(25, 12000.00, 'Mortgage', 3.3, '2023-01-05', '2035-01-05', 'Approved'),
(26, 3000.00, 'Personal', 5.7, '2023-02-15', '2025-02-15', 'Approved'),
(27, 3500.00, 'Auto', 4.0, '2023-03-20', '2028-03-20', 'Pending'),
(28, 4000.00, 'Personal', 5.3, '2023-04-25', '2026-04-25', 'Approved'),
(29, 13000.00, 'Mortgage', 3.2, '2023-05-10', '2036-05-10', 'Rejected'),
(30, 5000.00, 'Personal', 6.0, '2023-06-05', '2025-06-05', 'Approved'),
(31, 5500.00, 'Auto', 4.4, '2023-07-15', '2028-07-15', 'Pending'),
(32, 6000.00, 'Personal', 5.1, '2023-08-20', '2026-08-20', 'Approved'),
(33, 11000.00, 'Mortgage', 3.0, '2023-09-25', '2033-09-25', 'Pending'),
(34, 2000.00, 'Personal', 5.6, '2023-10-10', '2025-10-10', 'Rejected'),
(35, 7000.00, 'Auto', 4.2, '2023-11-05', '2028-11-05', 'Approved'),
(36, 8000.00, 'Personal', 5.0, '2023-12-15', '2026-12-15', 'Approved'),
(37, 12000.00, 'Mortgage', 3.8, '2023-01-20', '2035-01-20', 'Pending'),
(38, 1500.00, 'Personal', 6.3, '2023-02-25', '2024-02-25', 'Rejected'),
(39, 3000.00, 'Auto', 4.1, '2023-03-15', '2028-03-15', 'Approved'),
(40, 4000.00, 'Personal', 5.4, '2023-04-20', '2026-04-20', 'Pending'),
(41, 10000.00, 'Mortgage', 3.5, '2023-05-25', '2033-05-25', 'Approved'),
(42, 2000.00, 'Personal', 5.7, '2023-06-10', '2025-06-10', 'Approved'),
(43, 4500.00, 'Auto', 4.3, '2023-07-25', '2028-07-25', 'Rejected'),
(44, 6000.00, 'Personal', 5.5, '2023-08-15', '2026-08-15', 'Approved'),
(45, 13000.00, 'Mortgage', 3.1, '2023-09-30', '2036-09-30', 'Pending'),
(46, 3500.00, 'Personal', 6.0, '2023-10-25', '2025-10-25', 'Approved'),
(47, 7000.00, 'Auto', 4.4, '2023-11-15', '2028-11-15', 'Approved'),
(48, 8000.00, 'Personal', 5.3, '2023-12-30', '2026-12-30', 'Pending'),
(49, 12000.00, 'Mortgage', 3.6, '2023-01-25', '2035-01-25', 'Approved'),
(50, 3000.00, 'Personal', 5.1, '2023-01-25', '2035-01-25', 'Approved');

CREATE TABLE CreditCard (
    CreditCardID INT AUTO_INCREMENT PRIMARY KEY,
    CustomerID INT,
    BankName VARCHAR(50),
    CardNumber VARCHAR(16),
    CardType VARCHAR(20),
    CreditLimit DECIMAL(10, 2),
    Balance DECIMAL(10, 2),
    IssueDate DATE,
    ExpiryDate DATE,
    Status VARCHAR(20),
    FOREIGN KEY (CustomerID) REFERENCES Customers(CustomerID)
);

INSERT INTO CreditCard (CustomerID, BankName, CardNumber, CardType, CreditLimit, Balance, IssueDate, ExpiryDate, Status)
VALUES
(1, 'Bank of America', '1234567812345678', 'Visa', 5000.00, 1500.00, '2021-01-15', '2025-01-15', 'Active'),
(2, 'Chase', '2345678923456789', 'MasterCard', 10000.00, 2000.00, '2021-02-20', '2025-02-20', 'Active'),
(3, 'Wells Fargo', '3456789034567890', 'Visa', 7500.00, 3000.00, '2021-03-25', '2025-03-25', 'Active'),
(4, 'Citibank', '4567890145678901', 'MasterCard', 3000.00, 2500.00, '2021-04-10', '2025-04-10', 'Inactive'),
(5, 'Capital One', '5678901256789012', 'Visa', 12000.00, 1000.00, '2021-05-05', '2025-05-05', 'Active'),
(6, 'Discover', '6789012367890123', 'Discover', 1500.00, 500.00, '2021-06-15', '2025-06-15', 'Active'),
(7, 'American Express', '7890123478901234', 'AmEx', 2500.00, 1000.00, '2021-07-20', '2025-07-20', 'Active'),
(8, 'Bank of America', '8901234589012345', 'Visa', 8000.00, 5000.00, '2021-08-25', '2025-08-25', 'Inactive'),
(9, 'Chase', '9012345690123456', 'MasterCard', 6000.00, 2500.00, '2021-09-10', '2025-09-10', 'Active'),
(10, 'Wells Fargo', '0123456701234567', 'Visa', 11000.00, 1000.00, '2021-10-05', '2025-10-05', 'Inactive'),
(11, 'Citibank', '1234567812345679', 'MasterCard', 4000.00, 500.00, '2021-11-15', '2025-11-15', 'Active'),
(12, 'Capital One', '2345678923456780', 'Visa', 5000.00, 1500.00, '2021-12-20', '2025-12-20', 'Active'),
(13, 'Discover', '3456789034567891', 'Discover', 9000.00, 3000.00, '2021-01-25', '2025-01-25', 'Inactive'),
(14, 'American Express', '4567890145678902', 'AmEx', 2500.00, 1500.00, '2021-02-10', '2025-02-10', 'Inactive'),
(15, 'Bank of America', '5678901256789013', 'Visa', 6500.00, 2000.00, '2021-03-05', '2025-03-05', 'Active'),
(16, 'Chase', '6789012367890124', 'MasterCard', 3500.00, 1000.00, '2021-04-15', '2025-04-15', 'Inactive'),
(17, 'Wells Fargo', '7890123478901235', 'Visa', 7000.00, 3000.00, '2021-05-20', '2025-05-20', 'Active'),
(18, 'Citibank', '8901234589012346', 'MasterCard', 2000.00, 1000.00, '2021-06-25', '2025-06-25', 'Active'),
(19, 'Capital One', '9012345690123457', 'Visa', 4000.00, 2500.00, '2021-07-10', '2025-07-10', 'Inactive'),
(20, 'Discover', '0123456701234568', 'Discover', 7500.00, 5000.00, '2021-08-05', '2025-08-05', 'Active'),
(21, 'American Express', '1234567812345670', 'AmEx', 8000.00, 500.00, '2021-09-15', '2025-09-15', 'Active'),
(22, 'Bank of America', '2345678923456781', 'Visa', 2500.00, 1000.00, '2021-10-20', '2025-10-20', 'Inactive'),
(23, 'Chase', '3456789034567892', 'MasterCard', 4500.00, 2000.00, '2021-11-25', '2025-11-25', 'Active'),
(24, 'Wells Fargo', '4567890145678903', 'Visa', 5500.00, 3000.00, '2021-12-10', '2025-12-10', 'Inactive'),
(25, 'Citibank', '5678901256789014', 'MasterCard', 12000.00, 500.00, '2021-01-05', '2025-01-05', 'Active'),
(26, 'Capital One', '6789012367890125', 'Visa', 3000.00, 1500.00, '2021-02-15', '2025-02-15', 'Active'),
(27, 'Discover', '7890123478901236', 'Discover', 3500.00, 2000.00, '2021-03-20', '2025-03-20', 'Inactive'),
(28, 'American Express', '8901234589012347', 'AmEx', 4000.00, 5000.00, '2021-04-25', '2025-04-25', 'Active'),
(29, 'Bank of America', '9012345690123458', 'Visa', 13000.00, 1000.00, '2021-05-10', '2025-05-10', 'Inactive'),
(30, 'Chase', '0123456701234569', 'MasterCard', 5000.00, 2000.00, '2021-06-05', '2025-06-05', 'Active'),
(31, 'Wells Fargo', '1234567812345671', 'Visa', 5500.00, 3000.00, '2021-07-15', '2025-07-15', 'Active'),
(32, 'Citibank', '2345678923456782', 'MasterCard', 6000.00, 1000.00, '2021-08-20', '2025-08-20', 'Inactive'),
(33, 'Capital One', '3456789034567893', 'Visa', 11000.00, 500.00, '2021-09-25', '2025-09-25', 'Inactive'),
(34, 'Discover', '4567890145678904', 'Discover', 2000.00, 1500.00, '2021-10-10', '2025-10-10', 'Inactive'),
(35, 'American Express', '5678901256789015', 'AmEx', 7000.00, 2000.00, '2021-11-05', '2025-11-05', 'Active'),
(36, 'Bank of America', '6789012367890126', 'Visa', 8000, 2000.00, '2021-11-25', '2025-11-15', 'Active');

CREATE TABLE Offers (
    OfferID INT AUTO_INCREMENT PRIMARY KEY,
    BankName VARCHAR(50),
    OfferTitle VARCHAR(100),
    OfferDescription TEXT,
    StartDate DATE,
    EndDate DATE,
    OfferType VARCHAR(20)
);


INSERT INTO Offers (BankName, OfferTitle, OfferDescription, StartDate, EndDate, OfferType)
VALUES
('Bank of America', 'Cashback on Dining', 'Get 10% cashback on dining expenses.', '2024-01-01', '2024-12-31', 'Cashback'),
('Chase', 'Travel Rewards', 'Earn double points on all travel purchases.', '2024-02-01', '2024-11-30', 'Rewards'),
('Wells Fargo', 'Low-Interest Loans', 'Enjoy low interest rates on personal loans.', '2024-03-01', '2024-09-30', 'Loan'),
('Citibank', 'Zero Fee Balance Transfer', 'Transfer your balance with zero fees.', '2024-04-01', '2024-10-31', 'Balance Transfer'),
('Capital One', 'Free Credit Score Monitoring', 'Get free credit score monitoring with our credit cards.', '2024-05-01', '2024-12-31', 'Credit Monitoring'),
('Discover', 'Student Loan Discount', 'Get a 0.25% interest rate reduction on student loans.', '2024-06-01', '2024-12-31', 'Loan'),
('American Express', 'Membership Rewards', 'Earn extra membership rewards on every purchase.', '2024-07-01', '2024-12-31', 'Rewards'),
('Bank of America', 'Travel Insurance', 'Complimentary travel insurance on booking through our portal.', '2024-01-01', '2024-12-31', 'Insurance'),
('Chase', 'Double Points on Groceries', 'Earn double points on all grocery purchases.', '2024-02-01', '2024-12-31', 'Rewards'),
('Wells Fargo', 'No Annual Fee', 'Enjoy no annual fees on select credit cards.', '2024-03-01', '2024-12-31', 'Fee Waiver'),
('Citibank', 'Home Loan Offer', 'Get a special rate on home loans.', '2024-04-01', '2024-09-30', 'Loan'),
('Capital One', 'Auto Loan Discount', 'Get a 0.5% interest rate discount on auto loans.', '2024-05-01', '2024-11-30', 'Loan'),
('Discover', 'Cashback Match', 'We’ll match all the cash back you’ve earned at the end of your first year.', '2024-06-01', '2024-12-31', 'Cashback'),
('American Express', 'Dining Rewards', 'Earn 5x points on dining.', '2024-07-01', '2024-12-31', 'Rewards'),
('Bank of America', 'Intro APR Offer', '0% intro APR for 15 months on purchases.', '2024-01-01', '2024-12-31', 'APR'),
('Chase', 'Bonus Miles', 'Earn 50,000 bonus miles after spending $3,000 in the first 3 months.', '2024-02-01', '2024-12-31', 'Miles'),
('Wells Fargo', 'Small Business Loan', 'Special rates on small business loans.', '2024-03-01', '2024-12-31', 'Loan'),
('Citibank', 'Online Banking Offer', 'Get $300 when you open a new online checking account.', '2024-04-01', '2024-12-31', 'Account Opening'),
('Capital One', 'High Yield Savings', 'Earn 2.5% APY on your savings.', '2024-05-01', '2024-12-31', 'Savings'),
('Discover', 'Travel Credit', 'Get $100 travel credit when you spend $500 on travel.', '2024-06-01', '2024-12-31', 'Travel'),
('American Express', 'Retail Rewards', 'Earn extra points at select retail stores.', '2024-07-01', '2024-12-31', 'Rewards'),
('Bank of America', 'Mortgage Refinance', 'Special rates on mortgage refinancing.', '2024-01-01', '2024-12-31', 'Loan'),
('Chase', 'No Foreign Transaction Fee', 'No foreign transaction fees on purchases abroad.', '2024-02-01', '2024-12-31', 'Fee Waiver'),
('Wells Fargo', 'Personal Loan Offer', 'Low rates on personal loans.', '2024-03-01', '2024-12-31', 'Loan'),
('Citibank', 'College Savings Plan', 'Get up to $500 bonus when you open a new college savings plan.', '2024-04-01', '2024-12-31', 'Savings'),
('Capital One', 'Holiday Cashback', 'Earn 5% cashback on holiday shopping.', '2024-05-01', '2024-12-31', 'Cashback'),
('Discover', 'Mobile Banking Offer', 'Get $50 when you use our mobile banking app.', '2024-06-01', '2024-12-31', 'Account Opening'),
('American Express', 'Gas Rewards', 'Earn 3x points on gas purchases.', '2024-07-01', '2024-12-31', 'Rewards'),
('Bank of America', 'Student Account Offer', 'No monthly fees on student accounts.', '2024-01-01', '2024-12-31', 'Fee Waiver'),
('Chase', 'Home Equity Loan', 'Special rates on home equity loans.', '2024-02-01', '2024-12-31', 'Loan'),
('Wells Fargo', 'Credit Card Signup Bonus', 'Earn $200 bonus after spending $500 in the first 3 months.', '2024-03-01', '2024-12-31', 'Bonus'),
('Citibank', 'Travel Insurance', 'Complimentary travel insurance with select credit cards.', '2024-04-01', '2024-12-31', 'Insurance'),
('Capital One', 'Refer a Friend', 'Earn $100 for each friend you refer who opens a new account.', '2024-05-01', '2024-12-31', 'Referral'),
('Discover', 'Balance Transfer Offer', '0% intro APR on balance transfers for 18 months.', '2024-06-01', '2024-12-31', 'Balance Transfer'),
('American Express', 'Hotel Rewards', 'Earn 5x points on hotel stays.', '2024-07-01', '2024-12-31', 'Rewards'),
('Bank of America', 'New Account Bonus', 'Earn $300 when you open a new checking account.', '2024-01-01', '2024-12-31', 'Account Opening'),
('Chase', 'Savings Account Offer', 'Earn 2.0% APY on new savings accounts.', '2024-02-01', '2024-12-31', 'Savings'),
('Wells Fargo', 'Car Loan Discount', 'Get 0.25% off your car loan rate.', '2024-03-01', '2024-12-31', 'Loan'),
('Citibank', 'Dining Cashback', 'Earn 5% cashback on dining.', '2024-04-01', '2024-12-31', 'Cashback'),
('Capital One', 'Student Loan Offer', 'Get a 0.5% interest rate discount on student loans.', '2024-05-01', '2024-12-31', 'Loan'),
('Discover', 'Cashback on Utilities', 'Earn 3% cashback on utility bills.', '2024-06-01', '2024-12-31', 'Cashback'),
('American Express', 'Free Airport Lounge Access', 'Enjoy free access to airport lounges.', '2024-07-01', '2024-12-31', 'Travel'),
('Bank of America', 'Mobile Deposit Bonus', 'Get $50 when you deposit a check using our mobile app.', '2024-01-01', '2024-12-31', 'Bonus'),
('Chase', 'Home Improvement Loan', 'Special rates on home improvement loans.', '2024-02-01', '2024-12-31', 'Loan'),
('Wells Fargo', 'Overdraft Protection', 'No overdraft fees for 6 months.', '2024-03-01', '2024-12-31', 'Fee Waiver'),
('Citibank', 'Low-Interest Credit Card', 'Low interest rates on new credit cards.', '2024-04-01', '2024-12-31', 'Credit Card'),
('Capital One', 'Travel Rewards', 'Earn 3x points on travel purchases.', '2024-05-01', '2024-12-31', 'Rewards'),
('Discover', 'Online Bill Pay Bonus', 'Get $25 when you pay your bills online.', '2024-06-01', '2024-12-31', 'Bonus'),
('American Express', 'Exclusive Concert Tickets', 'Get exclusive access to concert tickets.', '2024-07-01', '2024-12-31', 'Entertainment');

select * from creditcard;
select * from loan;
select * from offers;
select * from customers;

#1: Customers having more Money than Average Balance

Select customers.FirstName, customers.LastName from customers
where customers.Balance > 2000;

#2: Find Customers First Name & Last Name, whose loan is approved or pending and loan type.

Select customers.FirstName, customers.LastName, loan.loanType, loan.LoanStatus
from customers left join loan on
customers.CustomerID = loan.CustomerID;

#3: Find Customers whose having Minimum Balance and who should be eligible for loan or not

Select customers.FirstName, customers.LastName, customers.Balance,
case 
   when customers.Balance > 1500 then 'eligible'
   else 'Not eligible'
end as criteria
from customers;

#4: Customers who has taken loan check whether they hold credit card or not , if yes then what are the offers going on them check it.

select * from customers;
select * from loan;
select * from creditcard;
select * from offers;

Select customers.FirstName, customers.LastName, loan.LoanStatus
from customers left join loan on
customers.CustomerID = loan.CustomerID
union
Select creditcard.CardType, creditcard.Status, offers.OfferTitle, Offers.OfferType
From creditcard right join offers on
creditcard.CustomerID = offers.OfferID;

Select customers.FirstName, customers.LastName, loan.LoanStatus, creditcard.CardType, creditcard.Status, offers.OfferTitle, Offers.OfferType
from customers left join loan on
customers.CustomerID = loan.CustomerID
left join
creditcard on
loan.CustomerID = creditcard.CustomerID
left join offers on 
creditcard.CustomerID = offers.OfferID;

#5: The Cutomers whos has taken credit card, what is their minimum balance.

Select customers.Firstname, customers.LastName, creditcard.Balance, creditcard.Status
from customers Join creditcard on 
customers.CustomerID = creditcard.CustomerID;

#6: Average balance having Customers only going to get credit card, if eligible balance is less then customer will not get loan

select customers.FirstName, customers.LastName, Customers.Balance,
case 
   when customers.Balance > 2000 then 'eligible'
   else 'Not eligible'
end as 'criteria for creditcard',
case 
   when customers.Balance > 2000 then 'eligible'
   else 'Not eligible'
end as 'criteria for Loan'
from customers;

#7: Which cutomers has highest balance do they have credit cardsand what is loan amount they have taken. It is Pending or repaid

Select customers.FirstName, customers.LastName, max(customers.Balance), creditcard.Status, loan.LoanStatus
from customers left join creditcard on 
customers.CustomerID = creditcard.CustomerID
left join loan on 
customers.CustomerID = loan.CustomerID
group by customers.FirstName, customers.LastName, creditcard.Status, loan.LoanStatus having max(customers.balance) > 3000;


select c.FirstName, c.LastName,cc.Status, l.LoanStatus,max(c.Balance)  from customers c 
left join creditcard cc 
on c.CustomerID = cc.CustomerID 
left join loan l on cc.CustomerID = l.CustomerID
group by c.FirstName, c.LastName,cc.Status, l.LoanStatus Having max(c.Balance) > 3000 ;

Select customers.FirstName, customers.LastName, avg(customers.Balance)
from customers;

# Sub Queries

select * from customers where customers.Balance > (select avg(customers.Balance) from customers);

select * from customers where customers.Balance < (select avg(customers.Balance) from customers);

# Sub Queries in operator

select * from customers
where CustomerID in (select CustomerID from customers where customers.Balance > 2000);



