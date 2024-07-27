use bharath;

CREATE TABLE hospital_info (hospital_id INT,hospital_name VARCHAR(255),address VARCHAR(255),
    city VARCHAR(100),state VARCHAR(100),zip_code VARCHAR(20),
    phone_number VARCHAR(20),bed_count INT,specialty VARCHAR(100),rating INT);

CREATE TABLE tourist_places (place_id INT,place_name VARCHAR(255),location VARCHAR(255),
    city VARCHAR(100),state VARCHAR(100),zip_code VARCHAR(20),phone_number VARCHAR(20),
    entry_fee INT,opening_hours VARCHAR(50),rating INT);
    
    select * from hospital_info;
    
 insert into hospital_info values(1, 'Apollo Hospital', 'Bannerghatta Road', 'Bengaluru', 'Karnataka', '560076', '080-26304050', 250, 'Multi-speciality', 5);
 insert into hospital_info values(2, 'Fortis Hospital', 'Cunningham Road', 'Bengaluru', 'Karnataka', '560052', '080-66214444', 150, 'Cardiology', 4);
 insert into hospital_info values(3, 'Manipal Hospital', 'Old Airport Road', 'Bengaluru', 'Karnataka', '560017', '080-25024444', 300, 'Multi-speciality', 5);
 insert into hospital_info values(4, 'Columbia Asia Hospital', 'Hebbal', 'Bengaluru', 'Karnataka', '560024', '080-61656666', 200, 'Multi-speciality', 4);
 insert into hospital_info values(5, 'Narayana Health', 'Bommasandra', 'Bengaluru', 'Karnataka', '560099', '080-27835000', 1000, 'Cardiac Sciences', 5);
 insert into hospital_info values(6, 'Sakra World Hospital', 'Bellandur', 'Bengaluru', 'Karnataka', '560103', '080-49694969', 300, 'Orthopaedics', 4);
 insert into hospital_info values(7, 'Cloudnine Hospital', 'Jayanagar', 'Bengaluru', 'Karnataka', '560041', '080-67653200', 100, 'Maternity and Childcare', 5);
 insert into hospital_info values(8, 'Aster CMI Hospital', 'Hebbal', 'Bengaluru', 'Karnataka', '560024', '080-66040400', 500, 'Multi-speciality', 4);
 insert into hospital_info values(9, 'St. John''s Medical College Hospital', 'Koramangala', 'Bengaluru', 'Karnataka', '560034', '080-22065000', 1350, 'Multi-speciality', 5);
 insert into hospital_info values(10, 'BGS Gleneagles Global Hospital', 'Kengeri', 'Bengaluru', 'Karnataka', '560060', '080-26255555', 500, 'Multi-speciality', 4);
 insert into hospital_info values(11, 'Mallya Hospital', 'Vittal Mallya Road', 'Bengaluru', 'Karnataka', '560001', '080-22277979', 150, 'General Medicine', 4);
 insert into hospital_info values(12, 'Vikram Hospital', 'Millers Road', 'Bengaluru', 'Karnataka', '560052', '080-71004425', 225, 'Neurosciences', 4);
 insert into hospital_info values(13, 'Sparsh Hospital', 'Infantry Road', 'Bengaluru', 'Karnataka', '560001', '080-61222000', 300, 'Orthopaedics', 5);
 insert into hospital_info values(14, 'Ramaiah Memorial Hospital', 'MSR Nagar', 'Bengaluru', 'Karnataka', '560054', '080-23608888', 500, 'Multi-speciality', 4);
 insert into hospital_info values(15, 'Jayadeva Hospital', 'Bannerghatta Road', 'Bengaluru', 'Karnataka', '560029', '080-22977200', 600, 'Cardiology', 5);
 insert into hospital_info values(16, 'Bowring and Lady Curzon Hospital', 'Shivajinagar', 'Bengaluru', 'Karnataka', '560001', '080-25581515', 300, 'General Medicine', 4);
 insert into hospital_info values(17, 'Victoria Hospital', 'KR Market', 'Bengaluru', 'Karnataka', '560002', '080-26701150', 1000, 'Trauma and Emergency Care', 5);
 insert into hospital_info values(18, 'NIMHANS', 'Wilson Garden', 'Bengaluru', 'Karnataka', '560029', '080-26995000', 900, 'Mental Health and Neurosciences', 5);
 insert into hospital_info values(19, 'KC General Hospital', 'Malleshwaram', 'Bengaluru', 'Karnataka', '560003', '080-23442557', 200, 'General Medicine', 3);
 insert into hospital_info values(20, 'Sagar Hospitals', 'Jayanagar', 'Bengaluru', 'Karnataka', '560041', '080-42888888', 250, 'Multi-speciality', 4);


insert into tourist_places values (1, 'Mysore Palace', 'Sayyaji Rao Road', 'Mysore', 'Karnataka', '570001', '0821-2421051', 70, '10:00 AM - 5:30 PM', 5);
insert into tourist_places values(2, 'Coorg', 'Kodagu', 'Madikeri', 'Karnataka', '571201', NULL, 0, '24 Hours', 5);
insert into tourist_places values(3, 'Hampi', 'Hampi', 'Hospet', 'Karnataka', '583239', NULL, 40, '8:00 AM - 6:00 PM', 5);
insert into tourist_places values(4, 'Bandipur National Park', 'Bandipur', 'Chamarajanagar', 'Karnataka', '571126', '08229-233044', 300, '6:00 AM - 9:00 AM, 4:00 PM - 7:00 PM', 4);
insert into tourist_places values(5, 'Chikmagalur', 'Chikmagalur', 'Chikmagalur', 'Karnataka', '577101', NULL, 0, '24 Hours', 4);
insert into tourist_places values(6, 'Gokarna', 'Gokarna', 'Karwar', 'Karnataka', '581326', NULL, 0, '24 Hours', 5);
insert into tourist_places values(7, 'Belur and Halebidu', 'Belur', 'Hassan', 'Karnataka', '573115', NULL, 0, '6:00 AM - 6:00 PM', 4);
insert into tourist_places values(8, 'Jog Falls', 'Sagara', 'Shimoga', 'Karnataka', '577435', NULL, 0, '24 Hours', 4);
insert into tourist_places values(9, 'Badami', 'Badami', 'Bagalkot', 'Karnataka', '587201', NULL, 25, '9:00 AM - 5:00 PM', 4);
insert into tourist_places values(10, 'Nagarhole National Park', 'Nagarhole', 'Kodagu', 'Karnataka', '571114', '08274-246331', 200, '6:00 AM - 8:00 AM, 3:00 PM - 5:00 PM', 4);
insert into tourist_places values(11, 'Shravanabelagola', 'Shravanabelagola', 'Hassan', 'Karnataka', '573135', NULL, 0, '6:00 AM - 6:00 PM', 4);
insert into tourist_places values(12, 'Bijapur', 'Bijapur', 'Bijapur', 'Karnataka', '586101', NULL, 0, '24 Hours', 4);
insert into tourist_places values(13, 'Udupi', 'Udupi', 'Udupi', 'Karnataka', '576101', NULL, 0, '24 Hours', 4);
insert into tourist_places values(14, 'Murudeshwar', 'Murudeshwar', 'Bhatkal', 'Karnataka', '581350', NULL, 0, '24 Hours', 4);
insert into tourist_places values(15, 'Dandeli', 'Dandeli', 'Uttara Kannada', 'Karnataka', '581325', NULL, 0, '24 Hours', 4);
insert into tourist_places values(16, 'Kabini', 'Kabini', 'Mysore', 'Karnataka', '571114', NULL, 0, '24 Hours', 4);
insert into tourist_places values(17, 'Kudremukh', 'Kudremukh', 'Chikmagalur', 'Karnataka', '577142', NULL, 0, '24 Hours', 4);
insert into tourist_places values(18, 'Gol Gumbaz', 'Gol Gumbaz Road', 'Bijapur', 'Karnataka', '586104', '08352-250359', 15, '10:00 AM - 5:00 PM', 4);
insert into tourist_places values(19, 'Agumbe', 'Agumbe', 'Thirthahalli', 'Karnataka', '577411', NULL, 0, '24 Hours', 4);
insert into tourist_places values(20, 'Lalbagh Botanical Garden', 'Mavalli', 'Bengaluru', 'Karnataka', '560004', '080-26578184', 20, '6:00 AM - 7:00 PM', 4);

select * from tourist_places;

    
    