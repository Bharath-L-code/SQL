use bharath;

-- 1. Create the show_room table
CREATE TABLE show_room (
    showroom_id INT NOT NULL UNIQUE,
    showroom_name VARCHAR(100) NOT NULL,
    location VARCHAR(100),
    contact_number VARCHAR(15) UNIQUE,
    opening_hours VARCHAR(50),
    manager_name VARCHAR(100),
    established_year INT CHECK (established_year > 1900),
    total_employees INT CHECK (total_employees >= 0),
    services_offered VARCHAR(255),
    rating INT CHECK (rating >= 0 AND rating <= 5)  -- Rating as an integer
);

-- 2. Create the chat_center table
CREATE TABLE chat_center (
    center_id INT NOT NULL UNIQUE,
    center_name VARCHAR(100) NOT NULL,
    location VARCHAR(100),
    contact_number VARCHAR(15) UNIQUE,
    opening_hours VARCHAR(50),
    manager_name VARCHAR(100),
    established_year INT CHECK (established_year > 1900),
    total_agents INT CHECK (total_agents >= 0),
    services_offered VARCHAR(255),
    rating INT CHECK (rating >= 0 AND rating <= 5)  -- Rating as an integer
);

-- 3. Create the temple_info table
CREATE TABLE temple_info (
    temple_id INT NOT NULL UNIQUE,
    temple_name VARCHAR(100) NOT NULL,
    location VARCHAR(100),
    deity_name VARCHAR(100),
    established_year INT CHECK (established_year > 0),
    timings VARCHAR(50),
    contact_number VARCHAR(15) UNIQUE,
    total_priests INT CHECK (total_priests >= 0),
    annual_festivals VARCHAR(255),
    visitor_capacity INT CHECK (visitor_capacity > 0)
);

-- 4. Create the market_info table
CREATE TABLE market_info (
    market_id INT NOT NULL UNIQUE,
    market_name VARCHAR(100) NOT NULL,
    location VARCHAR(100),
    contact_number VARCHAR(15) UNIQUE,
    opening_hours VARCHAR(50),
    total_shops INT CHECK (total_shops >= 0),
    types_of_goods VARCHAR(255),
    established_year INT CHECK (established_year > 1900),
    weekly_footfall INT CHECK (weekly_footfall >= 0),
    rating INT CHECK (rating >= 0 AND rating <= 5)  -- Rating as an integer
);

-- 5. Create the metro_info table
CREATE TABLE metro_info (
    metro_id INT NOT NULL UNIQUE,
    metro_name VARCHAR(100) NOT NULL,
    location VARCHAR(100),
    contact_number VARCHAR(15) UNIQUE,
    established_year INT CHECK (established_year > 1900),
    total_lines INT CHECK (total_lines > 0),
    total_stations INT CHECK (total_stations > 0),
    daily_passengers INT CHECK (daily_passengers >= 0),
    operating_hours VARCHAR(50),
    fare_structure VARCHAR(255)
);

-- 1. Insert data into the show_room table
INSERT INTO show_room (showroom_id, showroom_name, location, contact_number, opening_hours, manager_name, established_year, total_employees, services_offered, rating) VALUES
(1, 'Bangalore Motors', 'MG Road', '08012345678', '9 AM - 9 PM', 'Rajesh Kumar', 2010, 50, 'Car Sales', 4),
(2, 'Karnataka Electronics', 'Jayanagar', '08087654321', '10 AM - 8 PM', 'Anita Rao', 2012, 30, 'Electronics', 5),
(3, 'Bangalore Furniture Hub', 'Indiranagar', '08023456789', '10 AM - 7 PM', 'Suresh Reddy', 2015, 25, 'Furniture', 4),
(4, 'Sankalp Auto', 'Koramangala', '08034567890', '9 AM - 8 PM', 'Vikram Singh', 2011, 40, 'Automobile Sales', 3),
(5, 'Royal Appliances', 'Ulsoor', '08045678901', '10 AM - 6 PM', 'Pooja Menon', 2014, 20, 'Home Appliances', 4),
(6, 'Trendy Fashion Store', 'Brigade Road', '08056789012', '11 AM - 9 PM', 'Nisha Soni', 2013, 15, 'Fashion & Clothing', 5),
(7, 'Gadget World', 'Whitefield', '08067890123', '10 AM - 8 PM', 'Amit Verma', 2016, 22, 'Gadgets', 4),
(8, 'Bangalore Cycle Store', 'Malleshwaram', '08078901234', '9 AM - 6 PM', 'Ravi Kumar', 2012, 10, 'Bicycles', 4),
(9, 'Home Decor Center', 'BTM Layout', '08089012345', '10 AM - 8 PM', 'Swati Sharma', 2015, 18, 'Home Decor', 5),
(10, 'Classic Motors', 'Wilson Garden', '08090123456', '10 AM - 9 PM', 'Nitin Joshi', 2011, 45, 'Car Sales', 4),
(11, 'Bangalore Kitchen Supplies', 'HSR Layout', '08001234567', '9 AM - 7 PM', 'Deepa Nair', 2010, 20, 'Kitchen Supplies', 5),
(12, 'Pet Paradise', 'Sadashivanagar', '08012345789', '10 AM - 8 PM', 'Arjun K', 2013, 15, 'Pet Supplies', 4),
(13, 'Kids Play Zone', 'Jayanagar', '08012345890', '10 AM - 9 PM', 'Leela Devi', 2012, 25, 'Kids Toys', 5),
(14, 'Art Gallery Bangalore', 'Kengeri', '08012345901', '10 AM - 6 PM', 'Bhargav Rao', 2014, 5, 'Art & Crafts', 3),
(15, 'Books N More', 'Indiranagar', '08012345012', '9 AM - 8 PM', 'Vinay S', 2011, 30, 'Books', 5),
(16, 'Luxury Cars Showroom', 'Bannerghatta Road', '08012345123', '10 AM - 9 PM', 'Chandra B', 2015, 35, 'Luxury Cars', 4),
(17, 'Gourmet Food Shop', 'Kumaraswamy Layout', '08012345234', '10 AM - 8 PM', 'Rashmi P', 2012, 12, 'Gourmet Foods', 5),
(18, 'Fitness Gear Store', 'HSR Layout', '08012345345', '9 AM - 7 PM', 'Rajiv M', 2013, 20, 'Sports & Fitness', 4),
(19, 'Mobile World', 'Malleswaram', '08012345456', '10 AM - 8 PM', 'Siddharth P', 2010, 25, 'Mobile Phones', 5),
(20, 'Bangalore Optical Center', 'Koramangala', '08012345567', '10 AM - 6 PM', 'Sandeep A', 2014, 15, 'Optical Goods', 4);

-- 2. Insert data into the chat_center table
INSERT INTO chat_center (center_id, center_name, location, contact_number, opening_hours, manager_name, established_year, total_agents, services_offered, rating) VALUES
(1, 'Bangalore Chat Support', 'MG Road', '08022345678', '24/7', 'Anu Singh', 2018, 50, 'Customer Support', 4),
(2, 'Tech Help Center', 'Jayanagar', '08087654322', '9 AM - 9 PM', 'Rahul Jain', 2019, 30, 'Technical Support', 5),
(3, 'E-commerce Helpdesk', 'Indiranagar', '08023456790', '10 AM - 10 PM', 'Meera R', 2017, 20, 'E-commerce Support', 4),
(4, 'Travel Assistance Center', 'Koramangala', '08034567891', '9 AM - 9 PM', 'Karan P', 2020, 25, 'Travel Support', 3),
(5, 'Billing Inquiry Chat', 'BTM Layout', '08045678902', '10 AM - 8 PM', 'Nisha T', 2019, 18, 'Billing Support', 4),
(6, 'Healthcare Chat Support', 'Brigade Road', '08056789013', '24/7', 'Vinod K', 2018, 15, 'Healthcare Support', 5),
(7, 'Insurance Help Center', 'Whitefield', '08067890124', '9 AM - 9 PM', 'Ravi R', 2020, 22, 'Insurance Support', 4),
(8, 'Education Chat Help', 'Malleshwaram', '08078901235', '10 AM - 8 PM', 'Suman S', 2019, 20, 'Education Support', 5),
(9, 'Finance Support Center', 'Jayanagar', '08089012346', '10 AM - 8 PM', 'Pallavi M', 2017, 10, 'Financial Support', 4),
(10, 'Tech Support Chat', 'HSR Layout', '08090123457', '9 AM - 9 PM', 'Raj K', 2018, 40, 'Tech Support', 4),
(11, 'E-commerce Query Center', 'Kengeri', '08001234568', '10 AM - 8 PM', 'Aditi S', 2016, 25, 'E-commerce Queries', 5),
(12, 'Logistics Support Center', 'Sadashivanagar', '08012345789', '24/7', 'Arjun V', 2020, 15, 'Logistics Support', 4),
(13, 'Digital Marketing Help', 'Koramangala', '08012345890', '10 AM - 8 PM', 'Nandita K', 2018, 20, 'Marketing Support', 5),
(14, 'Home Services Chat', 'BTM Layout', '08012345901', '9 AM - 9 PM', 'Deepak K', 2019, 15, 'Home Services', 4),
(15, 'Automobile Support Center', 'Indiranagar', '08012345012', '10 AM - 7 PM', 'Vinay D', 2020, 10, 'Automobile Queries', 5),
(16, 'Customer Feedback Center', 'Brigade Road', '08012345123', '9 AM - 9 PM', 'Siddharth A', 2018, 30, 'Feedback Support', 4),
(17, 'Telecom Help Center', 'Malleswaram', '08012345234', '10 AM - 8 PM', 'Preeti S', 2019, 20, 'Telecom Support', 5),
(18, 'Online Booking Chat', 'Bannerghatta Road', '08012345345', '10 AM - 8 PM', 'Rajesh N', 2020, 15, 'Booking Support', 4),
(19, 'Food Delivery Help', 'HSR Layout', '08012345456', '10 AM - 8 PM', 'Anita G', 2019, 20, 'Food Support', 5),
(20, 'Retail Customer Support', 'Koramangala', '08012345567', '9 AM - 9 PM', 'Srinivas R', 2018, 30, 'Retail Support', 4);

-- 3. Insert data into the temple_info table
INSERT INTO temple_info (temple_id, temple_name, location, deity_name, established_year, timings, contact_number, total_priests, annual_festivals, visitor_capacity) VALUES
(1, 'ISKCON Temple', 'Rajajinagar', 'Sri Krishna',1978, '4 AM - 8 PM', '08022223333', 15, 'Janmashtami', 500),
(2, 'Bull Temple', 'Basavanagudi', 'Nandi',1964, '6 AM - 8 PM', '08033334444', 10, 'Nandi Festival', 300),
(3, 'Shivoham Shiva Temple', 'Ulsoor','Lord Shiva',2000, '6 AM - 9 PM', '08044445555', 8, 'Maha Shivaratri', 200),
(4, 'Malleswaram Sri Srinivasa Temple', 'Malleswaram','Lord Venkateshwara',1969, '6 AM - 8 PM', '08055556666', 12, 'Vaikunta Ekadasi', 400),
(5, 'Gavi Gangadhareshwara Temple', 'Basavanagudi','Lord Shiva', 1225,'6 AM - 8 PM', '08066667777', 6, 'Maha Shivaratri', 250),
(6, 'Sankey Tank Ganesh Temple', 'Sankey Tank','Lord Ganesha',1985, '5 AM - 10 PM', '08077778888', 5, 'Ganesh Chaturthi', 150),
(7, 'Kottigehara Shiva Temple', 'Kottigehara','Lord Shiva',1980, '6 AM - 9 PM', '08088889999', 4, 'Shivaratri', 100),
(8, 'Someshwara Temple', 'Ulsoor', 'Lord Shiva',1947, '6 AM - 9 PM','08099990000', 10, 'Shivaratri', 300),
(9, 'Sri Chennakeshava Temple', 'Bangalore','Lord Chennakeshava',1960,'6 AM - 8 PM', '08000001111', 8, 'Karthika Masa', 350),
(10, 'Vijayanagar Sri Krishna Temple', 'Vijayanagar','Sri Krishna',1995, '6 AM - 8 PM', '08011112222', 10, 'Janmashtami', 500),
(11, 'Mysore Zoo Ganesh Temple', 'Mysore Road', 'Lord Ganesha',1995, '6 AM - 9 PM', '08022224444', 5, 'Ganesh Chaturthi', 150),
(12, 'Karnataka State Ganesh Temple', 'JP Nagar','Lord Ganesha',1990, '6 AM - 8 PM', '08033335555', 7, 'Ganesh Chaturthi', 200),
(13, 'Anjaneya Temple', 'Bangalore','Lord Hanuman',1988, '6 AM - 9 PM', '08044446666', 5, 'Hanuman Jayanti', 100),
(14, 'Sri Lakshmi Narayana Temple', 'Bangalore','Lord Vishnu',1985, '6 AM - 8 PM', '08055557777', 10, 'Vaikunta Ekadasi', 400),
(15, 'Kalyana Kendra Temple', 'Bangalore','Lord Shiva',1998 ,'6 AM - 8 PM', '08066668888', 8, 'Maha Shivaratri', 300),
(16, 'Basavanagudi Nagappa Temple', 'Basavanagudi', 'Nagappa',1980,'6 AM - 9 PM', '08077779999', 4, 'Nagappa Jayanti', 200),
(17, 'Sri Raghavendra Swamy Temple', 'Malleswaram','Sri Raghavendra',1970, '6 AM - 8 PM', '08088880000', 10, 'Guru Poornima', 350),
(18, 'Halasuru Someshwara Temple', 'Halasuru',  'Lord Shiva',2005, '6 AM - 9 PM', '08099991111', 6, 'Shivaratri', 200),
(19, 'Kothanur Venkateshwara Temple', 'Kothanur',  'Lord Venkateshwara',1980, '6 AM - 9 PM', '08000002222', 8, 'Vaikunta Ekadasi', 300),
(20, 'Vasavi Temple', 'Yeshwanthpur',  'Vasavi',1990, '6 AM - 8 PM', '08011113333', 5, 'Vasavi Jayanti', 150);


-- 4. Insert data into the market_info table
INSERT INTO market_info (market_id, market_name, location, contact_number, opening_hours, total_shops, types_of_goods, established_year, weekly_footfall, rating) VALUES
(1, 'Brigade Road Market', 'Brigade Road', '08022334455', '10 AM - 10 PM', 50, 'Clothing, Accessories', 2005, 7000, 4),
(2, 'Jayanagar 4th Block Market', 'Jayanagar', '08087654323', '10 AM - 9 PM', 60, 'Food, Clothing', 2010, 8000, 5),
(3, 'KR Market', 'Kr Market', '08023456791', '6 AM - 10 PM', 80, 'Vegetables, Flowers', 1990, 12000, 5),
(4, 'Chickpet Market', 'Chickpet', '08034567892', '9 AM - 9 PM', 70, 'Textiles, Clothing', 1980, 9000, 4),
(5, 'Indiranagar Market', 'Indiranagar', '08045678903', '10 AM - 8 PM', 40, 'Food, Fashion', 2012, 6000, 5),
(6, 'Ulsoor Market', 'Ulsoor', '08056789014', '10 AM - 8 PM', 30, 'Food, Groceries', 2015, 5000, 4),
(7, 'BTM Layout Market', 'BTM Layout', '08067890125', '10 AM - 10 PM', 25, 'Food, Handicrafts', 2016, 4500, 5),
(8, 'Shivaji Nagar Market', 'Shivaji Nagar', '08078901236', '10 AM - 9 PM', 35, 'Electronics, Clothing', 2008, 6000, 4),
(9, 'Malleshwaram Market', 'Malleshwaram', '08089012347', '10 AM - 8 PM', 40, 'Food, Clothing', 2010, 5000, 5),
(10, 'Koramangala Market', 'Koramangala', '08090123458', '10 AM - 9 PM', 45, 'Food, Fashion', 2011, 7000, 4),
(11, 'Bannerghatta Road Market', 'Bannerghatta Road', '08001234569', '10 AM - 10 PM', 55, 'Grocery, Clothing', 2015, 7500, 5),
(12, 'Sankey Tank Market', 'Sankey Tank', '08022334466', '10 AM - 8 PM', 25, 'Food, Drinks', 2019, 3000, 4),
(13, 'Kengeri Market', 'Kengeri', '08087654324', '10 AM - 8 PM', 30, 'Food, Groceries', 2018, 3500, 5),
(14, 'Vijayanagar Market', 'Vijayanagar', '08023456792', '10 AM - 9 PM', 45, 'Food, Electronics', 2016, 4000, 4),
(15, 'Krishnarajendra Market', 'Krishnarajendra', '08034567893', '10 AM - 10 PM', 50, 'Clothing, Accessories', 2014, 5000, 5),
(16, 'Shanthinagar Market', 'Shanthinagar', '08045678904', '10 AM - 9 PM', 35, 'Food, Handicrafts', 2015, 6000, 4),
(17, 'Indiranagar 100 Feet Road Market', 'Indiranagar', '08056789015', '10 AM - 8 PM', 60, 'Food, Fashion', 2011, 8000, 5),
(18, 'Hosur Road Market', 'Hosur Road', '08067890126', '10 AM - 9 PM', 40, 'Food, Electronics', 2019, 5500, 4),
(19, 'Raja Market', 'Raja Market', '08078901237', '10 AM - 9 PM', 30, 'Groceries, Vegetables', 2010, 4500, 5),
(20, 'Yeshwanthpur Market', 'Yeshwanthpur', '08089012348', '10 AM - 10 PM', 50, 'Food, Fashion', 2012, 7000, 4);

-- 5. Insert data into the metro_info table
-- Inserting data for Delhi and Bangalore Metro together
INSERT INTO metro_info (metro_id, metro_name, location, contact_number, established_year, total_lines, total_stations, daily_passengers, operating_hours, fare_structure) VALUES
(1, 'Delhi Metro Red Line', 'Rithala', '01123456789', 2002, 1, 29, 750000, '5 AM - 11 PM', 'Minimum: 10 INR'),
(2, 'Delhi Metro Yellow Line', 'Sikander Pur', '01112345678', 2005, 1, 37, 800000, '5 AM - 11 PM', 'Minimum: 10 INR'),
(3, 'Delhi Metro Blue Line', 'Dwarka Sector 21', '01123456780', 2010, 1, 50, 900000, '5 AM - 11 PM', 'Minimum: 15 INR'),
(4, 'Delhi Metro Pink Line', 'Shiv Vihar', '01134567890', 2018, 1, 38, 500000, '5 AM - 11 PM', 'Minimum: 10 INR'),
(5, 'Delhi Metro Magenta Line', 'Janakpuri West', '01145678901', 2019, 1, 25, 300000, '5 AM - 11 PM', 'Minimum: 20 INR'),
(6, 'Delhi Metro Airport Express', 'New Delhi Airport', '01156789012', 2010, 1, 6, 100000, '4:45 AM - 11:30 PM', 'Minimum: 60 INR'),
(7, 'Delhi Metro Green Line', 'Kirti Nagar', '01167890123', 2016, 1, 17, 200000, '5 AM - 11 PM', 'Minimum: 15 INR'),
(8, 'Delhi Metro Violet Line', 'Kashmere Gate', '01189012345', 2010, 1, 32, 600000, '5 AM - 11 PM', 'Minimum: 15 INR'),
(9, 'Delhi Metro Grey Line', 'Delhi Cantonment', '01190123456', 2021, 1, 15, 150000, '5 AM - 11 PM', 'Minimum: 20 INR'),
(10, 'Delhi Metro Gold Line', 'Mundka', '01101234567', 2023, 1, 10, 120000, '5 AM - 11 PM', 'Minimum: 10 INR'),
(11, 'Namma Metro', 'Bangalore', '08022334477', 2011, 2, 61, 500000, '5 AM - 11 PM', 'Minimum: 10 INR'),
(12, 'Bangalore Metro Blue Line', 'Mysore Road', '08087654325', 2016, 1, 18, 300000, '5 AM - 11 PM', 'Minimum: 15 INR'),
(13, 'Bangalore Metro Green Line', 'Yelachenahalli', '08023456793', 2017, 1, 24, 400000, '5 AM - 11 PM', 'Minimum: 10 INR'),
(14, 'Bangalore Metro Purple Line', 'Baiyappanahalli', '08034567894', 2018, 1, 14, 200000, '5 AM - 11 PM', 'Minimum: 15 INR'),
(15, 'Namma Metro Expansion', 'Electronic City', '08045678905', 2019, 1, 20, 250000, '5 AM - 11 PM', 'Minimum: 10 INR'),
(16, 'Bangalore Metro Whitefield Line', 'Whitefield', '08056789016', 2020, 1, 16, 180000, '5 AM - 11 PM', 'Minimum: 20 INR'),
(17, 'Bangalore Metro Outer Ring Line', 'Outer Ring Road', '08067890127', 2021, 1, 22, 150000, '5 AM - 11 PM', 'Minimum: 15 INR'),
(18, 'Bangalore Metro Hosur Road Line', 'Hosur Road', '08078901238', 2022, 1, 25, 160000, '5 AM - 11 PM', 'Minimum: 20 INR'),
(19, 'Bangalore Metro Bannerghatta Line', 'Bannerghatta', '08089012349', 2023, 1, 19, 120000, '5 AM - 11 PM', 'Minimum: 10 INR'),
(20, 'Bangalore Metro Kempegowda Line', 'MG Road', '08090123460', 2024, 1, 15, 300000, '5 AM - 11 PM', 'Minimum: 10 INR');


-- 1. Alter show_room table
ALTER TABLE show_room
ADD CONSTRAINT showroom_name_unique UNIQUE (showroom_name);

ALTER TABLE show_room
MODIFY total_employees INT NOT NULL;

ALTER TABLE show_room
ADD CONSTRAINT check_servicess CHECK (services_offered IN ('Car Sales', 'Electronics', 'Furniture', 'Automobile Sales', 'Home Appliances', 'Fashion & Clothing', 'Gadgets', 'Bicycles', 'Home Decor', 'Kitchen Supplies', 'Pet Supplies', 'Kids Toys', 'Art & Crafts', 'Books', 'Luxury Cars', 'Gourmet Foods', 'Sports & Fitness', 'Mobile Phones', 'Optical Goods'));

ALTER TABLE show_room
ADD CONSTRAINT check_ratingg CHECK (rating BETWEEN 1 AND 5);

-- 2. Alter chat_center table
ALTER TABLE chat_center
ADD CONSTRAINT center_name_unique UNIQUE (center_name);

ALTER TABLE chat_center
MODIFY total_agents INT NOT NULL;

ALTER TABLE chat_center
ADD CONSTRAINT check_ratinggg CHECK (rating BETWEEN 1 AND 5);

-- 3. Alter temple_info table
ALTER TABLE temple_info
ADD CONSTRAINT temple_name_unique UNIQUE (temple_name);

ALTER TABLE temple_info
MODIFY timings VARCHAR(50) NOT NULL;

ALTER TABLE temple_info
ADD CONSTRAINT check_established_year CHECK (established_year <= 2024);

ALTER TABLE temple_info
ADD CONSTRAINT check_visitor_capacity CHECK (visitor_capacity >= 50 AND visitor_capacity <= 5000);

-- 4. Alter market_info table
ALTER TABLE market_info
ADD CONSTRAINT market_name_unique UNIQUE (market_name);

ALTER TABLE market_info
MODIFY total_shops INT NOT NULL;

ALTER TABLE market_info
ADD CONSTRAINT check_weekly_footfall CHECK (weekly_footfall >= 0);

ALTER TABLE market_info
ADD CONSTRAINT check_ratingggg CHECK (rating BETWEEN 1 AND 5);

-- 5. Alter metro_info table
ALTER TABLE metro_info
ADD CONSTRAINT metro_name_unique UNIQUE (metro_name);

ALTER TABLE metro_info
MODIFY daily_passengers INT NOT NULL;

ALTER TABLE metro_info
ADD CONSTRAINT check_total_lines CHECK (total_lines > 0);

ALTER TABLE metro_info
ADD CONSTRAINT check_fare_structure CHECK (fare_structure LIKE 'Minimum: % INR');