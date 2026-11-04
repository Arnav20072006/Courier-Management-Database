CREATE DATABASE if not exists FedExProject;
USE FedExProject;

SET SQL_SAFE_UPDATES = 0;

CREATE TABLE customers (
    customer_id INT PRIMARY KEY,
    customer_name VARCHAR(100) NOT NULL,
    email VARCHAR(100) UNIQUE,
    phone VARCHAR(15) NOT NULL,
    customer_type VARCHAR(20) NOT NULL,
    registration_date DATE NOT NULL,
    date_of_birth DATE,
    preferred_contact VARCHAR(20) DEFAULT 'Email'
);

INSERT INTO customers
(customer_id, customer_name, email, phone, customer_type, registration_date, date_of_birth, preferred_contact)
VALUES
(1, 'Aarav Sharma', 'aarav.sharma@gmail.com', '9876543210', 'Individual', '2024-01-15', '2002-06-18', 'Email'),
(2, 'Priya Mehta', 'priya.mehta@gmail.com', '9812345678', 'Individual', '2024-01-22', '1999-11-04', 'SMS'),
(3, 'Rohan Gupta', 'rohan.gupta@gmail.com', '9898765432', 'Individual', '2024-02-03', '2001-03-27', 'Phone'),
(4, 'Neha Kapoor', 'neha.kapoor@gmail.com', '9765432109', 'Individual', '2024-02-18', '2000-08-12', 'Email'),
(5, 'Vikram Singh', 'vikram.singh@gmail.com', '9823456712', 'Individual', '2024-03-05', '1997-12-21', 'Phone'),
(6, 'Ananya Verma', 'ananya.verma@gmail.com', '9753124680', 'Individual', '2024-03-19', '2003-05-09', 'SMS'),
(7, 'Karan Malhotra', 'karan.malhotra@gmail.com', '9911223344', 'Individual', '2024-04-02', '1998-09-15', 'Email'),
(8, 'Sneha Iyer', 'sneha.iyer@gmail.com', '9845671230', 'Individual', '2024-04-17', '2001-01-30', 'Email'),
(9, 'Aditya Joshi', 'aditya.joshi@gmail.com', '9871234560', 'Individual', '2024-05-08', '1999-07-19', 'Phone'),
(10, 'Ishita Rao', 'ishita.rao@gmail.com', '9834567120', 'Individual', '2024-05-26', '2002-10-06', 'SMS'),

(11, 'Rahul Bansal', 'rahul.bansal@gmail.com', '9811122233', 'Individual', '2024-06-11', '1996-04-25', 'Email'),
(12, 'Meera Nair', 'meera.nair@gmail.com', '9922334455', 'Individual', '2024-06-29', '2000-02-14', 'Phone'),
(13, 'Arjun Chawla', 'arjun.chawla@gmail.com', '9789456123', 'Individual', '2024-07-13', '1998-06-03', 'Email'),
(14, 'Pooja Agarwal', 'pooja.agarwal@gmail.com', '9867543210', 'Individual', '2024-07-27', '2001-12-11', 'SMS'),
(15, 'Nikhil Sethi', 'nikhil.sethi@gmail.com', '9797979797', 'Individual', '2024-08-09', '1997-03-18', 'Phone'),
(16, 'Simran Kaur', 'simran.kaur@gmail.com', '9819876543', 'Individual', '2024-08-24', '2003-08-29', 'Email'),
(17, 'Manish Tiwari', 'manish.tiwari@gmail.com', '9933445566', 'Individual', '2024-09-05', '1995-11-23', 'Phone'),
(18, 'Riya Saxena', 'riya.saxena@gmail.com', '9822113344', 'Individual', '2024-09-18', '2002-04-07', 'SMS'),
(19, 'Yash Patel', 'yash.patel@gmail.com', '9900112233', 'Individual', '2024-10-03', '2000-09-26', 'Email'),
(20, 'Tanya Desai', 'tanya.desai@gmail.com', '9766123456', 'Individual', '2024-10-21', '1999-01-17', 'Phone'),

(21, 'Siddharth Jain', 'siddharth.jain@gmail.com', '9876501234', 'Individual', '2024-11-07', '1997-05-31', 'Email'),
(22, 'Kriti Mishra', 'kriti.mishra@gmail.com', '9854321098', 'Individual', '2024-11-19', '2001-07-08', 'SMS'),
(23, 'Varun Khanna', 'varun.khanna@gmail.com', '9912345678', 'Individual', '2024-12-02', '1998-02-20', 'Phone'),
(24, 'Aditi Sinha', 'aditi.sinha@gmail.com', '9887766554', 'Individual', '2024-12-18', '2003-11-15', 'Email'),
(25, 'Mohit Arora', 'mohit.arora@gmail.com', '9791234567', 'Individual', '2025-01-06', '1996-08-04', 'Phone'),

(26, 'TechNova Solutions', 'contact@technova.in', '9123456780', 'Business', '2024-01-10', NULL, 'Email'),
(27, 'BluePeak Logistics', 'info@bluepeak.in', '9134567890', 'Business', '2024-01-25', NULL, 'Phone'),
(28, 'GreenLeaf Organics', 'contact@greenleaf.in', '9145678901', 'Business', '2024-02-12', NULL, 'Email'),
(29, 'UrbanNest Interiors', 'hello@urbannest.in', '9156789012', 'Business', '2024-02-28', NULL, 'SMS'),
(30, 'Apex Electronics', 'sales@apexelectronics.in', '9167890123', 'Business', '2024-03-14', NULL, 'Email'),

(31, 'Sunrise Pharmaceuticals', 'info@sunrisepharma.in', '9178901234', 'Business', '2024-03-30', NULL, 'Phone'),
(32, 'MetroMart Retail', 'support@metromart.in', '9189012345', 'Business', '2024-04-14', NULL, 'Email'),
(33, 'Vertex Consulting', 'contact@vertexconsulting.in', '9190123456', 'Business', '2024-04-28', NULL, 'Email'),
(34, 'RoyalCraft Exports', 'sales@royalcraft.in', '9201234567', 'Business', '2024-05-15', NULL, 'Phone'),
(35, 'CloudNine Technologies', 'admin@cloudnine.in', '9212345678', 'Business', '2024-05-31', NULL, 'SMS'),

(36, 'FreshBasket Foods', 'orders@freshbasket.in', '9223456789', 'Business', '2024-06-16', NULL, 'Email'),
(37, 'PrimeAuto Parts', 'sales@primeauto.in', '9234567890', 'Business', '2024-07-01', NULL, 'Phone'),
(38, 'SilverLine Textiles', 'contact@silverline.in', '9245678901', 'Business', '2024-07-17', NULL, 'Email'),
(39, 'BrightStar Education', 'info@brightstar.edu.in', '9256789012', 'Business', '2024-08-02', NULL, 'Email'),
(40, 'NorthWind Traders', 'sales@northwind.in', '9267890123', 'Business', '2024-08-18', NULL, 'Phone'),

(41, 'EliteFurniture Works', 'info@elitefurniture.in', '9278901234', 'Business', '2024-09-03', NULL, 'SMS'),
(42, 'OceanView Imports', 'contact@oceanview.in', '9289012345', 'Business', '2024-09-19', NULL, 'Email'),
(43, 'QuickPrint Services', 'orders@quickprint.in', '9290123456', 'Business', '2024-10-05', NULL, 'Phone'),
(44, 'Heritage Handicrafts', 'sales@heritagecraft.in', '9301234567', 'Business', '2024-10-21', NULL, 'Email'),
(45, 'Skyline Architecture', 'contact@skylinearch.in', '9312345678', 'Business', '2024-11-06', NULL, 'SMS'),

(46, 'GoldenGrain Foods', 'orders@goldengrain.in', '9323456789', 'Business', '2024-11-22', NULL, 'Email'),
(47, 'Innovatech Systems', 'support@innovatech.in', '9334567890', 'Business', '2024-12-08', NULL, 'Phone'),
(48, 'MapleLeaf Books', 'orders@mapleleaf.in', '9345678901', 'Business', '2024-12-24', NULL, 'Email'),
(49, 'EcoBuild Materials', 'sales@ecobuild.in', '9356789012', 'Business', '2025-01-09', NULL, 'Phone'),
(50, 'Crescent Fashion', 'contact@crescentfashion.in', '9367890123', 'Business', '2025-01-25', NULL, 'SMS'),

(51, 'Rajiv Menon', 'rajiv.menon@gmail.com', '9876012345', 'Individual', '2025-02-08', '1994-06-16', 'Email'),
(52, 'Divya Kulkarni', 'divya.kulkarni@gmail.com', '9865123450', 'Individual', '2025-02-22', '2000-12-28', 'Phone'),
(53, 'Aman Kapoor', 'aman.kapoor@gmail.com', '9856234510', 'Individual', '2025-03-08', '1999-04-13', 'SMS'),
(54, 'Nandini Shah', 'nandini.shah@gmail.com', '9847345621', 'Individual', '2025-03-24', '2002-07-22', 'Email'),
(55, 'Saurabh Roy', 'saurabh.roy@gmail.com', '9838456732', 'Individual', '2025-04-09', '1997-10-10', 'Phone'),

(56, 'Lakshmi Reddy', 'lakshmi.reddy@gmail.com', '9829567843', 'Individual', '2025-04-25', '1998-01-05', 'Email'),
(57, 'Harsh Vardhan', 'harsh.vardhan@gmail.com', '9810678954', 'Individual', '2025-05-11', '2001-05-24', 'SMS'),
(58, 'Isha Bhatt', 'isha.bhatt@gmail.com', '9801789065', 'Individual', '2025-05-27', '2003-09-17', 'Email'),
(59, 'Akash Srivastava', 'akash.srivastava@gmail.com', '9792890176', 'Individual', '2025-06-12', '1996-12-02', 'Phone'),
(60, 'Shreya Dutta', 'shreya.dutta@gmail.com', '9783901287', 'Individual', '2025-06-28', '2000-03-11', 'Email'),

(61, 'Devansh Gupta', 'devansh.gupta@gmail.com', '9774012398', 'Individual', '2025-07-14', '1999-08-23', 'SMS'),
(62, 'Mansi Tripathi', 'mansi.tripathi@gmail.com', '9765123409', 'Individual', '2025-07-30', '2002-02-09', 'Phone'),
(63, 'Ritesh Pandey', 'ritesh.pandey@gmail.com', '9756234510', 'Individual', '2025-08-15', '1995-07-14', 'Email'),
(64, 'Kavya Menon', 'kavya.menon@gmail.com', '9747345621', 'Individual', '2025-08-31', '2001-10-27', 'SMS'),
(65, 'Abhishek Rao', 'abhishek.rao@gmail.com', '9738456732', 'Individual', '2025-09-16', '1998-05-06', 'Phone'),

(66, 'Tanvi Choudhary', 'tanvi.choudhary@gmail.com', '9729567843', 'Individual', '2025-10-02', '2003-01-19', 'Email'),
(67, 'Naveen Kumar', 'naveen.kumar@gmail.com', '9710678954', 'Individual', '2025-10-18', '1994-09-08', 'Phone'),
(68, 'Sakshi Yadav', 'sakshi.yadav@gmail.com', '9701789065', 'Individual', '2025-11-03', '2000-06-30', 'SMS'),
(69, 'Vivek Anand', 'vivek.anand@gmail.com', '9692890176', 'Individual', '2025-11-19', '1997-02-16', 'Email'),
(70, 'Anushka Bose', 'anushka.bose@gmail.com', '9683901287', 'Individual', '2025-12-05', '2002-11-12', 'Phone'),

(71, 'Raghav Bhatia', 'raghav.bhatia@gmail.com', '9674012398', 'Individual', '2025-12-21', '1999-03-05', 'Email'),
(72, 'Muskan Jain', 'muskan.jain@gmail.com', '9665123409', 'Individual', '2026-01-06', '2001-08-18', 'SMS'),
(73, 'Yuvraj Singh', 'yuvraj.singh@gmail.com', '9656234510', 'Individual', '2026-01-22', '1998-12-09', 'Phone'),
(74, 'Palak Arora', 'palak.arora@gmail.com', '9647345621', 'Individual', '2026-02-07', '2003-04-21', 'Email'),
(75, 'Kunal Mehra', 'kunal.mehra@gmail.com', '9638456732', 'Individual', '2026-02-23', '2000-10-03', 'SMS');

CREATE TABLE addresses (
    address_id INT PRIMARY KEY,
    customer_id INT NOT NULL,
    FOREIGN KEY (customer_id) REFERENCES customers(customer_id),
    address_line VARCHAR(150) NOT NULL,
    city VARCHAR(50) NOT NULL,
    state VARCHAR(50) NOT NULL,
    pincode VARCHAR(10) NOT NULL,
    address_type VARCHAR(20) NOT NULL
);

INSERT INTO addresses
(address_id, customer_id, address_line, city, state, pincode, address_type)
VALUES
(1, 1, 'Flat 302, Sunrise Residency, C-Scheme, Ashok Marg', 'Jaipur', 'Rajasthan', '302001', 'Home'),
(2, 2, 'Flat 5B, Green Valley Apartments, Baner Road', 'Pune', 'Maharashtra', '411007', 'Home'),
(3, 3, 'House 42, Sector 15, Near HUDA Market, Gurugram', 'Gurugram', 'Haryana', '122001', 'Home'),
(4, 4, 'Flat 8A, Lakeview Towers, Salt Lake Sector 1', 'Kolkata', 'West Bengal', '700091', 'Home'),
(5, 5, 'Flat 701, Koramangala Residency, 5th Block, 80 Feet Road', 'Bengaluru', 'Karnataka', '560095', 'Home'),
(6, 6, 'Villa 18, Cyber Enclave, Hitech City Road, Madhapur', 'Hyderabad', 'Telangana', '500081', 'Home'),
(7, 7, 'Flat 1204, Sea Breeze Apartments, Andheri West', 'Mumbai', 'Maharashtra', '400058', 'Home'),
(8, 8, 'Flat 4C, Adyar Heights, Adyar Main Road', 'Chennai', 'Tamil Nadu', '600020', 'Home'),
(9, 9, 'House 14, Pocket B, Vasant Kunj, Near DDA Park', 'New Delhi', 'Delhi', '110070', 'Home'),
(10, 10, 'Flat 603, Gomti Heights, Gomti Nagar Extension', 'Lucknow', 'Uttar Pradesh', '226010', 'Home'),

(11, 11, 'House 8, Civil Lines, Near Prayagraj High Court', 'Prayagraj', 'Uttar Pradesh', '211001', 'Home'),
(12, 12, 'Flat 302, Marine View Apartments, MG Road, Ernakulam', 'Kochi', 'Kerala', '682016', 'Home'),
(13, 13, 'House 45, Sector 22, Model Town, Near Community Centre', 'Chandigarh', 'Chandigarh', '160022', 'Home'),
(14, 14, 'Flat 1102, Kharadi Greens, EON Road, Kharadi', 'Pune', 'Maharashtra', '411014', 'Home'),
(15, 15, 'Villa 9, Vaishali Enclave, Queens Road, Vaishali Nagar', 'Jaipur', 'Rajasthan', '302021', 'Home'),
(16, 16, 'Flat 803, Techview Towers, Sector 62, Near Fortis Hospital', 'Noida', 'Uttar Pradesh', '201309', 'Home'),
(17, 17, 'Flat 402, Alkapuri Heights, RC Dutt Road, Alkapuri', 'Vadodara', 'Gujarat', '390007', 'Home'),
(18, 18, 'Flat 902, Banjara Hills Residency, Road No. 12', 'Hyderabad', 'Telangana', '500034', 'Home'),
(19, 19, 'Flat 601, Satellite Greens, Satellite Road, Near ISRO Colony', 'Ahmedabad', 'Gujarat', '380015', 'Home'),
(20, 20, 'House 34, DLF Phase 2, Near Sikanderpur Metro Station', 'Gurugram', 'Haryana', '122002', 'Home'),

(21, 21, 'Flat 503, Rajaji Nagar Residency, 4th Block, Dr Rajkumar Road', 'Bengaluru', 'Karnataka', '560010', 'Home'),
(22, 22, 'Flat 702, Kothrud Park Apartments, Paud Road, Kothrud', 'Pune', 'Maharashtra', '411038', 'Home'),
(23, 23, 'Flat 1005, Dwarka Heights, Sector 10, Near Metro Station', 'New Delhi', 'Delhi', '110075', 'Home'),
(24, 24, 'House 44, Patliputra Colony, Near Patna Golf Club', 'Patna', 'Bihar', '800013', 'Home'),
(25, 25, 'House 15, Shastri Nagar, Near Railway Officers Colony', 'Jodhpur', 'Rajasthan', '342003', 'Home'),

(26, 26, 'Plot 18, Techno Industrial Estate, Sitapura Industrial Area', 'Jaipur', 'Rajasthan', '302013', 'Office'),
(27, 27, 'Warehouse 7, MIDC Ambad Industrial Area, Mumbai-Agra Highway', 'Nashik', 'Maharashtra', '422007', 'Warehouse'),
(28, 28, 'Office 204, GreenLeaf Business Centre, Organic Market Road', 'Bengaluru', 'Karnataka', '560038', 'Office'),
(29, 29, 'Office 603, UrbanNest Business Tower, Sector 18 Market', 'Noida', 'Uttar Pradesh', '201301', 'Office'),
(30, 30, 'Unit 91, Apex Electronics Park, Bhosari Industrial Estate', 'Pune', 'Maharashtra', '411019', 'Office'),

(31, 31, 'Building 12, Sunrise Pharma Park, Ahmedabad-Gandhinagar Highway', 'Ahmedabad', 'Gujarat', '382445', 'Office'),
(32, 32, 'Store 36, MetroMart Commercial Complex, Commercial Street', 'Bengaluru', 'Karnataka', '560001', 'Office'),
(33, 33, 'Office 1704, Vertex Business Park, Golf Course Road', 'Gurugram', 'Haryana', '122018', 'Office'),
(34, 34, 'Warehouse 5, RoyalCraft Export Zone, Moradabad Industrial Area', 'Moradabad', 'Uttar Pradesh', '244001', 'Warehouse'),
(35, 35, 'Office 1203, CloudNine Cyber Tower, HITEC City', 'Hyderabad', 'Telangana', '500081', 'Office'),

(36, 36, 'Warehouse 28, FreshBasket Food Park, Rau Industrial Area', 'Indore', 'Madhya Pradesh', '452010', 'Warehouse'),
(37, 37, 'Unit 41, PrimeAuto Industrial Complex, Ambattur Industrial Estate', 'Chennai', 'Tamil Nadu', '600058', 'Warehouse'),
(38, 38, 'Office 19, SilverLine Textile Centre, Ring Road Textile Market', 'Surat', 'Gujarat', '395002', 'Office'),
(39, 39, 'Office 72, BrightStar Knowledge Centre, Knowledge Park II', 'Greater Noida', 'Uttar Pradesh', '201310', 'Office'),
(40, 40, 'Warehouse 14, NorthWind Logistics Park, Transport Nagar', 'Jaipur', 'Rajasthan', '302003', 'Warehouse'),

(41, 41, 'Office 7, Elite Furniture Industrial Estate, Mathura Road', 'Faridabad', 'Haryana', '121003', 'Office'),
(42, 42, 'Warehouse 35, OceanView Logistics Centre, Willingdon Island', 'Kochi', 'Kerala', '682009', 'Warehouse'),
(43, 43, 'Office 11, QuickPrint Business Centre, Saki Naka Service Road', 'Mumbai', 'Maharashtra', '400070', 'Office'),
(44, 44, 'Office 26, Heritage Handicraft Plaza, Amer Road', 'Jaipur', 'Rajasthan', '302002', 'Office'),
(45, 45, 'Office 52, Skyline Design Centre, Hauz Khas Village Road', 'New Delhi', 'Delhi', '110016', 'Office'),

(46, 46, 'Warehouse 18, GoldenGrain Food Storage Complex, Kota Industrial Area', 'Kota', 'Rajasthan', '324007', 'Warehouse'),
(47, 47, 'Office 39, Innovatech Technology Park, Electronic City Phase 1', 'Bengaluru', 'Karnataka', '560100', 'Office'),
(48, 48, 'Office 24, MapleLeaf Book House, College Road, Shivajinagar', 'Pune', 'Maharashtra', '411005', 'Office'),
(49, 49, 'Warehouse 67, EcoBuild Materials Depot, Naroda Industrial Area', 'Ahmedabad', 'Gujarat', '380023', 'Warehouse'),
(50, 50, 'Office 13, Crescent Fashion House, Fashion Street, Colaba', 'Mumbai', 'Maharashtra', '400002', 'Office'),

(51, 51, 'Flat 601, Park Street Residency, Near Park Street Metro', 'Kolkata', 'West Bengal', '700016', 'Home'),
(52, 52, 'Flat 304, Shivaji Nagar Heights, FC Road', 'Pune', 'Maharashtra', '411005', 'Home'),
(53, 53, 'House 48, Rajendra Nagar, Near Bombay Hospital', 'Indore', 'Madhya Pradesh', '452012', 'Home'),
(54, 54, 'Flat 802, Koregaon Park Residency, North Main Road', 'Pune', 'Maharashtra', '411001', 'Home'),
(55, 55, 'Flat 703, Salt Lake Gardens, Sector 2, Near Central Park', 'Kolkata', 'West Bengal', '700064', 'Home'),

(56, 56, 'Flat 901, Jubilee Hills Residency, Road No. 36', 'Hyderabad', 'Telangana', '500033', 'Home'),
(57, 57, 'House 12, Malviya Nagar, Near Jawahar Circle', 'Jaipur', 'Rajasthan', '302017', 'Home'),
(58, 58, 'Flat 506, Vile Parle Heights, Nehru Road, Vile Parle East', 'Mumbai', 'Maharashtra', '400057', 'Home'),
(59, 59, 'Flat 402, Gomti Greens, Gomti Nagar Extension', 'Lucknow', 'Uttar Pradesh', '226010', 'Home'),
(60, 60, 'Flat 205, Alwarpet Residency, TTK Road', 'Chennai', 'Tamil Nadu', '600018', 'Home'),

(61, 61, 'Flat 803, Indiranagar Heights, 12th Main Road', 'Bengaluru', 'Karnataka', '560038', 'Home'),
(62, 62, 'Flat 301, Civil Lines Residency, Wardha Road', 'Nagpur', 'Maharashtra', '440001', 'Home'),
(63, 63, 'House 81, Kankarbagh Colony, Near Central School', 'Patna', 'Bihar', '800020', 'Home'),
(64, 64, 'Flat 604, Ashok Nagar Residency, 2nd Avenue', 'Chennai', 'Tamil Nadu', '600083', 'Home'),
(65, 65, 'Flat 503, Vastrapur Heights, Judges Bungalow Road', 'Ahmedabad', 'Gujarat', '380015', 'Home'),

(66, 66, 'Flat 705, Rajouri Garden Residency, Ring Road', 'New Delhi', 'Delhi', '110027', 'Home'),
(67, 67, 'House 47, Sector 22, Near Shastri Market', 'Chandigarh', 'Chandigarh', '160022', 'Home'),
(68, 68, 'Flat 304, Vaishali Greens, Sector 4, Near Metro Station', 'Ghaziabad', 'Uttar Pradesh', '201010', 'Home'),
(69, 69, 'Flat 402, Model Colony Apartments, Deep Bungalow Road', 'Pune', 'Maharashtra', '411016', 'Home'),
(70, 70, 'Flat 805, Salt Lake Heights, Sector 5, Near IT Hub', 'Kolkata', 'West Bengal', '700091', 'Home'),

(71, 71, 'Flat 506, Baner Residency, Baner Road, Near Balewadi High Street', 'Pune', 'Maharashtra', '411045', 'Home'),
(72, 72, 'House 39, Mansarovar Enclave, Shipra Path', 'Jaipur', 'Rajasthan', '302020', 'Home'),
(73, 73, 'Flat 1103, Sector 50 Residency, Near Central Park', 'Noida', 'Uttar Pradesh', '201301', 'Home'),
(74, 74, 'Flat 904, Powai Lakeview Towers, Hiranandani Gardens', 'Mumbai', 'Maharashtra', '400076', 'Home'),
(75, 75, 'Flat 602, Thane West Residency, Ghodbunder Road', 'Thane', 'Maharashtra', '400601', 'Home'),

(76, 1, 'Office 14, C-Scheme Business Centre, Tonk Road', 'Jaipur', 'Rajasthan', '302018', 'Office'),
(77, 3, 'Office 28, Golf Course Business Tower, Golf Course Road', 'Gurugram', 'Haryana', '122002', 'Office'),
(78, 5, 'Office 16, Whitefield Tech Park, Whitefield Main Road', 'Bengaluru', 'Karnataka', '560066', 'Office'),
(79, 7, 'Office 42, Lower Parel Business Centre, Senapati Bapat Marg', 'Mumbai', 'Maharashtra', '400013', 'Office'),
(80, 9, 'Office 9, Nehru Place Commercial Complex, Outer Ring Road', 'New Delhi', 'Delhi', '110019', 'Office'),

(81, 12, 'Office 8, Kakkanad Business Park, Seaport-Airport Road', 'Kochi', 'Kerala', '682030', 'Office'),
(82, 14, 'Office 31, Hinjewadi Tech Park, Phase 1, Rajiv Gandhi Infotech Park', 'Pune', 'Maharashtra', '411057', 'Office'),
(83, 16, 'Office 25, Sector 63 Business Centre, Noida-Greater Noida Expressway', 'Noida', 'Uttar Pradesh', '201301', 'Office'),
(84, 19, 'Office 12, SG Highway Business Park, Bodakdev', 'Ahmedabad', 'Gujarat', '380054', 'Office'),
(85, 21, 'Office 47, Whitefield Corporate Park, ITPL Main Road', 'Bengaluru', 'Karnataka', '560066', 'Office'),

(86, 26, 'Warehouse 42, Sitapura Industrial Estate, Tonk Road', 'Jaipur', 'Rajasthan', '302022', 'Warehouse'),
(87, 27, 'Office 19, Bhosari Industrial Complex, MIDC Road', 'Pune', 'Maharashtra', '411026', 'Office'),
(88, 30, 'Warehouse 17, Electronic City Industrial Park, Hosur Road', 'Bengaluru', 'Karnataka', '560100', 'Warehouse'),
(89, 32, 'Warehouse 6, Phoenix Commercial Logistics Centre, Saki Naka', 'Mumbai', 'Maharashtra', '400070', 'Warehouse'),
(90, 34, 'Office 28, Export Promotion Business Centre, Sector 16A', 'Noida', 'Uttar Pradesh', '201306', 'Office'),

(91, 36, 'Office 44, Vijay Nagar Business Complex, AB Road', 'Indore', 'Madhya Pradesh', '452010', 'Office'),
(92, 37, 'Office 9, Ambattur Industrial Business Centre, 2nd Main Road', 'Chennai', 'Tamil Nadu', '600058', 'Office'),
(93, 38, 'Warehouse 32, Udhna Textile Industrial Park, Ring Road', 'Surat', 'Gujarat', '394210', 'Warehouse'),
(94, 40, 'Office 21, Sanganer Logistics Centre, Sitapura Road', 'Jaipur', 'Rajasthan', '302029', 'Office'),
(95, 42, 'Office 16, Willingdon Island Commercial Complex, Port Road', 'Kochi', 'Kerala', '682003', 'Office'),

(96, 43, 'Warehouse 34, Andheri East Logistics Park, Western Express Highway', 'Mumbai', 'Maharashtra', '400069', 'Warehouse'),
(97, 47, 'Warehouse 27, Koramangala Industrial Estate, Hosur Road', 'Bengaluru', 'Karnataka', '560095', 'Warehouse'),
(98, 49, 'Office 51, Naroda Industrial Business Centre, Naroda Road', 'Ahmedabad', 'Gujarat', '382330', 'Office'),
(99, 50, 'Warehouse 8, Lower Parel Industrial Estate, Senapati Bapat Marg', 'Mumbai', 'Maharashtra', '400013', 'Warehouse'),
(100, 54, 'Office 62, Hinjewadi Corporate Centre, Phase 2, IT Park Road', 'Pune', 'Maharashtra', '411057', 'Office');

select * from addresses;

CREATE TABLE branches (
    branch_id INT PRIMARY KEY,
    branch_name VARCHAR(100) NOT NULL,
    city VARCHAR(50) NOT NULL,
    state VARCHAR(50) NOT NULL,
    pincode VARCHAR(10) NOT NULL,
    branch_type VARCHAR(30) NOT NULL,
    phone VARCHAR(15),
    established_date DATE
);

INSERT INTO branches
(branch_id, branch_name, city, state, pincode, branch_type, phone, established_date)
VALUES
(1, 'Jaipur Central Hub', 'Jaipur', 'Rajasthan', '302016', 'Central Hub', '01414001001', '2018-04-12'),
(2, 'Delhi Regional Hub', 'New Delhi', 'Delhi', '110037', 'Regional Hub', '01145001002', '2017-08-21'),
(3, 'Mumbai Central Hub', 'Mumbai', 'Maharashtra', '400070', 'Central Hub', '02247001003', '2016-02-15'),
(4, 'Bengaluru Regional Hub', 'Bengaluru', 'Karnataka', '560048', 'Regional Hub', '08048001004', '2019-06-10'),
(5, 'Hyderabad Central Hub', 'Hyderabad', 'Telangana', '500081', 'Central Hub', '04049001005', '2018-11-05'),

(6, 'Pune Regional Hub', 'Pune', 'Maharashtra', '411014', 'Regional Hub', '02046001006', '2019-03-18'),
(7, 'Ahmedabad Regional Hub', 'Ahmedabad', 'Gujarat', '380015', 'Regional Hub', '07945001007', '2017-12-08'),
(8, 'Kolkata Regional Hub', 'Kolkata', 'West Bengal', '700091', 'Regional Hub', '03346001008', '2018-07-25'),
(9, 'Chennai Regional Hub', 'Chennai', 'Tamil Nadu', '600096', 'Regional Hub', '04447001009', '2019-09-14'),
(10, 'Lucknow Regional Hub', 'Lucknow', 'Uttar Pradesh', '226010', 'Regional Hub', '052245001010', '2020-01-20'),

(11, 'Jaipur C-Scheme Branch', 'Jaipur', 'Rajasthan', '302001', 'City Branch', '01414001101', '2020-03-11'),
(12, 'Jaipur Malviya Nagar Branch', 'Jaipur', 'Rajasthan', '302017', 'City Branch', '01414001102', '2021-06-18'),
(13, 'Jaipur Vaishali Nagar Branch', 'Jaipur', 'Rajasthan', '302021', 'Local Branch', '01414001103', '2022-02-09'),
(14, 'Jaipur Mansarovar Branch', 'Jaipur', 'Rajasthan', '302020', 'Local Branch', '01414001104', '2022-09-15'),

(15, 'Delhi Dwarka Branch', 'New Delhi', 'Delhi', '110075', 'City Branch', '01145001105', '2020-05-22'),
(16, 'Delhi Rohini Branch', 'New Delhi', 'Delhi', '110085', 'City Branch', '01145001106', '2021-01-17'),
(17, 'Delhi Saket Branch', 'New Delhi', 'Delhi', '110017', 'Local Branch', '01145001107', '2022-04-13'),
(18, 'Delhi Karol Bagh Branch', 'New Delhi', 'Delhi', '110005', 'Local Branch', '01145001108', '2023-02-06'),

(19, 'Mumbai Andheri Branch', 'Mumbai', 'Maharashtra', '400053', 'City Branch', '02247001109', '2019-10-12'),
(20, 'Mumbai Powai Branch', 'Mumbai', 'Maharashtra', '400076', 'City Branch', '02247001110', '2020-08-19'),
(21, 'Mumbai Thane Branch', 'Mumbai', 'Maharashtra', '400601', 'Local Branch', '02247001111', '2021-03-25'),
(22, 'Mumbai Vashi Branch', 'Mumbai', 'Maharashtra', '400703', 'Local Branch', '02247001112', '2022-11-07'),

(23, 'Bengaluru Whitefield Branch', 'Bengaluru', 'Karnataka', '560066', 'City Branch', '08048001113', '2020-02-14'),
(24, 'Bengaluru Koramangala Branch', 'Bengaluru', 'Karnataka', '560034', 'City Branch', '08048001114', '2021-05-10'),
(25, 'Bengaluru Indiranagar Branch', 'Bengaluru', 'Karnataka', '560038', 'Local Branch', '08048001115', '2022-07-21'),
(26, 'Bengaluru Electronic City Branch', 'Bengaluru', 'Karnataka', '560100', 'Local Branch', '08048001116', '2023-01-16'),

(27, 'Hyderabad Banjara Hills Branch', 'Hyderabad', 'Telangana', '500034', 'City Branch', '04049001117', '2020-09-11'),
(28, 'Hyderabad Hitech City Branch', 'Hyderabad', 'Telangana', '500081', 'City Branch', '04049001118', '2021-04-23'),
(29, 'Hyderabad Secunderabad Branch', 'Hyderabad', 'Telangana', '500003', 'Local Branch', '04049001119', '2022-06-17'),
(30, 'Hyderabad Kukatpally Branch', 'Hyderabad', 'Telangana', '500072', 'Local Branch', '04049001120', '2023-03-14'),

(31, 'Pune Kharadi Branch', 'Pune', 'Maharashtra', '411014', 'City Branch', '02046001121', '2020-07-09'),
(32, 'Pune Hinjewadi Branch', 'Pune', 'Maharashtra', '411057', 'City Branch', '02046001122', '2021-02-18'),
(33, 'Pune Baner Branch', 'Pune', 'Maharashtra', '411045', 'Local Branch', '02046001123', '2022-05-26'),
(34, 'Pune Hadapsar Branch', 'Pune', 'Maharashtra', '411028', 'Local Branch', '02046001124', '2023-08-12'),

(35, 'Ahmedabad Satellite Branch', 'Ahmedabad', 'Gujarat', '380015', 'City Branch', '07945001125', '2020-10-15'),
(36, 'Ahmedabad Navrangpura Branch', 'Ahmedabad', 'Gujarat', '380009', 'City Branch', '07945001126', '2021-06-08'),
(37, 'Ahmedabad Vastrapur Branch', 'Ahmedabad', 'Gujarat', '380015', 'Local Branch', '07945001127', '2022-03-19'),

(38, 'Kolkata Salt Lake Branch', 'Kolkata', 'West Bengal', '700091', 'City Branch', '03346001128', '2020-04-16'),
(39, 'Kolkata Park Street Branch', 'Kolkata', 'West Bengal', '700016', 'City Branch', '03346001129', '2021-09-22'),
(40, 'Kolkata New Town Branch', 'Kolkata', 'West Bengal', '700156', 'Local Branch', '03346001130', '2023-01-11'),

(41, 'Chennai T Nagar Branch', 'Chennai', 'Tamil Nadu', '600017', 'City Branch', '04447001131', '2020-06-24'),
(42, 'Chennai Velachery Branch', 'Chennai', 'Tamil Nadu', '600042', 'City Branch', '04447001132', '2021-11-18'),
(43, 'Chennai Adyar Branch', 'Chennai', 'Tamil Nadu', '600020', 'Local Branch', '04447001133', '2022-08-07'),

(44, 'Lucknow Gomti Nagar Branch', 'Lucknow', 'Uttar Pradesh', '226010', 'City Branch', '052245001134', '2020-12-12'),
(45, 'Lucknow Hazratganj Branch', 'Lucknow', 'Uttar Pradesh', '226001', 'City Branch', '052245001135', '2021-07-15'),
(46, 'Lucknow Aliganj Branch', 'Lucknow', 'Uttar Pradesh', '226024', 'Local Branch', '052245001136', '2023-04-20'),

(47, 'Gurugram Cyber City Branch', 'Gurugram', 'Haryana', '122002', 'City Branch', '012445001137', '2021-03-12'),
(48, 'Noida Sector 62 Branch', 'Noida', 'Uttar Pradesh', '201309', 'City Branch', '012045001138', '2021-10-09'),
(49, 'Indore Vijay Nagar Branch', 'Indore', 'Madhya Pradesh', '452010', 'City Branch', '073145001139', '2022-01-24'),
(50, 'Bhopal MP Nagar Branch', 'Bhopal', 'Madhya Pradesh', '462011', 'Local Branch', '075545001140', '2023-06-16');

CREATE TABLE employees (
    employee_id INT PRIMARY KEY,
    branch_id INT NOT NULL,
    employee_name VARCHAR(100) NOT NULL,
    email VARCHAR(100) UNIQUE,
    phone VARCHAR(15) NOT NULL,
    job_role VARCHAR(40) NOT NULL,
    joining_date DATE NOT NULL,
    salary DECIMAL(10,2),
    FOREIGN KEY (branch_id) REFERENCES branches(branch_id)
);

INSERT INTO employees
(employee_id, branch_id, employee_name, email, phone, job_role, joining_date, salary)
VALUES
(1, 1, 'Rohit Sharma', 'rohit.sharma@couriermail.com', '9876501001', 'Branch Manager', '2020-05-14', 62000.00),
(2, 2, 'Neha Verma', 'neha.verma@couriermail.com', '9876501002', 'Operations Manager', '2019-08-22', 58000.00),
(3, 3, 'Amit Kulkarni', 'amit.kulkarni@couriermail.com', '9876501003', 'Branch Manager', '2018-03-11', 64000.00),
(4, 4, 'Priya Nair', 'priya.nair@couriermail.com', '9876501004', 'Operations Manager', '2020-07-18', 57000.00),
(5, 5, 'Karan Reddy', 'karan.reddy@couriermail.com', '9876501005', 'Branch Manager', '2019-12-05', 63000.00),

(6, 6, 'Sneha Patil', 'sneha.patil@couriermail.com', '9876501006', 'Operations Executive', '2021-04-12', 38000.00),
(7, 7, 'Rahul Mehta', 'rahul.mehta@couriermail.com', '9876501007', 'Branch Manager', '2020-01-27', 61000.00),
(8, 8, 'Ananya Sen', 'ananya.sen@couriermail.com', '9876501008', 'Operations Manager', '2019-10-16', 56000.00),
(9, 9, 'Vikram Iyer', 'vikram.iyer@couriermail.com', '9876501009', 'Branch Manager', '2020-06-23', 62500.00),
(10, 10, 'Pooja Singh', 'pooja.singh@couriermail.com', '9876501010', 'Operations Manager', '2021-02-15', 55000.00),

(11, 11, 'Arjun Joshi', 'arjun.joshi@couriermail.com', '9876501011', 'Customer Service Executive', '2022-03-18', 32000.00),
(12, 12, 'Meenal Gupta', 'meenal.gupta@couriermail.com', '9876501012', 'Operations Executive', '2021-08-11', 37000.00),
(13, 13, 'Saurabh Jain', 'saurabh.jain@couriermail.com', '9876501013', 'Shipment Coordinator', '2023-01-09', 34000.00),
(14, 14, 'Riya Agarwal', 'riya.agarwal@couriermail.com', '9876501014', 'Customer Service Executive', '2022-06-21', 31500.00),

(15, 15, 'Manish Yadav', 'manish.yadav@couriermail.com', '9876501015', 'Operations Executive', '2021-11-14', 36500.00),
(16, 16, 'Kavita Rao', 'kavita.rao@couriermail.com', '9876501016', 'Branch Manager', '2020-09-07', 59000.00),
(17, 17, 'Nitin Malhotra', 'nitin.malhotra@couriermail.com', '9876501017', 'Shipment Coordinator', '2023-02-17', 33500.00),
(18, 18, 'Ishita Kapoor', 'ishita.kapoor@couriermail.com', '9876501018', 'Customer Service Executive', '2023-05-12', 31000.00),

(19, 19, 'Aditya Deshmukh', 'aditya.deshmukh@couriermail.com', '9876501019', 'Operations Manager', '2020-02-19', 57500.00),
(20, 20, 'Simran Kaur', 'simran.kaur@couriermail.com', '9876501020', 'Operations Executive', '2022-01-11', 37500.00),
(21, 21, 'Harsh Vora', 'harsh.vora@couriermail.com', '9876501021', 'Shipment Coordinator', '2023-03-24', 34500.00),
(22, 22, 'Tanvi Shah', 'tanvi.shah@couriermail.com', '9876501022', 'Customer Service Executive', '2022-10-18', 32000.00),

(23, 23, 'Akash Gowda', 'akash.gowda@couriermail.com', '9876501023', 'Operations Executive', '2021-07-15', 36000.00),
(24, 24, 'Divya Menon', 'divya.menon@couriermail.com', '9876501024', 'Branch Manager', '2020-04-09', 60000.00),
(25, 25, 'Rakesh Shetty', 'rakesh.shetty@couriermail.com', '9876501025', 'Shipment Coordinator', '2023-01-23', 35000.00),
(26, 26, 'Aishwarya Rao', 'aishwarya.rao@couriermail.com', '9876501026', 'Customer Service Executive', '2022-08-16', 32500.00),

(27, 27, 'Mohammed Faizan', 'faizan.mohammed@couriermail.com', '9876501027', 'Operations Manager', '2020-11-20', 56500.00),
(28, 28, 'Lakshmi Reddy', 'lakshmi.reddy@couriermail.com', '9876501028', 'Operations Executive', '2021-05-17', 37000.00),
(29, 29, 'Siddharth Rao', 'siddharth.rao@couriermail.com', '9876501029', 'Shipment Coordinator', '2023-04-11', 34000.00),
(30, 30, 'Nandini Kumar', 'nandini.kumar@couriermail.com', '9876501030', 'Customer Service Executive', '2022-09-13', 31500.00),

(31, 31, 'Yash Thakur', 'yash.thakur@couriermail.com', '9876501031', 'Operations Executive', '2021-03-16', 36500.00),
(32, 32, 'Shreya Bansal', 'shreya.bansal@couriermail.com', '9876501032', 'Branch Manager', '2020-08-24', 60500.00),
(33, 33, 'Vivek Choudhary', 'vivek.choudhary@couriermail.com', '9876501033', 'Shipment Coordinator', '2023-06-07', 34500.00),
(34, 34, 'Muskan Arora', 'muskan.arora@couriermail.com', '9876501034', 'Customer Service Executive', '2022-12-02', 31800.00),

(35, 35, 'Dhruv Patel', 'dhruv.patel@couriermail.com', '9876501035', 'Operations Manager', '2020-10-14', 57000.00),
(36, 36, 'Jhanvi Shah', 'jhanvi.shah@couriermail.com', '9876501036', 'Operations Executive', '2021-06-19', 36500.00),
(37, 37, 'Parth Trivedi', 'parth.trivedi@couriermail.com', '9876501037', 'Shipment Coordinator', '2023-02-25', 34200.00),

(38, 38, 'Soumya Das', 'soumya.das@couriermail.com', '9876501038', 'Branch Manager', '2020-05-17', 59500.00),
(39, 39, 'Abhishek Roy', 'abhishek.roy@couriermail.com', '9876501039', 'Operations Executive', '2021-09-12', 36800.00),
(40, 40, 'Moumita Ghosh', 'moumita.ghosh@couriermail.com', '9876501040', 'Customer Service Executive', '2022-11-21', 31500.00),

(41, 41, 'Karthik Srinivasan', 'karthik.srinivasan@couriermail.com', '9876501041', 'Operations Manager', '2020-07-13', 58000.00),
(42, 42, 'Harini Krishnan', 'harini.krishnan@couriermail.com', '9876501042', 'Operations Executive', '2021-12-08', 37000.00),
(43, 43, 'Arvind Kumar', 'arvind.kumar@couriermail.com', '9876501043', 'Shipment Coordinator', '2023-03-15', 34500.00),

(44, 44, 'Shubham Mishra', 'shubham.mishra@couriermail.com', '9876501044', 'Branch Manager', '2020-09-19', 59000.00),
(45, 45, 'Ayushi Srivastava', 'ayushi.srivastava@couriermail.com', '9876501045', 'Operations Executive', '2022-02-14', 36000.00),
(46, 46, 'Aditya Saxena', 'aditya.saxena@couriermail.com', '9876501046', 'Customer Service Executive', '2023-07-11', 31000.00),

(47, 47, 'Rajat Sethi', 'rajat.sethi@couriermail.com', '9876501047', 'Operations Manager', '2021-01-18', 57000.00),
(48, 48, 'Isha Aggarwal', 'isha.aggarwal@couriermail.com', '9876501048', 'Operations Executive', '2022-04-22', 36500.00),
(49, 49, 'Gaurav Tiwari', 'gaurav.tiwari@couriermail.com', '9876501049', 'Shipment Coordinator', '2023-08-09', 34000.00),
(50, 50, 'Palak Sharma', 'palak.sharma@couriermail.com', '9876501050', 'Customer Service Executive', '2022-10-16', 31500.00);

CREATE TABLE parcels (
    parcel_id INT PRIMARY KEY,
    customer_id INT NOT NULL,
    pickup_address_id INT NOT NULL,
    delivery_address_id INT NOT NULL,
    parcel_type VARCHAR(30) NOT NULL,
    weight_kg DECIMAL(6,2) NOT NULL,
    declared_value DECIMAL(10,2),
    booking_date DATE NOT NULL,
    delivery_instructions VARCHAR(200),
    FOREIGN KEY (customer_id) REFERENCES customers(customer_id),
    FOREIGN KEY (pickup_address_id) REFERENCES addresses(address_id),
    FOREIGN KEY (delivery_address_id) REFERENCES addresses(address_id)
);

INSERT INTO parcels
(parcel_id, customer_id, pickup_address_id, delivery_address_id,
 parcel_type, weight_kg, declared_value, booking_date, delivery_instructions)
VALUES
(1, 1, 1, 76, 'Electronics', 2.50, 45000.00, '2025-01-05', 'Handle with care'),
(2, 2, 2, 3, 'Documents', 0.45, 5000.00, '2025-01-08', 'Keep documents dry'),
(3, 3, 3, 77, 'Clothing', 1.80, 8500.00, '2025-01-12', 'No special instructions'),
(4, 4, 4, 5, 'Books', 3.20, 4200.00, '2025-01-15', 'Handle carefully'),
(5, 5, 5, 6, 'Electronics', 1.25, 28000.00, '2025-01-19', 'Fragile item'),

(6, 6, 6, 7, 'Clothing', 2.10, 7500.00, '2025-01-22', 'Keep package sealed'),
(7, 7, 7, 8, 'Documents', 0.30, 2500.00, '2025-01-25', 'Deliver to reception'),
(8, 8, 8, 9, 'Cosmetics', 1.15, 6200.00, '2025-01-29', 'Keep away from heat'),
(9, 9, 9, 10, 'Electronics', 3.40, 52000.00, '2025-02-02', 'Fragile - handle with care'),
(10, 10, 10, 11, 'Books', 2.75, 3800.00, '2025-02-05', 'No special instructions'),

(11, 11, 11, 12, 'Clothing', 1.60, 6800.00, '2025-02-08', 'Keep package dry'),
(12, 12, 12, 13, 'Documents', 0.55, 3200.00, '2025-02-11', 'Deliver during office hours'),
(13, 13, 13, 14, 'Electronics', 4.20, 65000.00, '2025-02-14', 'Fragile item'),
(14, 14, 14, 15, 'Household Items', 5.50, 9500.00, '2025-02-18', 'Handle carefully'),
(15, 15, 15, 16, 'Books', 4.10, 5600.00, '2025-02-21', 'Keep dry'),

(16, 16, 16, 17, 'Electronics', 1.90, 34000.00, '2025-02-24', 'Fragile - handle with care'),
(17, 17, 17, 18, 'Documents', 0.25, 1800.00, '2025-02-27', 'Deliver to reception'),
(18, 18, 18, 19, 'Clothing', 2.35, 9200.00, '2025-03-02', 'No special instructions'),
(19, 19, 19, 20, 'Cosmetics', 0.85, 4800.00, '2025-03-05', 'Keep away from heat'),
(20, 20, 20, 21, 'Electronics', 2.80, 47000.00, '2025-03-08', 'Fragile item'),

(21, 21, 21, 22, 'Books', 3.60, 4500.00, '2025-03-11', 'Handle carefully'),
(22, 22, 22, 23, 'Clothing', 1.40, 6100.00, '2025-03-14', 'Keep package sealed'),
(23, 23, 23, 24, 'Electronics', 1.75, 29000.00, '2025-03-18', 'Fragile - handle with care'),
(24, 24, 24, 25, 'Documents', 0.40, 2700.00, '2025-03-21', 'Keep documents dry'),
(25, 25, 25, 26, 'Household Items', 6.20, 11000.00, '2025-03-24', 'Handle carefully'),

(26, 26, 26, 27, 'Electronics', 2.15, 39000.00, '2025-03-27', 'Fragile item'),
(27, 27, 27, 28, 'Clothing', 1.95, 7300.00, '2025-03-30', 'No special instructions'),
(28, 28, 28, 29, 'Books', 2.90, 4100.00, '2025-04-02', 'Keep dry'),
(29, 29, 29, 30, 'Documents', 0.35, 2200.00, '2025-04-05', 'Deliver during office hours'),
(30, 30, 30, 31, 'Electronics', 3.10, 56000.00, '2025-04-08', 'Fragile - handle with care'),

(31, 31, 31, 32, 'Clothing', 2.45, 8900.00, '2025-04-11', 'Keep package sealed'),
(32, 32, 32, 33, 'Cosmetics', 1.05, 5200.00, '2025-04-14', 'Keep away from heat'),
(33, 33, 33, 34, 'Books', 3.80, 4700.00, '2025-04-17', 'Handle carefully'),
(34, 34, 34, 35, 'Electronics', 1.30, 24000.00, '2025-04-20', 'Fragile item'),
(35, 35, 35, 36, 'Documents', 0.60, 3500.00, '2025-04-23', 'Keep documents dry'),

(36, 36, 36, 37, 'Household Items', 4.75, 8700.00, '2025-04-26', 'Handle carefully'),
(37, 37, 37, 38, 'Clothing', 1.85, 7600.00, '2025-04-29', 'No special instructions'),
(38, 38, 38, 39, 'Electronics', 2.65, 43000.00, '2025-05-02', 'Fragile - handle with care'),
(39, 39, 39, 40, 'Books', 2.20, 3600.00, '2025-05-05', 'Keep dry'),
(40, 40, 40, 41, 'Documents', 0.50, 2900.00, '2025-05-08', 'Deliver to reception'),

(41, 41, 41, 42, 'Electronics', 3.75, 61000.00, '2025-05-11', 'Fragile item'),
(42, 42, 42, 43, 'Clothing', 1.55, 6700.00, '2025-05-14', 'Keep package sealed'),
(43, 43, 43, 44, 'Cosmetics', 0.90, 5100.00, '2025-05-17', 'Keep away from heat'),
(44, 44, 44, 45, 'Books', 4.30, 5900.00, '2025-05-20', 'Handle carefully'),
(45, 45, 45, 46, 'Electronics', 2.05, 37000.00, '2025-05-23', 'Fragile item'),

(46, 46, 46, 47, 'Documents', 0.45, 3000.00, '2025-05-26', 'Keep documents dry'),
(47, 47, 47, 48, 'Household Items', 5.80, 12500.00, '2025-05-29', 'Handle carefully'),
(48, 48, 48, 49, 'Clothing', 2.25, 8400.00, '2025-06-01', 'No special instructions'),
(49, 49, 49, 50, 'Electronics', 1.65, 31000.00, '2025-06-04', 'Fragile - handle with care'),
(50, 50, 50, 51, 'Books', 3.15, 4300.00, '2025-06-07', 'Keep dry'),

(51, 51, 51, 52, 'Documents', 0.30, 2000.00, '2025-06-10', 'Deliver to reception'),
(52, 52, 52, 53, 'Electronics', 2.95, 48000.00, '2025-06-13', 'Fragile item'),
(53, 53, 53, 54, 'Clothing', 1.75, 7200.00, '2025-06-16', 'Keep package sealed'),
(54, 54, 54, 55, 'Cosmetics', 1.20, 5800.00, '2025-06-19', 'Keep away from heat'),
(55, 55, 55, 56, 'Household Items', 6.50, 13500.00, '2025-06-22', 'Handle carefully'),

(56, 56, 56, 57, 'Electronics', 1.45, 27000.00, '2025-06-25', 'Fragile item'),
(57, 57, 57, 58, 'Books', 3.90, 5200.00, '2025-06-28', 'Keep dry'),
(58, 58, 58, 59, 'Documents', 0.55, 3300.00, '2025-07-01', 'Keep documents dry'),
(59, 59, 59, 60, 'Clothing', 2.05, 8100.00, '2025-07-04', 'No special instructions'),
(60, 60, 60, 61, 'Electronics', 3.25, 54000.00, '2025-07-07', 'Fragile - handle with care'),

(61, 61, 61, 62, 'Books', 2.65, 3900.00, '2025-07-10', 'Handle carefully'),
(62, 62, 62, 63, 'Documents', 0.40, 2400.00, '2025-07-13', 'Deliver during office hours'),
(63, 63, 63, 64, 'Electronics', 2.35, 42000.00, '2025-07-16', 'Fragile item'),
(64, 64, 64, 65, 'Clothing', 1.90, 6900.00, '2025-07-19', 'Keep package sealed'),
(65, 65, 65, 66, 'Household Items', 4.85, 9700.00, '2025-07-22', 'Handle carefully'),

(66, 66, 66, 67, 'Cosmetics', 0.75, 4300.00, '2025-07-25', 'Keep away from heat'),
(67, 67, 67, 68, 'Electronics', 1.80, 36000.00, '2025-07-28', 'Fragile - handle with care'),
(68, 68, 68, 69, 'Books', 3.45, 4600.00, '2025-07-31', 'Keep dry'),
(69, 69, 69, 70, 'Documents', 0.35, 2100.00, '2025-08-03', 'Keep documents dry'),
(70, 70, 70, 71, 'Clothing', 2.15, 7800.00, '2025-08-06', 'No special instructions'),

(71, 71, 71, 72, 'Electronics', 2.70, 51000.00, '2025-08-09', 'Fragile item'),
(72, 72, 72, 73, 'Household Items', 5.25, 10200.00, '2025-08-12', 'Handle carefully'),
(73, 73, 73, 74, 'Books', 3.05, 4400.00, '2025-08-15', 'Keep dry'),
(74, 74, 74, 75, 'Documents', 0.50, 2800.00, '2025-08-18', 'Deliver to reception'),
(75, 75, 75, 1, 'Electronics', 3.60, 59000.00, '2025-08-21', 'Fragile - handle with care'),

(76, 1, 76, 2, 'Clothing', 1.70, 6900.00, '2025-08-24', 'Keep package sealed'),
(77, 3, 77, 4, 'Electronics', 2.45, 41000.00, '2025-08-27', 'Fragile item'),
(78, 5, 6, 78, 'Books', 2.80, 3800.00, '2025-08-30', 'Handle carefully'),
(79, 7, 8, 79, 'Documents', 0.40, 2500.00, '2025-09-02', 'Keep documents dry'),
(80, 9, 10, 80, 'Electronics', 1.95, 33000.00, '2025-09-05', 'Fragile - handle with care'),

(81, 11, 12, 81, 'Household Items', 4.60, 8500.00, '2025-09-08', 'Handle carefully'),
(82, 13, 14, 82, 'Clothing', 2.30, 9100.00, '2025-09-11', 'No special instructions'),
(83, 15, 16, 83, 'Electronics', 2.15, 38000.00, '2025-09-14', 'Fragile item'),
(84, 17, 18, 84, 'Books', 3.25, 4700.00, '2025-09-17', 'Keep dry'),
(85, 19, 20, 85, 'Documents', 0.35, 2300.00, '2025-09-20', 'Deliver to reception'),

(86, 21, 22, 86, 'Electronics', 3.05, 49000.00, '2025-09-23', 'Fragile - handle with care'),
(87, 23, 24, 87, 'Clothing', 1.65, 6400.00, '2025-09-26', 'Keep package sealed'),
(88, 25, 26, 88, 'Household Items', 5.10, 9800.00, '2025-09-29', 'Handle carefully'),
(89, 27, 28, 89, 'Cosmetics', 1.00, 5500.00, '2025-10-02', 'Keep away from heat'),
(90, 29, 30, 90, 'Electronics', 2.75, 46000.00, '2025-10-05', 'Fragile item'),

(91, 31, 32, 91, 'Books', 3.50, 4900.00, '2025-10-08', 'Keep dry'),
(92, 33, 34, 92, 'Documents', 0.45, 3100.00, '2025-10-11', 'Keep documents dry'),
(93, 35, 36, 93, 'Clothing', 2.00, 7600.00, '2025-10-14', 'No special instructions'),
(94, 37, 38, 94, 'Electronics', 1.85, 35000.00, '2025-10-17', 'Fragile - handle with care'),
(95, 39, 40, 95, 'Household Items', 4.40, 8900.00, '2025-10-20', 'Handle carefully'),

(96, 41, 42, 96, 'Electronics', 2.60, 44000.00, '2025-10-23', 'Fragile item'),
(97, 43, 44, 97, 'Books', 3.75, 5100.00, '2025-10-26', 'Keep dry'),
(98, 45, 46, 98, 'Documents', 0.30, 1900.00, '2025-10-29', 'Deliver during office hours'),
(99, 47, 48, 99, 'Clothing', 1.90, 7300.00, '2025-11-01', 'Keep package sealed'),
(100, 49, 50, 100, 'Electronics', 3.15, 57000.00, '2025-11-04', 'Fragile - handle with care');

CREATE TABLE shipments (
    shipment_id INT PRIMARY KEY,
    parcel_id INT NOT NULL,
    origin_branch_id INT NOT NULL,
    destination_branch_id INT NOT NULL,
    tracking_number VARCHAR(30) UNIQUE NOT NULL,
    shipment_date DATE NOT NULL,
    expected_delivery_date DATE,
    actual_delivery_date DATE,
    shipment_status VARCHAR(30) DEFAULT 'Booked',
    FOREIGN KEY (parcel_id) REFERENCES parcels(parcel_id),
    FOREIGN KEY (origin_branch_id) REFERENCES branches(branch_id),
    FOREIGN KEY (destination_branch_id) REFERENCES branches(branch_id)
);

INSERT INTO shipments
(shipment_id, parcel_id, origin_branch_id, destination_branch_id,
 tracking_number, shipment_date, expected_delivery_date,
 actual_delivery_date, shipment_status)
VALUES
(1, 1, 1, 2, 'FXIN25000001', '2025-01-05', '2025-01-08', '2025-01-08', 'Delivered'),
(2, 2, 2, 3, 'FXIN25000002', '2025-01-08', '2025-01-12', '2025-01-13', 'Delivered'),
(3, 3, 3, 4, 'FXIN25000003', '2025-01-12', '2025-01-16', '2025-01-16', 'Delivered'),
(4, 4, 4, 5, 'FXIN25000004', '2025-01-15', '2025-01-19', '2025-01-20', 'Delivered'),
(5, 5, 5, 6, 'FXIN25000005', '2025-01-19', '2025-01-23', '2025-01-23', 'Delivered'),
(6, 6, 6, 7, 'FXIN25000006', '2025-01-22', '2025-01-26', '2025-01-27', 'Delivered'),
(7, 7, 7, 8, 'FXIN25000007', '2025-01-25', '2025-01-29', '2025-01-29', 'Delivered'),
(8, 8, 8, 9, 'FXIN25000008', '2025-01-29', '2025-02-02', '2025-02-03', 'Delivered'),
(9, 9, 9, 10, 'FXIN25000009', '2025-02-02', '2025-02-06', '2025-02-06', 'Delivered'),
(10, 10, 10, 11, 'FXIN25000010', '2025-02-05', '2025-02-09', '2025-02-10', 'Delivered'),

(11, 11, 11, 12, 'FXIN25000011', '2025-02-08', '2025-02-12', '2025-02-12', 'Delivered'),
(12, 12, 12, 13, 'FXIN25000012', '2025-02-11', '2025-02-15', '2025-02-16', 'Delivered'),
(13, 13, 13, 14, 'FXIN25000013', '2025-02-14', '2025-02-18', '2025-02-18', 'Delivered'),
(14, 14, 14, 15, 'FXIN25000014', '2025-02-18', '2025-02-22', '2025-02-23', 'Delivered'),
(15, 15, 15, 16, 'FXIN25000015', '2025-02-21', '2025-02-25', '2025-02-25', 'Delivered'),
(16, 16, 16, 17, 'FXIN25000016', '2025-02-24', '2025-02-28', '2025-03-01', 'Delivered'),
(17, 17, 17, 18, 'FXIN25000017', '2025-02-27', '2025-03-03', '2025-03-03', 'Delivered'),
(18, 18, 18, 19, 'FXIN25000018', '2025-03-02', '2025-03-06', '2025-03-07', 'Delivered'),
(19, 19, 19, 20, 'FXIN25000019', '2025-03-05', '2025-03-09', '2025-03-09', 'Delivered'),
(20, 20, 20, 21, 'FXIN25000020', '2025-03-08', '2025-03-12', '2025-03-13', 'Delivered'),

(21, 21, 21, 22, 'FXIN25000021', '2025-03-11', '2025-03-15', '2025-03-15', 'Delivered'),
(22, 22, 22, 23, 'FXIN25000022', '2025-03-14', '2025-03-18', '2025-03-19', 'Delivered'),
(23, 23, 23, 24, 'FXIN25000023', '2025-03-18', '2025-03-22', '2025-03-22', 'Delivered'),
(24, 24, 24, 25, 'FXIN25000024', '2025-03-21', '2025-03-25', '2025-03-26', 'Delivered'),
(25, 25, 25, 26, 'FXIN25000025', '2025-03-24', '2025-03-28', '2025-03-28', 'Delivered'),
(26, 26, 26, 27, 'FXIN25000026', '2025-03-27', '2025-03-31', '2025-04-01', 'Delivered'),
(27, 27, 27, 28, 'FXIN25000027', '2025-03-30', '2025-04-03', '2025-04-03', 'Delivered'),
(28, 28, 28, 29, 'FXIN25000028', '2025-04-02', '2025-04-06', '2025-04-07', 'Delivered'),
(29, 29, 29, 30, 'FXIN25000029', '2025-04-05', '2025-04-09', '2025-04-09', 'Delivered'),
(30, 30, 30, 31, 'FXIN25000030', '2025-04-08', '2025-04-12', '2025-04-13', 'Delivered'),

(31, 31, 31, 32, 'FXIN25000031', '2025-04-11', '2025-04-15', '2025-04-15', 'Delivered'),
(32, 32, 32, 33, 'FXIN25000032', '2025-04-14', '2025-04-18', '2025-04-19', 'Delivered'),
(33, 33, 33, 34, 'FXIN25000033', '2025-04-17', '2025-04-21', '2025-04-21', 'Delivered'),
(34, 34, 34, 35, 'FXIN25000034', '2025-04-20', '2025-04-24', '2025-04-25', 'Delivered'),
(35, 35, 35, 36, 'FXIN25000035', '2025-04-23', '2025-04-27', '2025-04-27', 'Delivered'),
(36, 36, 36, 37, 'FXIN25000036', '2025-04-26', '2025-04-30', '2025-05-01', 'Delivered'),
(37, 37, 37, 38, 'FXIN25000037', '2025-04-29', '2025-05-03', '2025-05-03', 'Delivered'),
(38, 38, 38, 39, 'FXIN25000038', '2025-05-02', '2025-05-06', '2025-05-07', 'Delivered'),
(39, 39, 39, 40, 'FXIN25000039', '2025-05-05', '2025-05-09', '2025-05-09', 'Delivered'),
(40, 40, 40, 41, 'FXIN25000040', '2025-05-08', '2025-05-12', '2025-05-13', 'Delivered'),

(41, 41, 41, 42, 'FXIN25000041', '2025-05-11', '2025-05-15', '2025-05-15', 'Delivered'),
(42, 42, 42, 43, 'FXIN25000042', '2025-05-14', '2025-05-18', '2025-05-19', 'Delivered'),
(43, 43, 43, 44, 'FXIN25000043', '2025-05-17', '2025-05-21', '2025-05-21', 'Delivered'),
(44, 44, 44, 45, 'FXIN25000044', '2025-05-20', '2025-05-24', '2025-05-25', 'Delivered'),
(45, 45, 45, 46, 'FXIN25000045', '2025-05-23', '2025-05-27', '2025-05-27', 'Delivered'),
(46, 46, 46, 47, 'FXIN25000046', '2025-05-26', '2025-05-30', '2025-05-31', 'Delivered'),
(47, 47, 47, 48, 'FXIN25000047', '2025-05-29', '2025-06-02', '2025-06-02', 'Delivered'),
(48, 48, 48, 49, 'FXIN25000048', '2025-06-01', '2025-06-05', '2025-06-06', 'Delivered'),
(49, 49, 49, 50, 'FXIN25000049', '2025-06-04', '2025-06-08', '2025-06-08', 'Delivered'),
(50, 50, 50, 1, 'FXIN25000050', '2025-06-07', '2025-06-11', '2025-06-12', 'Delivered'),

(51, 1, 1, 2, 'FXIN25000051', '2025-06-10', '2025-06-14', '2025-06-14', 'Delivered'),
(52, 2, 2, 3, 'FXIN25000052', '2025-06-13', '2025-06-17', '2025-06-18', 'Delivered'),
(53, 3, 3, 4, 'FXIN25000053', '2025-06-16', '2025-06-20', '2025-06-20', 'Delivered'),
(54, 4, 4, 5, 'FXIN25000054', '2025-06-19', '2025-06-23', '2025-06-24', 'Delivered'),
(55, 5, 5, 6, 'FXIN25000055', '2025-06-22', '2025-06-26', '2025-06-26', 'Delivered'),
(56, 6, 6, 7, 'FXIN25000056', '2025-06-25', '2025-06-29', '2025-06-30', 'Delivered'),
(57, 7, 7, 8, 'FXIN25000057', '2025-06-28', '2025-07-02', '2025-07-02', 'Delivered'),
(58, 8, 8, 9, 'FXIN25000058', '2025-07-01', '2025-07-05', '2025-07-06', 'Delivered'),
(59, 9, 9, 10, 'FXIN25000059', '2025-07-04', '2025-07-08', '2025-07-08', 'Delivered'),
(60, 10, 10, 11, 'FXIN25000060', '2025-07-07', '2025-07-11', '2025-07-12', 'Delivered'),

(61, 11, 12, 13, 'FXIN25000061', '2025-07-10', '2025-07-14', '2025-07-14', 'Delivered'),
(62, 12, 13, 14, 'FXIN25000062', '2025-07-13', '2025-07-17', '2025-07-18', 'Delivered'),
(63, 13, 14, 15, 'FXIN25000063', '2025-07-16', '2025-07-20', '2025-07-20', 'Delivered'),
(64, 14, 15, 16, 'FXIN25000064', '2025-07-19', '2025-07-23', '2025-07-24', 'Delivered'),
(65, 15, 16, 17, 'FXIN25000065', '2025-07-22', '2025-07-26', '2025-07-26', 'Delivered'),
(66, 16, 17, 18, 'FXIN25000066', '2025-07-25', '2025-07-29', '2025-07-30', 'Delivered'),
(67, 17, 18, 19, 'FXIN25000067', '2025-07-28', '2025-08-01', '2025-08-01', 'Delivered'),
(68, 18, 19, 20, 'FXIN25000068', '2025-07-31', '2025-08-04', '2025-08-05', 'Delivered'),
(69, 19, 20, 21, 'FXIN25000069', '2025-08-03', '2025-08-07', '2025-08-07', 'Delivered'),
(70, 20, 21, 22, 'FXIN25000070', '2025-08-06', '2025-08-10', '2025-08-11', 'Delivered'),

(71, 21, 21, 22, 'FXIN25000071', '2025-08-09', '2025-08-13', NULL, 'In Transit'),
(72, 22, 22, 23, 'FXIN25000072', '2025-08-12', '2025-08-16', NULL, 'In Transit'),
(73, 23, 23, 24, 'FXIN25000073', '2025-08-15', '2025-08-19', NULL, 'Out for Delivery'),
(74, 24, 24, 25, 'FXIN25000074', '2025-08-18', '2025-08-22', NULL, 'In Transit'),
(75, 25, 25, 26, 'FXIN25000075', '2025-08-21', '2025-08-25', NULL, 'Booked'),
(76, 26, 26, 27, 'FXIN25000076', '2025-08-24', '2025-08-28', NULL, 'In Transit'),
(77, 27, 27, 28, 'FXIN25000077', '2025-08-27', '2025-08-31', NULL, 'Delayed'),
(78, 28, 28, 29, 'FXIN25000078', '2025-08-30', '2025-09-03', NULL, 'Booked'),
(79, 29, 29, 30, 'FXIN25000079', '2025-09-02', '2025-09-06', NULL, 'In Transit'),
(80, 30, 30, 31, 'FXIN25000080', '2025-09-05', '2025-09-09', NULL, 'Booked'),

(81, 31, 31, 32, 'FXIN25000081', '2025-09-08', '2025-09-12', NULL, 'In Transit'),
(82, 32, 32, 33, 'FXIN25000082', '2025-09-11', '2025-09-15', NULL, 'Out for Delivery'),
(83, 33, 33, 34, 'FXIN25000083', '2025-09-14', '2025-09-18', NULL, 'In Transit'),
(84, 34, 34, 35, 'FXIN25000084', '2025-09-17', '2025-09-21', NULL, 'Booked'),
(85, 35, 35, 36, 'FXIN25000085', '2025-09-20', '2025-09-24', NULL, 'Delayed'),
(86, 36, 36, 37, 'FXIN25000086', '2025-09-23', '2025-09-27', NULL, 'In Transit'),
(87, 37, 37, 38, 'FXIN25000087', '2025-09-26', '2025-09-30', NULL, 'Booked'),
(88, 38, 38, 39, 'FXIN25000088', '2025-09-29', '2025-10-03', NULL, 'In Transit'),
(89, 39, 39, 40, 'FXIN25000089', '2025-10-02', '2025-10-06', NULL, 'Out for Delivery'),
(90, 40, 40, 41, 'FXIN25000090', '2025-10-05', '2025-10-09', NULL, 'In Transit'),

(91, 41, 41, 42, 'FXIN25000091', '2025-10-08', '2025-10-12', NULL, 'Booked'),
(92, 42, 42, 43, 'FXIN25000092', '2025-10-11', '2025-10-15', NULL, 'In Transit'),
(93, 43, 43, 44, 'FXIN25000093', '2025-10-14', '2025-10-18', NULL, 'Delayed'),
(94, 44, 44, 45, 'FXIN25000094', '2025-10-17', '2025-10-21', NULL, 'Booked'),
(95, 45, 45, 46, 'FXIN25000095', '2025-10-20', '2025-10-24', NULL, 'In Transit'),
(96, 46, 46, 47, 'FXIN25000096', '2025-10-23', '2025-10-27', NULL, 'Out for Delivery'),
(97, 47, 47, 48, 'FXIN25000097', '2025-10-26', '2025-10-30', NULL, 'In Transit'),
(98, 48, 48, 49, 'FXIN25000098', '2025-10-29', '2025-11-02', NULL, 'Booked'),
(99, 49, 49, 50, 'FXIN25000099', '2025-11-01', '2025-11-05', NULL, 'In Transit'),
(100, 50, 50, 1, 'FXIN25000100', '2025-11-04', '2025-11-08', NULL, 'Booked');

CREATE TABLE tracking (
    tracking_id INT PRIMARY KEY,
    shipment_id INT NOT NULL,
    branch_id INT NOT NULL,
    tracking_status VARCHAR(40) NOT NULL,
    tracking_date DATE NOT NULL,
    tracking_time TIME NOT NULL,
    location VARCHAR(100) NOT NULL,
    remarks VARCHAR(200),
    FOREIGN KEY (shipment_id) REFERENCES shipments(shipment_id),
    FOREIGN KEY (branch_id) REFERENCES branches(branch_id)
);

INSERT INTO tracking
(tracking_id, shipment_id, branch_id, tracking_status,
 tracking_date, tracking_time, location, remarks)
VALUES
(1, 1, 1, 'Picked Up', '2025-01-05', '09:15:00', 'Jaipur Central Hub', 'Parcel picked up from sender'),
(2, 1, 2, 'Delivered', '2025-01-08', '16:40:00', 'Delhi Regional Hub', 'Shipment delivered successfully'),

(3, 2, 2, 'Picked Up', '2025-01-08', '10:20:00', 'Delhi Regional Hub', 'Parcel received at origin branch'),
(4, 2, 3, 'Delivered', '2025-01-13', '14:25:00', 'Mumbai Central Hub', 'Shipment delivered successfully'),

(5, 3, 3, 'Picked Up', '2025-01-12', '08:45:00', 'Mumbai Central Hub', 'Parcel picked up from sender'),
(6, 3, 4, 'Delivered', '2025-01-16', '17:10:00', 'Bengaluru Regional Hub', 'Shipment delivered successfully'),

(7, 4, 4, 'Picked Up', '2025-01-15', '11:30:00', 'Bengaluru Regional Hub', 'Parcel received at origin branch'),
(8, 4, 5, 'Delivered', '2025-01-20', '15:35:00', 'Hyderabad Central Hub', 'Shipment delivered successfully'),

(9, 5, 5, 'Picked Up', '2025-01-19', '09:40:00', 'Hyderabad Central Hub', 'Fragile parcel received'),
(10, 5, 6, 'Delivered', '2025-01-23', '13:50:00', 'Pune Regional Hub', 'Shipment delivered successfully'),

(11, 6, 6, 'Picked Up', '2025-01-22', '10:10:00', 'Pune Regional Hub', 'Parcel picked up from sender'),
(12, 6, 7, 'Delivered', '2025-01-27', '16:20:00', 'Ahmedabad Regional Hub', 'Shipment delivered successfully'),

(13, 7, 7, 'Picked Up', '2025-01-25', '08:55:00', 'Ahmedabad Regional Hub', 'Documents received'),
(14, 7, 8, 'Delivered', '2025-01-29', '12:45:00', 'Kolkata Regional Hub', 'Documents delivered to recipient'),

(15, 8, 8, 'Picked Up', '2025-01-29', '11:05:00', 'Kolkata Regional Hub', 'Cosmetics parcel accepted'),
(16, 8, 9, 'Delivered', '2025-02-03', '15:15:00', 'Chennai Regional Hub', 'Shipment delivered successfully'),

(17, 9, 9, 'Picked Up', '2025-02-02', '09:25:00', 'Chennai Regional Hub', 'Fragile electronics received'),
(18, 9, 10, 'Delivered', '2025-02-06', '17:30:00', 'Lucknow Regional Hub', 'Shipment delivered successfully'),

(19, 10, 10, 'Picked Up', '2025-02-05', '10:35:00', 'Lucknow Regional Hub', 'Books received at branch'),
(20, 10, 11, 'Delivered', '2025-02-10', '14:40:00', 'Jaipur C-Scheme Branch', 'Shipment delivered successfully'),

(21, 11, 11, 'Picked Up', '2025-02-08', '09:10:00', 'Jaipur C-Scheme Branch', 'Clothing parcel accepted'),
(22, 11, 12, 'Delivered', '2025-02-12', '16:05:00', 'Jaipur Malviya Nagar Branch', 'Shipment delivered successfully'),

(23, 12, 12, 'Picked Up', '2025-02-11', '11:20:00', 'Jaipur Malviya Nagar Branch', 'Documents received'),
(24, 12, 13, 'Delivered', '2025-02-16', '13:30:00', 'Jaipur Vaishali Nagar Branch', 'Documents delivered'),

(25, 13, 13, 'Picked Up', '2025-02-14', '08:30:00', 'Jaipur Vaishali Nagar Branch', 'Fragile electronics received'),
(26, 13, 14, 'Delivered', '2025-02-18', '15:55:00', 'Jaipur Mansarovar Branch', 'Shipment delivered successfully'),

(27, 14, 14, 'Picked Up', '2025-02-18', '10:45:00', 'Jaipur Mansarovar Branch', 'Household items received'),
(28, 14, 15, 'Delivered', '2025-02-23', '17:05:00', 'Delhi Dwarka Branch', 'Shipment delivered successfully'),

(29, 15, 15, 'Picked Up', '2025-02-21', '09:50:00', 'Delhi Dwarka Branch', 'Books received'),
(30, 15, 16, 'Delivered', '2025-02-25', '14:15:00', 'Delhi Rohini Branch', 'Shipment delivered successfully'),

(31, 16, 16, 'Picked Up', '2025-02-24', '11:15:00', 'Delhi Rohini Branch', 'Fragile electronics received'),
(32, 16, 17, 'Delivered', '2025-03-01', '16:35:00', 'Delhi Saket Branch', 'Shipment delivered successfully'),

(33, 17, 17, 'Picked Up', '2025-02-27', '08:40:00', 'Delhi Saket Branch', 'Documents received'),
(34, 17, 18, 'Delivered', '2025-03-03', '12:55:00', 'Delhi Karol Bagh Branch', 'Documents delivered'),

(35, 18, 18, 'Picked Up', '2025-03-02', '10:25:00', 'Delhi Karol Bagh Branch', 'Clothing parcel accepted'),
(36, 18, 19, 'Delivered', '2025-03-07', '15:40:00', 'Mumbai Andheri Branch', 'Shipment delivered successfully'),

(37, 19, 19, 'Picked Up', '2025-03-05', '09:35:00', 'Mumbai Andheri Branch', 'Cosmetics parcel received'),
(38, 19, 20, 'Delivered', '2025-03-09', '16:15:00', 'Mumbai Powai Branch', 'Shipment delivered successfully'),

(39, 20, 20, 'Picked Up', '2025-03-08', '08:50:00', 'Mumbai Powai Branch', 'Fragile electronics received'),
(40, 20, 21, 'Delivered', '2025-03-13', '17:20:00', 'Mumbai Thane Branch', 'Shipment delivered successfully'),

(41, 21, 21, 'Picked Up', '2025-03-11', '10:05:00', 'Mumbai Thane Branch', 'Books received'),
(42, 21, 22, 'Delivered', '2025-03-15', '14:50:00', 'Mumbai Vashi Branch', 'Shipment delivered successfully'),

(43, 22, 22, 'Picked Up', '2025-03-14', '11:35:00', 'Mumbai Vashi Branch', 'Clothing parcel received'),
(44, 22, 23, 'Delivered', '2025-03-19', '16:45:00', 'Bengaluru Whitefield Branch', 'Shipment delivered successfully'),

(45, 23, 23, 'Picked Up', '2025-03-18', '09:20:00', 'Bengaluru Whitefield Branch', 'Electronics parcel received'),
(46, 23, 24, 'Delivered', '2025-03-22', '13:55:00', 'Bengaluru Koramangala Branch', 'Shipment delivered successfully'),

(47, 24, 24, 'Picked Up', '2025-03-21', '08:35:00', 'Bengaluru Koramangala Branch', 'Documents received'),
(48, 24, 25, 'Delivered', '2025-03-26', '15:25:00', 'Bengaluru Indiranagar Branch', 'Documents delivered'),

(49, 25, 25, 'Picked Up', '2025-03-24', '10:15:00', 'Bengaluru Indiranagar Branch', 'Household items received'),
(50, 25, 26, 'Delivered', '2025-03-28', '17:00:00', 'Bengaluru Electronic City Branch', 'Shipment delivered successfully'),

(51, 26, 26, 'Picked Up', '2025-03-27', '09:45:00', 'Bengaluru Electronic City Branch', 'Electronics parcel accepted'),
(52, 26, 27, 'Delivered', '2025-04-01', '14:35:00', 'Hyderabad Banjara Hills Branch', 'Shipment delivered successfully'),

(53, 27, 27, 'Picked Up', '2025-03-30', '11:10:00', 'Hyderabad Banjara Hills Branch', 'Clothing parcel received'),
(54, 27, 28, 'Delivered', '2025-04-03', '16:50:00', 'Hyderabad Hitech City Branch', 'Shipment delivered successfully'),

(55, 28, 28, 'Picked Up', '2025-04-02', '08:25:00', 'Hyderabad Hitech City Branch', 'Books received'),
(56, 28, 29, 'Delivered', '2025-04-07', '13:45:00', 'Hyderabad Secunderabad Branch', 'Shipment delivered successfully'),

(57, 29, 29, 'Picked Up', '2025-04-05', '10:40:00', 'Hyderabad Secunderabad Branch', 'Documents received'),
(58, 29, 30, 'Delivered', '2025-04-09', '15:10:00', 'Hyderabad Kukatpally Branch', 'Documents delivered'),

(59, 30, 30, 'Picked Up', '2025-04-08', '09:05:00', 'Hyderabad Kukatpally Branch', 'Fragile electronics received'),
(60, 30, 31, 'Delivered', '2025-04-13', '17:15:00', 'Pune Kharadi Branch', 'Shipment delivered successfully'),

(61, 31, 31, 'Picked Up', '2025-04-11', '10:30:00', 'Pune Kharadi Branch', 'Clothing parcel received'),
(62, 31, 32, 'Delivered', '2025-04-15', '14:20:00', 'Pune Hinjewadi Branch', 'Shipment delivered successfully'),

(63, 32, 32, 'Picked Up', '2025-04-14', '08:55:00', 'Pune Hinjewadi Branch', 'Cosmetics parcel accepted'),
(64, 32, 33, 'Delivered', '2025-04-19', '16:30:00', 'Pune Baner Branch', 'Shipment delivered successfully'),

(65, 33, 33, 'Picked Up', '2025-04-17', '11:25:00', 'Pune Baner Branch', 'Books received'),
(66, 33, 34, 'Delivered', '2025-04-21', '13:40:00', 'Pune Hadapsar Branch', 'Shipment delivered successfully'),

(67, 34, 34, 'Picked Up', '2025-04-20', '09:35:00', 'Pune Hadapsar Branch', 'Electronics parcel received'),
(68, 34, 35, 'Delivered', '2025-04-25', '15:50:00', 'Ahmedabad Satellite Branch', 'Shipment delivered successfully'),

(69, 35, 35, 'Picked Up', '2025-04-23', '10:10:00', 'Ahmedabad Satellite Branch', 'Documents received'),
(70, 35, 36, 'Delivered', '2025-04-27', '16:05:00', 'Ahmedabad Navrangpura Branch', 'Shipment delivered successfully'),

(71, 36, 36, 'Picked Up', '2025-04-26', '08:45:00', 'Ahmedabad Navrangpura Branch', 'Household items received'),
(72, 36, 37, 'Delivered', '2025-05-01', '14:55:00', 'Ahmedabad Vastrapur Branch', 'Shipment delivered successfully'),

(73, 37, 37, 'Picked Up', '2025-04-29', '11:00:00', 'Ahmedabad Vastrapur Branch', 'Clothing parcel received'),
(74, 37, 38, 'Delivered', '2025-05-03', '17:25:00', 'Kolkata Salt Lake Branch', 'Shipment delivered successfully'),

(75, 38, 38, 'Picked Up', '2025-05-02', '09:30:00', 'Kolkata Salt Lake Branch', 'Fragile electronics received'),
(76, 38, 39, 'Delivered', '2025-05-07', '15:35:00', 'Kolkata Park Street Branch', 'Shipment delivered successfully'),

(77, 39, 39, 'Picked Up', '2025-05-05', '10:45:00', 'Kolkata Park Street Branch', 'Books received'),
(78, 39, 40, 'Delivered', '2025-05-09', '13:25:00', 'Kolkata New Town Branch', 'Shipment delivered successfully'),

(79, 40, 40, 'Picked Up', '2025-05-08', '08:50:00', 'Kolkata New Town Branch', 'Documents received'),
(80, 40, 41, 'Delivered', '2025-05-13', '16:40:00', 'Chennai T Nagar Branch', 'Shipment delivered successfully'),

(81, 41, 41, 'Picked Up', '2025-05-11', '09:15:00', 'Chennai T Nagar Branch', 'Fragile electronics received'),
(82, 41, 42, 'Delivered', '2025-05-15', '15:20:00', 'Chennai Velachery Branch', 'Shipment delivered successfully'),

(83, 42, 42, 'Picked Up', '2025-05-14', '10:05:00', 'Chennai Velachery Branch', 'Clothing parcel received'),
(84, 42, 43, 'Delivered', '2025-05-19', '17:10:00', 'Chennai Adyar Branch', 'Shipment delivered successfully'),

(85, 43, 43, 'Picked Up', '2025-05-17', '08:40:00', 'Chennai Adyar Branch', 'Cosmetics parcel accepted'),
(86, 43, 44, 'Delivered', '2025-05-21', '14:35:00', 'Lucknow Gomti Nagar Branch', 'Shipment delivered successfully'),

(87, 44, 44, 'Picked Up', '2025-05-20', '11:20:00', 'Lucknow Gomti Nagar Branch', 'Books received'),
(88, 44, 45, 'Delivered', '2025-05-25', '16:25:00', 'Lucknow Hazratganj Branch', 'Shipment delivered successfully'),

(89, 45, 45, 'Picked Up', '2025-05-23', '09:50:00', 'Lucknow Hazratganj Branch', 'Fragile electronics received'),
(90, 45, 46, 'Delivered', '2025-05-27', '15:45:00', 'Lucknow Aliganj Branch', 'Shipment delivered successfully'),

(91, 46, 46, 'Picked Up', '2025-05-26', '10:30:00', 'Lucknow Aliganj Branch', 'Documents received'),
(92, 46, 47, 'Delivered', '2025-05-31', '17:00:00', 'Gurugram Cyber City Branch', 'Shipment delivered successfully'),

(93, 47, 47, 'Picked Up', '2025-05-29', '08:55:00', 'Gurugram Cyber City Branch', 'Household items received'),
(94, 47, 48, 'Delivered', '2025-06-02', '14:15:00', 'Noida Sector 62 Branch', 'Shipment delivered successfully'),

(95, 48, 48, 'Picked Up', '2025-06-01', '11:05:00', 'Noida Sector 62 Branch', 'Clothing parcel received'),
(96, 48, 49, 'Delivered', '2025-06-06', '16:35:00', 'Indore Vijay Nagar Branch', 'Shipment delivered successfully'),

(97, 49, 49, 'Picked Up', '2025-06-04', '09:25:00', 'Indore Vijay Nagar Branch', 'Electronics parcel received'),
(98, 49, 50, 'Delivered', '2025-06-08', '15:05:00', 'Bhopal MP Nagar Branch', 'Shipment delivered successfully'),

(99, 50, 50, 'Picked Up', '2025-06-07', '10:15:00', 'Bhopal MP Nagar Branch', 'Books received'),
(100, 50, 1, 'Delivered', '2025-06-12', '16:45:00', 'Jaipur Central Hub', 'Shipment delivered successfully'),

(101, 51, 1, 'Picked Up', '2025-06-10', '09:35:00', 'Jaipur Central Hub', 'Documents received'),
(102, 51, 2, 'Delivered', '2025-06-14', '14:50:00', 'Delhi Regional Hub', 'Shipment delivered successfully'),

(103, 52, 2, 'Picked Up', '2025-06-13', '10:25:00', 'Delhi Regional Hub', 'Fragile electronics received'),
(104, 52, 3, 'Delivered', '2025-06-18', '16:20:00', 'Mumbai Central Hub', 'Shipment delivered successfully'),

(105, 53, 3, 'Picked Up', '2025-06-16', '08:50:00', 'Mumbai Central Hub', 'Clothing parcel received'),
(106, 53, 4, 'Delivered', '2025-06-20', '15:40:00', 'Bengaluru Regional Hub', 'Shipment delivered successfully'),

(107, 54, 4, 'Picked Up', '2025-06-19', '11:10:00', 'Bengaluru Regional Hub', 'Cosmetics parcel accepted'),
(108, 54, 5, 'Delivered', '2025-06-24', '17:15:00', 'Hyderabad Central Hub', 'Shipment delivered successfully'),

(109, 55, 5, 'Picked Up', '2025-06-22', '09:45:00', 'Hyderabad Central Hub', 'Household items received'),
(110, 55, 6, 'Delivered', '2025-06-26', '14:30:00', 'Pune Regional Hub', 'Shipment delivered successfully'),

(111, 56, 6, 'Picked Up', '2025-06-25', '10:05:00', 'Pune Regional Hub', 'Electronics parcel received'),
(112, 56, 7, 'Delivered', '2025-06-30', '16:55:00', 'Ahmedabad Regional Hub', 'Shipment delivered successfully'),

(113, 57, 7, 'Picked Up', '2025-06-28', '08:35:00', 'Ahmedabad Regional Hub', 'Books received'),
(114, 57, 8, 'Delivered', '2025-07-02', '13:45:00', 'Kolkata Regional Hub', 'Shipment delivered successfully'),

(115, 58, 8, 'Picked Up', '2025-07-01', '11:25:00', 'Kolkata Regional Hub', 'Documents received'),
(116, 58, 9, 'Delivered', '2025-07-06', '15:30:00', 'Chennai Regional Hub', 'Shipment delivered successfully'),

(117, 59, 9, 'Picked Up', '2025-07-04', '09:20:00', 'Chennai Regional Hub', 'Clothing parcel accepted'),
(118, 59, 10, 'Delivered', '2025-07-08', '16:10:00', 'Lucknow Regional Hub', 'Shipment delivered successfully'),

(119, 60, 10, 'Picked Up', '2025-07-07', '10:40:00', 'Lucknow Regional Hub', 'Fragile electronics received'),
(120, 60, 11, 'Delivered', '2025-07-12', '17:05:00', 'Jaipur C-Scheme Branch', 'Shipment delivered successfully'),

(121, 61, 11, 'Picked Up', '2025-07-10', '08:55:00', 'Jaipur C-Scheme Branch', 'Books received'),
(122, 61, 12, 'Delivered', '2025-07-14', '14:25:00', 'Jaipur Malviya Nagar Branch', 'Shipment delivered successfully'),

(123, 62, 12, 'Picked Up', '2025-07-13', '11:15:00', 'Jaipur Malviya Nagar Branch', 'Documents received'),
(124, 62, 13, 'Delivered', '2025-07-18', '16:45:00', 'Jaipur Vaishali Nagar Branch', 'Shipment delivered successfully'),

(125, 63, 13, 'Picked Up', '2025-07-16', '09:40:00', 'Jaipur Vaishali Nagar Branch', 'Electronics parcel received'),
(126, 63, 14, 'Delivered', '2025-07-20', '15:35:00', 'Jaipur Mansarovar Branch', 'Shipment delivered successfully'),

(127, 64, 14, 'Picked Up', '2025-07-19', '10:20:00', 'Jaipur Mansarovar Branch', 'Clothing parcel accepted'),
(128, 64, 15, 'Delivered', '2025-07-24', '17:00:00', 'Delhi Dwarka Branch', 'Shipment delivered successfully'),

(129, 65, 15, 'Picked Up', '2025-07-22', '08:45:00', 'Delhi Dwarka Branch', 'Household items received'),
(130, 65, 16, 'Delivered', '2025-07-26', '14:15:00', 'Delhi Rohini Branch', 'Shipment delivered successfully'),

(131, 66, 16, 'Picked Up', '2025-07-25', '11:30:00', 'Delhi Rohini Branch', 'Cosmetics parcel accepted'),
(132, 66, 17, 'Delivered', '2025-07-30', '16:20:00', 'Delhi Saket Branch', 'Shipment delivered successfully'),

(133, 67, 17, 'Picked Up', '2025-07-28', '09:10:00', 'Delhi Saket Branch', 'Electronics parcel received'),
(134, 67, 18, 'Delivered', '2025-08-01', '15:50:00', 'Delhi Karol Bagh Branch', 'Shipment delivered successfully'),

(135, 68, 18, 'Picked Up', '2025-07-31', '10:35:00', 'Delhi Karol Bagh Branch', 'Books received'),
(136, 68, 19, 'Delivered', '2025-08-05', '17:10:00', 'Mumbai Andheri Branch', 'Shipment delivered successfully'),

(137, 69, 19, 'Picked Up', '2025-08-03', '08:50:00', 'Mumbai Andheri Branch', 'Documents received'),
(138, 69, 20, 'Delivered', '2025-08-07', '14:40:00', 'Mumbai Powai Branch', 'Shipment delivered successfully'),

(139, 70, 20, 'Picked Up', '2025-08-06', '11:05:00', 'Mumbai Powai Branch', 'Clothing parcel accepted'),
(140, 70, 21, 'Delivered', '2025-08-11', '16:35:00', 'Mumbai Thane Branch', 'Shipment delivered successfully'),

(141, 71, 21, 'Picked Up', '2025-08-09', '09:25:00', 'Mumbai Thane Branch', 'Electronics parcel received'),
(142, 71, 22, 'In Transit', '2025-08-12', '13:50:00', 'Mumbai Vashi Branch', 'Shipment currently in transit'),

(143, 72, 22, 'Picked Up', '2025-08-12', '10:10:00', 'Mumbai Vashi Branch', 'Household items received'),
(144, 72, 23, 'In Transit', '2025-08-15', '15:25:00', 'Bengaluru Whitefield Branch', 'Shipment moving to destination'),

(145, 73, 23, 'Picked Up', '2025-08-15', '08:40:00', 'Bengaluru Whitefield Branch', 'Books received'),
(146, 73, 24, 'Out for Delivery', '2025-08-18', '11:35:00', 'Bengaluru Koramangala Branch', 'Shipment handed to delivery team'),

(147, 74, 24, 'Picked Up', '2025-08-18', '10:05:00', 'Bengaluru Koramangala Branch', 'Documents received'),
(148, 74, 25, 'In Transit', '2025-08-21', '16:10:00', 'Bengaluru Indiranagar Branch', 'Shipment currently in transit'),

(149, 75, 25, 'Picked Up', '2025-08-21', '09:30:00', 'Bengaluru Indiranagar Branch', 'Electronics parcel received'),
(150, 75, 26, 'Booked', '2025-08-21', '11:45:00', 'Bengaluru Electronic City Branch', 'Shipment booking confirmed'),

(151, 76, 26, 'Picked Up', '2025-08-24', '10:20:00', 'Bengaluru Electronic City Branch', 'Clothing parcel received'),
(152, 76, 27, 'In Transit', '2025-08-27', '14:30:00', 'Hyderabad Banjara Hills Branch', 'Shipment moving to destination'),

(153, 77, 27, 'Picked Up', '2025-08-27', '09:15:00', 'Hyderabad Banjara Hills Branch', 'Electronics parcel received'),
(154, 77, 28, 'Delayed', '2025-08-31', '17:20:00', 'Hyderabad Hitech City Branch', 'Shipment delayed due to operational issue'),

(155, 78, 28, 'Picked Up', '2025-08-30', '11:05:00', 'Hyderabad Hitech City Branch', 'Books received'),
(156, 78, 29, 'Booked', '2025-08-30', '13:15:00', 'Hyderabad Secunderabad Branch', 'Shipment booking confirmed'),

(157, 79, 29, 'Picked Up', '2025-09-02', '08:50:00', 'Hyderabad Secunderabad Branch', 'Documents received'),
(158, 79, 30, 'In Transit', '2025-09-05', '15:40:00', 'Hyderabad Kukatpally Branch', 'Shipment currently in transit'),

(159, 80, 30, 'Picked Up', '2025-09-05', '10:25:00', 'Hyderabad Kukatpally Branch', 'Electronics parcel received'),
(160, 80, 31, 'Booked', '2025-09-05', '12:10:00', 'Pune Kharadi Branch', 'Shipment booking confirmed'),

(161, 81, 31, 'Picked Up', '2025-09-08', '09:35:00', 'Pune Kharadi Branch', 'Household items received'),
(162, 81, 32, 'In Transit', '2025-09-11', '16:25:00', 'Pune Hinjewadi Branch', 'Shipment currently in transit'),

(163, 82, 32, 'Picked Up', '2025-09-11', '10:15:00', 'Pune Hinjewadi Branch', 'Clothing parcel received'),
(164, 82, 33, 'Out for Delivery', '2025-09-14', '11:20:00', 'Pune Baner Branch', 'Shipment handed to delivery team'),

(165, 83, 33, 'Picked Up', '2025-09-14', '08:45:00', 'Pune Baner Branch', 'Electronics parcel received'),
(166, 83, 34, 'In Transit', '2025-09-17', '15:35:00', 'Pune Hadapsar Branch', 'Shipment currently in transit'),

(167, 84, 34, 'Picked Up', '2025-09-17', '09:50:00', 'Pune Hadapsar Branch', 'Books received'),
(168, 84, 35, 'Booked', '2025-09-17', '11:40:00', 'Ahmedabad Satellite Branch', 'Shipment booking confirmed'),

(169, 85, 35, 'Picked Up', '2025-09-20', '10:30:00', 'Ahmedabad Satellite Branch', 'Documents received'),
(170, 85, 36, 'Delayed', '2025-09-24', '16:50:00', 'Ahmedabad Navrangpura Branch', 'Shipment delayed due to operational issue'),

(171, 86, 36, 'Picked Up', '2025-09-23', '09:05:00', 'Ahmedabad Navrangpura Branch', 'Electronics parcel received'),
(172, 86, 37, 'In Transit', '2025-09-26', '14:45:00', 'Ahmedabad Vastrapur Branch', 'Shipment currently in transit'),

(173, 87, 37, 'Picked Up', '2025-09-26', '11:15:00', 'Ahmedabad Vastrapur Branch', 'Clothing parcel received'),
(174, 87, 38, 'Booked', '2025-09-26', '13:05:00', 'Kolkata Salt Lake Branch', 'Shipment booking confirmed'),

(175, 88, 38, 'Picked Up', '2025-09-29', '08:40:00', 'Kolkata Salt Lake Branch', 'Household items received'),
(176, 88, 39, 'In Transit', '2025-10-02', '16:15:00', 'Kolkata Park Street Branch', 'Shipment currently in transit'),

(177, 89, 39, 'Picked Up', '2025-10-02', '10:05:00', 'Kolkata Park Street Branch', 'Cosmetics parcel received'),
(178, 89, 40, 'Out for Delivery', '2025-10-05', '11:45:00', 'Kolkata New Town Branch', 'Shipment handed to delivery team'),

(179, 90, 40, 'Picked Up', '2025-10-05', '09:30:00', 'Kolkata New Town Branch', 'Electronics parcel received'),
(180, 90, 41, 'In Transit', '2025-10-08', '15:55:00', 'Chennai T Nagar Branch', 'Shipment currently in transit'),

(181, 91, 41, 'Picked Up', '2025-10-08', '10:20:00', 'Chennai T Nagar Branch', 'Books received'),
(182, 91, 42, 'Booked', '2025-10-08', '12:05:00', 'Chennai Velachery Branch', 'Shipment booking confirmed'),

(183, 92, 42, 'Picked Up', '2025-10-11', '08:55:00', 'Chennai Velachery Branch', 'Documents received'),
(184, 92, 43, 'In Transit', '2025-10-14', '16:30:00', 'Chennai Adyar Branch', 'Shipment currently in transit'),

(185, 93, 43, 'Picked Up', '2025-10-14', '09:45:00', 'Chennai Adyar Branch', 'Clothing parcel received'),
(186, 93, 44, 'Delayed', '2025-10-18', '17:05:00', 'Lucknow Gomti Nagar Branch', 'Shipment delayed due to operational issue'),

(187, 94, 44, 'Picked Up', '2025-10-17', '11:10:00', 'Lucknow Gomti Nagar Branch', 'Electronics parcel received'),
(188, 94, 45, 'Booked', '2025-10-17', '13:20:00', 'Lucknow Hazratganj Branch', 'Shipment booking confirmed'),

(189, 95, 45, 'Picked Up', '2025-10-20', '08:35:00', 'Lucknow Hazratganj Branch', 'Household items received'),
(190, 95, 46, 'In Transit', '2025-10-23', '15:45:00', 'Lucknow Aliganj Branch', 'Shipment currently in transit'),

(191, 96, 46, 'Picked Up', '2025-10-23', '10:25:00', 'Lucknow Aliganj Branch', 'Electronics parcel received'),
(192, 96, 47, 'Out for Delivery', '2025-10-26', '11:50:00', 'Gurugram Cyber City Branch', 'Shipment handed to delivery team'),

(193, 97, 47, 'Picked Up', '2025-10-26', '09:15:00', 'Gurugram Cyber City Branch', 'Books received'),
(194, 97, 48, 'In Transit', '2025-10-29', '16:05:00', 'Noida Sector 62 Branch', 'Shipment currently in transit'),

(195, 98, 48, 'Picked Up', '2025-10-29', '10:35:00', 'Noida Sector 62 Branch', 'Documents received'),
(196, 98, 49, 'Booked', '2025-10-29', '12:25:00', 'Indore Vijay Nagar Branch', 'Shipment booking confirmed'),

(197, 99, 49, 'Picked Up', '2025-11-01', '08:50:00', 'Indore Vijay Nagar Branch', 'Clothing parcel received'),
(198, 99, 50, 'In Transit', '2025-11-04', '15:20:00', 'Bhopal MP Nagar Branch', 'Shipment currently in transit'),

(199, 100, 50, 'Picked Up', '2025-11-04', '10:10:00', 'Bhopal MP Nagar Branch', 'Electronics parcel received'),
(200, 100, 1, 'Booked', '2025-11-04', '12:40:00', 'Jaipur Central Hub', 'Shipment booking confirmed');

CREATE TABLE delivery_agents (
    agent_id INT PRIMARY KEY,
    agent_name VARCHAR(100) NOT NULL,
    phone VARCHAR(15) NOT NULL,
    email VARCHAR(100),
    branch_id INT NOT NULL,
    vehicle_type VARCHAR(30),
    vehicle_number VARCHAR(20),
    employment_status VARCHAR(30) DEFAULT 'Active',

    FOREIGN KEY (branch_id) REFERENCES branches(branch_id)
);

INSERT INTO delivery_agents
(agent_id, agent_name, phone, email, branch_id, vehicle_type, vehicle_number, employment_status)
VALUES
(1, 'Rajesh Meena', '9876501001', 'rajesh.meena@swiftship.in', 1, 'Van', 'RJ14AB1021', 'Active'),
(2, 'Aman Sharma', '9876501002', 'aman.sharma@swiftship.in', 2, 'Bike', 'DL01CD2345', 'Active'),
(3, 'Vikram Singh', '9876501003', 'vikram.singh@swiftship.in', 3, 'Van', 'MH01EF3456', 'Active'),
(4, 'Rohit Verma', '9876501004', 'rohit.verma@swiftship.in', 4, 'Truck', 'KA01GH4567', 'Active'),
(5, 'Sandeep Yadav', '9876501005', 'sandeep.yadav@swiftship.in', 5, 'Bike', 'TS09JK5678', 'Active'),
(6, 'Karan Malhotra', '9876501006', 'karan.malhotra@swiftship.in', 6, 'Van', 'MH12LM6789', 'Active'),
(7, 'Deepak Joshi', '9876501007', 'deepak.joshi@swiftship.in', 7, 'Bike', 'GJ01NP7890', 'Active'),
(8, 'Arjun Kapoor', '9876501008', 'arjun.kapoor@swiftship.in', 8, 'Van', 'WB02QR8901', 'Active'),
(9, 'Manish Gupta', '9876501009', 'manish.gupta@swiftship.in', 9, 'Truck', 'TN01ST9012', 'Active'),
(10, 'Nitin Bansal', '9876501010', 'nitin.bansal@swiftship.in', 10, 'Bike', 'UP32UV0123', 'Active'),

(11, 'Harish Chauhan', '9876501011', 'harish.chauhan@swiftship.in', 11, 'Van', 'RJ14WX1234', 'Active'),
(12, 'Mohit Agarwal', '9876501012', 'mohit.agarwal@swiftship.in', 12, 'Bike', 'RJ14YZ2345', 'Active'),
(13, 'Ankit Saini', '9876501013', 'ankit.saini@swiftship.in', 13, 'Van', 'RJ14AA3456', 'Active'),
(14, 'Yash Sharma', '9876501014', 'yash.sharma@swiftship.in', 14, 'Bike', 'RJ14BB4567', 'Active'),
(15, 'Gaurav Jain', '9876501015', 'gaurav.jain@swiftship.in', 15, 'Van', 'DL08CC5678', 'Active'),
(16, 'Akash Tiwari', '9876501016', 'akash.tiwari@swiftship.in', 16, 'Truck', 'DL08DD6789', 'Active'),
(17, 'Rakesh Kumar', '9876501017', 'rakesh.kumar@swiftship.in', 17, 'Bike', 'DL08EE7890', 'On Leave'),
(18, 'Piyush Mittal', '9876501018', 'piyush.mittal@swiftship.in', 18, 'Van', 'DL08FF8901', 'Active'),
(19, 'Abhishek Roy', '9876501019', 'abhishek.roy@swiftship.in', 19, 'Bike', 'MH04GG9012', 'Active'),
(20, 'Sameer Khan', '9876501020', 'sameer.khan@swiftship.in', 20, 'Van', 'MH04HH0123', 'Active'),

(21, 'Tarun Saxena', '9876501021', 'tarun.saxena@swiftship.in', 21, 'Bike', 'MH04JJ1234', 'Active'),
(22, 'Neeraj Arora', '9876501022', 'neeraj.arora@swiftship.in', 22, 'Van', 'MH04KK2345', 'Active'),
(23, 'Varun Mehta', '9876501023', 'varun.mehta@swiftship.in', 23, 'Truck', 'KA03LL3456', 'Active'),
(24, 'Ravi Shukla', '9876501024', 'ravi.shukla@swiftship.in', 24, 'Bike', 'KA03MM4567', 'Active'),
(25, 'Sachin Rawat', '9876501025', 'sachin.rawat@swiftship.in', 25, 'Van', 'KA03NN5678', 'Active'),
(26, 'Prateek Mishra', '9876501026', 'prateek.mishra@swiftship.in', 26, 'Bike', 'KA03PP6789', 'Active'),
(27, 'Sumit Thakur', '9876501027', 'sumit.thakur@swiftship.in', 27, 'Van', 'TS10QQ7890', 'Active'),
(28, 'Amit Patel', '9876501028', 'amit.patel@swiftship.in', 28, 'Truck', 'TS10RR8901', 'Active'),
(29, 'Kunal Desai', '9876501029', 'kunal.desai@swiftship.in', 29, 'Bike', 'TS10SS9012', 'Active'),
(30, 'Devendra Rao', '9876501030', 'devendra.rao@swiftship.in', 30, 'Van', 'TS10TT0123', 'Inactive'),

(31, 'Saurabh Pandey', '9876501031', 'saurabh.pandey@swiftship.in', 31, 'Bike', 'MH14UU1234', 'Active'),
(32, 'Vivek Kulkarni', '9876501032', 'vivek.kulkarni@swiftship.in', 32, 'Van', 'MH14VV2345', 'Active'),
(33, 'Aditya Deshmukh', '9876501033', 'aditya.deshmukh@swiftship.in', 33, 'Bike', 'MH14WW3456', 'Active'),
(34, 'Omkar Patil', '9876501034', 'omkar.patil@swiftship.in', 34, 'Truck', 'MH14XX4567', 'Active'),
(35, 'Rahul Joshi', '9876501035', 'rahul.joshi@swiftship.in', 35, 'Van', 'GJ01YY5678', 'Active'),
(36, 'Dhruv Shah', '9876501036', 'dhruv.shah@swiftship.in', 36, 'Bike', 'GJ01ZZ6789', 'Active'),
(37, 'Jayesh Mehta', '9876501037', 'jayesh.mehta@swiftship.in', 37, 'Van', 'GJ01AB7891', 'Active'),
(38, 'Himanshu Joshi', '9876501038', 'himanshu.joshi@swiftship.in', 38, 'Bike', 'GJ01CD8902', 'Active'),
(39, 'Siddharth Bose', '9876501039', 'siddharth.bose@swiftship.in', 39, 'Van', 'WB06EF9013', 'On Leave'),
(40, 'Abhinav Das', '9876501040', 'abhinav.das@swiftship.in', 40, 'Truck', 'WB06GH0124', 'Active'),

(41, 'Keshav Iyer', '9876501041', 'keshav.iyer@swiftship.in', 41, 'Bike', 'TN09JK1235', 'Active'),
(42, 'Sanjay Menon', '9876501042', 'sanjay.menon@swiftship.in', 42, 'Van', 'TN09LM2346', 'Active'),
(43, 'Vijay Nair', '9876501043', 'vijay.nair@swiftship.in', 43, 'Bike', 'TN09NP3457', 'Active'),
(44, 'Ashwin Kumar', '9876501044', 'ashwin.kumar@swiftship.in', 44, 'Van', 'UP32QR4568', 'Active'),
(45, 'Raghav Gupta', '9876501045', 'raghav.gupta@swiftship.in', 45, 'Truck', 'UP32ST5679', 'Active'),
(46, 'Akhil Srivastava', '9876501046', 'akhil.srivastava@swiftship.in', 46, 'Bike', 'UP32UV6780', 'Active'),
(47, 'Varun Kapoor', '9876501047', 'varun.kapoor@swiftship.in', 47, 'Van', 'HR26WX7891', 'Active'),
(48, 'Naveen Yadav', '9876501048', 'naveen.yadav@swiftship.in', 48, 'Bike', 'UP16YZ8902', 'Active'),
(49, 'Rajat Singhal', '9876501049', 'rajat.singhal@swiftship.in', 49, 'Van', 'MP09AA9013', 'Active'),
(50, 'Ashish Jain', '9876501050', 'ashish.jain@swiftship.in', 50, 'Truck', 'MP04BB0124', 'Active'),

(51, 'Lokesh Sharma', '9876501051', 'lokesh.sharma@swiftship.in', 1, 'Bike', 'RJ14CC1235', 'Active'),
(52, 'Mayank Gupta', '9876501052', 'mayank.gupta@swiftship.in', 5, 'Van', 'TS09DD2346', 'Active'),
(53, 'Rohan Sethi', '9876501053', 'rohan.sethi@swiftship.in', 10, 'Bike', 'UP32EE3457', 'Active'),
(54, 'Aayush Verma', '9876501054', 'aayush.verma@swiftship.in', 15, 'Van', 'DL08FF4568', 'Active'),
(55, 'Shubham Singh', '9876501055', 'shubham.singh@swiftship.in', 20, 'Bike', 'MH04GG5679', 'Active'),
(56, 'Vishal Yadav', '9876501056', 'vishal.yadav@swiftship.in', 25, 'Van', 'KA03HH6780', 'Active'),
(57, 'Abhay Raj', '9876501057', 'abhay.raj@swiftship.in', 30, 'Bike', 'TS10JJ7891', 'Active'),
(58, 'Nikhil Jain', '9876501058', 'nikhil.jain@swiftship.in', 35, 'Van', 'GJ01KK8902', 'Active'),
(59, 'Manav Arora', '9876501059', 'manav.arora@swiftship.in', 40, 'Bike', 'WB06LL9013', 'Active'),
(60, 'Kartik Sharma', '9876501060', 'kartik.sharma@swiftship.in', 45, 'Van', 'UP32MM0124', 'Active');

CREATE TABLE delivery_assignments (
    assignment_id INT PRIMARY KEY,
    shipment_id INT NOT NULL,
    agent_id INT NOT NULL,
    assignment_date DATE NOT NULL,
    delivery_date DATE,
    assignment_status VARCHAR(30) NOT NULL,
    delivery_attempts INT DEFAULT 0,
    delivery_notes VARCHAR(200),
    
    FOREIGN KEY (shipment_id) REFERENCES shipments(shipment_id),
    FOREIGN KEY (agent_id) REFERENCES delivery_agents(agent_id)
);

INSERT INTO delivery_assignments
(assignment_id, shipment_id, agent_id, assignment_date,
 delivery_date, assignment_status, delivery_attempts, delivery_notes)
VALUES
(1,1,1,'2025-01-06','2025-01-08','Delivered',1,'Successfully delivered'),
(2,2,2,'2025-01-09','2025-01-13','Delivered',1,'Recipient available'),
(3,3,3,'2025-01-13','2025-01-16','Delivered',1,'Successfully delivered'),
(4,4,4,'2025-01-16','2025-01-20','Delivered',1,'Recipient available'),
(5,5,5,'2025-01-20','2025-01-23','Delivered',1,'Successfully delivered'),
(6,6,6,'2025-01-23','2025-01-27','Delivered',1,'Successfully delivered'),
(7,7,7,'2025-01-26','2025-01-29','Delivered',1,'Recipient available'),
(8,8,8,'2025-01-30','2025-02-03','Delivered',1,'Successfully delivered'),
(9,9,9,'2025-02-03','2025-02-06','Delivered',1,'Successfully delivered'),
(10,10,10,'2025-02-06','2025-02-10','Delivered',1,'Recipient available'),

(11,11,11,'2025-02-09','2025-02-12','Delivered',1,'Successfully delivered'),
(12,12,12,'2025-02-12','2025-02-16','Delivered',1,'Successfully delivered'),
(13,13,13,'2025-02-15','2025-02-18','Delivered',1,'Recipient available'),
(14,14,14,'2025-02-19','2025-02-23','Delivered',1,'Successfully delivered'),
(15,15,15,'2025-02-22','2025-02-25','Delivered',1,'Successfully delivered'),
(16,16,16,'2025-02-25','2025-03-01','Delivered',1,'Recipient available'),
(17,17,17,'2025-02-28','2025-03-03','Delivered',1,'Successfully delivered'),
(18,18,18,'2025-03-03','2025-03-07','Delivered',1,'Successfully delivered'),
(19,19,19,'2025-03-06','2025-03-09','Delivered',1,'Recipient available'),
(20,20,20,'2025-03-09','2025-03-13','Delivered',1,'Successfully delivered'),

(21,21,21,'2025-03-12','2025-03-15','Delivered',1,'Successfully delivered'),
(22,22,22,'2025-03-15','2025-03-19','Delivered',1,'Recipient available'),
(23,23,23,'2025-03-19','2025-03-22','Delivered',1,'Successfully delivered'),
(24,24,24,'2025-03-22','2025-03-26','Delivered',1,'Successfully delivered'),
(25,25,25,'2025-03-25','2025-03-28','Delivered',1,'Recipient available'),
(26,26,26,'2025-03-28','2025-04-01','Delivered',1,'Successfully delivered'),
(27,27,27,'2025-03-31','2025-04-03','Delivered',1,'Successfully delivered'),
(28,28,28,'2025-04-03','2025-04-07','Delivered',1,'Recipient available'),
(29,29,29,'2025-04-06','2025-04-09','Delivered',1,'Successfully delivered'),
(30,30,30,'2025-04-09','2025-04-13','Delivered',1,'Successfully delivered'),

(31,31,31,'2025-04-12','2025-04-15','Delivered',1,'Recipient available'),
(32,32,32,'2025-04-15','2025-04-19','Delivered',1,'Successfully delivered'),
(33,33,33,'2025-04-18','2025-04-21','Delivered',1,'Successfully delivered'),
(34,34,34,'2025-04-21','2025-04-25','Delivered',1,'Recipient available'),
(35,35,35,'2025-04-24','2025-04-27','Delivered',1,'Successfully delivered'),
(36,36,36,'2025-04-27','2025-05-01','Delivered',1,'Successfully delivered'),
(37,37,37,'2025-04-30','2025-05-03','Delivered',1,'Recipient available'),
(38,38,38,'2025-05-03','2025-05-07','Delivered',1,'Successfully delivered'),
(39,39,39,'2025-05-06','2025-05-09','Delivered',1,'Successfully delivered'),
(40,40,40,'2025-05-09','2025-05-13','Delivered',1,'Recipient available'),

(41,41,41,'2025-05-12','2025-05-15','Delivered',1,'Successfully delivered'),
(42,42,42,'2025-05-15','2025-05-19','Delivered',1,'Successfully delivered'),
(43,43,43,'2025-05-18','2025-05-21','Delivered',1,'Recipient available'),
(44,44,44,'2025-05-21','2025-05-25','Delivered',1,'Successfully delivered'),
(45,45,45,'2025-05-24','2025-05-27','Delivered',1,'Successfully delivered'),
(46,46,46,'2025-05-27','2025-05-31','Delivered',1,'Recipient available'),
(47,47,47,'2025-05-30','2025-06-02','Delivered',1,'Successfully delivered'),
(48,48,48,'2025-06-02','2025-06-06','Delivered',1,'Successfully delivered'),
(49,49,49,'2025-06-05','2025-06-08','Delivered',1,'Recipient available'),
(50,50,50,'2025-06-08','2025-06-12','Delivered',1,'Successfully delivered'),

(51,51,51,'2025-06-11','2025-06-14','Delivered',1,'Successfully delivered'),
(52,52,52,'2025-06-14','2025-06-18','Delivered',1,'Recipient available'),
(53,53,53,'2025-06-17','2025-06-20','Delivered',1,'Successfully delivered'),
(54,54,54,'2025-06-20','2025-06-24','Delivered',1,'Successfully delivered'),
(55,55,55,'2025-06-23','2025-06-26','Delivered',1,'Recipient available'),
(56,56,56,'2025-06-26','2025-06-30','Delivered',1,'Successfully delivered'),
(57,57,57,'2025-06-29','2025-07-02','Delivered',1,'Successfully delivered'),
(58,58,58,'2025-07-02','2025-07-06','Delivered',1,'Recipient available'),
(59,59,59,'2025-07-05','2025-07-08','Delivered',1,'Successfully delivered'),
(60,60,60,'2025-07-08','2025-07-12','Delivered',1,'Successfully delivered'),

(61,61,1,'2025-07-11','2025-07-14','Delivered',1,'Recipient available'),
(62,62,2,'2025-07-14','2025-07-18','Delivered',1,'Successfully delivered'),
(63,63,3,'2025-07-17','2025-07-20','Delivered',1,'Successfully delivered'),
(64,64,4,'2025-07-20','2025-07-24','Delivered',1,'Recipient available'),
(65,65,5,'2025-07-23','2025-07-26','Delivered',1,'Successfully delivered'),
(66,66,6,'2025-07-26','2025-07-30','Delivered',1,'Successfully delivered'),
(67,67,7,'2025-07-29','2025-08-01','Delivered',1,'Recipient available'),
(68,68,8,'2025-08-01','2025-08-05','Delivered',1,'Successfully delivered'),
(69,69,9,'2025-08-04','2025-08-07','Delivered',1,'Successfully delivered'),
(70,70,10,'2025-08-07','2025-08-11','Delivered',1,'Recipient available'),

(71,71,11,'2025-08-10',NULL,'In Transit',0,'Shipment currently in transit'),
(72,72,12,'2025-08-13',NULL,'In Transit',0,'Shipment moving to destination'),
(73,73,13,'2025-08-16',NULL,'Out for Delivery',0,'Agent has shipment'),
(74,74,14,'2025-08-19',NULL,'In Transit',0,'Shipment moving to destination'),
(75,75,15,'2025-08-22',NULL,'Assigned',0,'Awaiting pickup'),
(76,76,16,'2025-08-25',NULL,'In Transit',0,'Shipment moving to destination'),
(77,77,17,'2025-08-28',NULL,'Delayed',0,'Operational delay'),
(78,78,18,'2025-08-31',NULL,'Assigned',0,'Awaiting pickup'),
(79,79,19,'2025-09-03',NULL,'In Transit',0,'Shipment moving to destination'),
(80,80,20,'2025-09-06',NULL,'Assigned',0,'Awaiting pickup'),

(81,81,21,'2025-09-09',NULL,'In Transit',0,'Shipment moving to destination'),
(82,82,22,'2025-09-12',NULL,'Out for Delivery',0,'Agent has shipment'),
(83,83,23,'2025-09-15',NULL,'In Transit',0,'Shipment moving to destination'),
(84,84,24,'2025-09-18',NULL,'Assigned',0,'Awaiting pickup'),
(85,85,25,'2025-09-21',NULL,'Delayed',0,'Operational delay'),
(86,86,26,'2025-09-24',NULL,'In Transit',0,'Shipment moving to destination'),
(87,87,27,'2025-09-27',NULL,'Assigned',0,'Awaiting pickup'),
(88,88,28,'2025-09-30',NULL,'In Transit',0,'Shipment moving to destination'),
(89,89,29,'2025-10-03',NULL,'Out for Delivery',0,'Agent has shipment'),
(90,90,30,'2025-10-06',NULL,'In Transit',0,'Shipment moving to destination'),

(91,91,31,'2025-10-09',NULL,'Assigned',0,'Awaiting pickup'),
(92,92,32,'2025-10-12',NULL,'In Transit',0,'Shipment moving to destination'),
(93,93,33,'2025-10-15',NULL,'Delayed',0,'Operational delay'),
(94,94,34,'2025-10-18',NULL,'Assigned',0,'Awaiting pickup'),
(95,95,35,'2025-10-21',NULL,'In Transit',0,'Shipment moving to destination'),
(96,96,36,'2025-10-24',NULL,'Out for Delivery',0,'Agent has shipment'),
(97,97,37,'2025-10-27',NULL,'In Transit',0,'Shipment moving to destination'),
(98,98,38,'2025-10-30',NULL,'Assigned',0,'Awaiting pickup'),
(99,99,39,'2025-11-02',NULL,'In Transit',0,'Shipment moving to destination'),
(100,100,40,'2025-11-05',NULL,'Assigned',0,'Awaiting pickup');

CREATE TABLE payments (
    payment_id INT PRIMARY KEY,
    parcel_id INT NOT NULL,
    payment_date DATE NOT NULL,
    payment_method VARCHAR(30) NOT NULL,
    payment_amount DECIMAL(10,2) NOT NULL,
    payment_status VARCHAR(30) NOT NULL,
    transaction_reference VARCHAR(50),
    payment_notes VARCHAR(150),

    FOREIGN KEY (parcel_id) REFERENCES parcels(parcel_id)
);

CREATE TABLE delivery_ratings (
    rating_id INT PRIMARY KEY,
    shipment_id INT NOT NULL,
    customer_id INT NOT NULL,
    rating_value INT NOT NULL,
    rating_date DATE NOT NULL,
    feedback VARCHAR(250),
    delivery_experience VARCHAR(50),
    complaint_status VARCHAR(30),

    FOREIGN KEY (shipment_id) REFERENCES shipments(shipment_id),
    FOREIGN KEY (customer_id) REFERENCES customers(customer_id)
);

INSERT INTO payments
(payment_id, parcel_id, payment_date, payment_method, payment_amount, payment_status, transaction_reference, payment_notes)
VALUES
(1,1,'2025-01-02','UPI',162.50,'Paid','TXN000001','Standard shipment payment'),
(2,2,'2025-01-03','Credit Card',175.00,'Paid','TXN000002','Standard shipment payment'),
(3,3,'2025-01-04','Debit Card',187.50,'Paid','TXN000003','Standard shipment payment'),
(4,4,'2025-01-05','Cash',200.00,'Paid','TXN000004','Cash payment received'),
(5,5,'2025-01-06','UPI',212.50,'Paid','TXN000005','Standard shipment payment'),
(6,6,'2025-01-07','Credit Card',225.00,'Paid','TXN000006','Standard shipment payment'),
(7,7,'2025-01-08','Debit Card',237.50,'Paid','TXN000007','Standard shipment payment'),
(8,8,'2025-01-09','Cash',250.00,'Paid','TXN000008','Cash payment received'),
(9,9,'2025-01-10','UPI',262.50,'Paid','TXN000009','Standard shipment payment'),
(10,10,'2025-01-11','Credit Card',275.00,'Pending','TXN000010','Payment awaiting confirmation'),

(11,11,'2025-01-12','Debit Card',287.50,'Paid','TXN000011','Standard shipment payment'),
(12,12,'2025-01-13','Cash',300.00,'Paid','TXN000012','Cash payment received'),
(13,13,'2025-01-14','UPI',312.50,'Paid','TXN000013','Standard shipment payment'),
(14,14,'2025-01-15','Credit Card',325.00,'Paid','TXN000014','Standard shipment payment'),
(15,15,'2025-01-16','Debit Card',337.50,'Paid','TXN000015','Standard shipment payment'),
(16,16,'2025-01-17','Cash',350.00,'Paid','TXN000016','Cash payment received'),
(17,17,'2025-01-18','UPI',362.50,'Paid','TXN000017','Standard shipment payment'),
(18,18,'2025-01-19','Credit Card',375.00,'Paid','TXN000018','Standard shipment payment'),
(19,19,'2025-01-20','Debit Card',387.50,'Paid','TXN000019','Standard shipment payment'),
(20,20,'2025-01-21','Cash',400.00,'Pending','TXN000020','Payment awaiting confirmation'),

(21,21,'2025-01-22','UPI',412.50,'Paid','TXN000021','Standard shipment payment'),
(22,22,'2025-01-23','Credit Card',425.00,'Paid','TXN000022','Standard shipment payment'),
(23,23,'2025-01-24','Debit Card',437.50,'Paid','TXN000023','Standard shipment payment'),
(24,24,'2025-01-25','Cash',450.00,'Paid','TXN000024','Cash payment received'),
(25,25,'2025-01-26','UPI',462.50,'Paid','TXN000025','Standard shipment payment'),
(26,26,'2025-01-27','Credit Card',475.00,'Paid','TXN000026','Standard shipment payment'),
(27,27,'2025-01-28','Debit Card',487.50,'Paid','TXN000027','Standard shipment payment'),
(28,28,'2025-01-29','Cash',500.00,'Paid','TXN000028','Cash payment received'),
(29,29,'2025-01-30','UPI',512.50,'Paid','TXN000029','Standard shipment payment'),
(30,30,'2025-01-31','Credit Card',525.00,'Pending','TXN000030','Payment awaiting confirmation'),

(31,31,'2025-02-01','Debit Card',537.50,'Paid','TXN000031','Standard shipment payment'),
(32,32,'2025-02-02','Cash',550.00,'Paid','TXN000032','Cash payment received'),
(33,33,'2025-02-03','UPI',562.50,'Paid','TXN000033','Standard shipment payment'),
(34,34,'2025-02-04','Credit Card',575.00,'Paid','TXN000034','Standard shipment payment'),
(35,35,'2025-02-05','Debit Card',587.50,'Paid','TXN000035','Standard shipment payment'),
(36,36,'2025-02-06','Cash',600.00,'Paid','TXN000036','Cash payment received'),
(37,37,'2025-02-07','UPI',612.50,'Paid','TXN000037','Standard shipment payment'),
(38,38,'2025-02-08','Credit Card',625.00,'Paid','TXN000038','Standard shipment payment'),
(39,39,'2025-02-09','Debit Card',637.50,'Paid','TXN000039','Standard shipment payment'),
(40,40,'2025-02-10','Cash',650.00,'Pending','TXN000040','Payment awaiting confirmation'),

(41,41,'2025-02-11','UPI',662.50,'Paid','TXN000041','Standard shipment payment'),
(42,42,'2025-02-12','Credit Card',675.00,'Paid','TXN000042','Standard shipment payment'),
(43,43,'2025-02-13','Debit Card',687.50,'Paid','TXN000043','Standard shipment payment'),
(44,44,'2025-02-14','Cash',700.00,'Paid','TXN000044','Cash payment received'),
(45,45,'2025-02-15','UPI',712.50,'Paid','TXN000045','Standard shipment payment'),
(46,46,'2025-02-16','Credit Card',725.00,'Paid','TXN000046','Standard shipment payment'),
(47,47,'2025-02-17','Debit Card',737.50,'Paid','TXN000047','Standard shipment payment'),
(48,48,'2025-02-18','Cash',750.00,'Paid','TXN000048','Cash payment received'),
(49,49,'2025-02-19','UPI',762.50,'Paid','TXN000049','Standard shipment payment'),
(50,50,'2025-02-20','Credit Card',775.00,'Pending','TXN000050','Payment awaiting confirmation'),

(51,51,'2025-02-21','Debit Card',787.50,'Paid','TXN000051','Standard shipment payment'),
(52,52,'2025-02-22','Cash',800.00,'Paid','TXN000052','Cash payment received'),
(53,53,'2025-02-23','UPI',812.50,'Paid','TXN000053','Standard shipment payment'),
(54,54,'2025-02-24','Credit Card',825.00,'Paid','TXN000054','Standard shipment payment'),
(55,55,'2025-02-25','Debit Card',837.50,'Paid','TXN000055','Standard shipment payment'),
(56,56,'2025-02-26','Cash',850.00,'Paid','TXN000056','Cash payment received'),
(57,57,'2025-02-27','UPI',862.50,'Paid','TXN000057','Standard shipment payment'),
(58,58,'2025-02-28','Credit Card',875.00,'Paid','TXN000058','Standard shipment payment'),
(59,59,'2025-03-01','Debit Card',887.50,'Paid','TXN000059','Standard shipment payment'),
(60,60,'2025-03-02','Cash',900.00,'Pending','TXN000060','Payment awaiting confirmation'),

(61,61,'2025-03-03','UPI',912.50,'Paid','TXN000061','Standard shipment payment'),
(62,62,'2025-03-04','Credit Card',925.00,'Paid','TXN000062','Standard shipment payment'),
(63,63,'2025-03-05','Debit Card',937.50,'Paid','TXN000063','Standard shipment payment'),
(64,64,'2025-03-06','Cash',950.00,'Paid','TXN000064','Cash payment received'),
(65,65,'2025-03-07','UPI',962.50,'Paid','TXN000065','Standard shipment payment'),
(66,66,'2025-03-08','Credit Card',975.00,'Paid','TXN000066','Standard shipment payment'),
(67,67,'2025-03-09','Debit Card',987.50,'Paid','TXN000067','Standard shipment payment'),
(68,68,'2025-03-10','Cash',1000.00,'Paid','TXN000068','Cash payment received'),
(69,69,'2025-03-11','UPI',1012.50,'Paid','TXN000069','Standard shipment payment'),
(70,70,'2025-03-12','Credit Card',1025.00,'Pending','TXN000070','Payment awaiting confirmation'),

(71,71,'2025-03-13','Debit Card',1037.50,'Paid','TXN000071','Standard shipment payment'),
(72,72,'2025-03-14','Cash',1050.00,'Paid','TXN000072','Cash payment received'),
(73,73,'2025-03-15','UPI',1062.50,'Paid','TXN000073','Standard shipment payment'),
(74,74,'2025-03-16','Credit Card',1075.00,'Paid','TXN000074','Standard shipment payment'),
(75,75,'2025-03-17','Debit Card',1087.50,'Paid','TXN000075','Standard shipment payment'),
(76,76,'2025-03-18','Cash',1100.00,'Paid','TXN000076','Cash payment received'),
(77,77,'2025-03-19','UPI',1112.50,'Paid','TXN000077','Standard shipment payment'),
(78,78,'2025-03-20','Credit Card',1125.00,'Paid','TXN000078','Standard shipment payment'),
(79,79,'2025-03-21','Debit Card',1137.50,'Paid','TXN000079','Standard shipment payment'),
(80,80,'2025-03-22','Cash',1150.00,'Pending','TXN000080','Payment awaiting confirmation'),

(81,81,'2025-03-23','UPI',1162.50,'Paid','TXN000081','Standard shipment payment'),
(82,82,'2025-03-24','Credit Card',1175.00,'Paid','TXN000082','Standard shipment payment'),
(83,83,'2025-03-25','Debit Card',1187.50,'Paid','TXN000083','Standard shipment payment'),
(84,84,'2025-03-26','Cash',1200.00,'Paid','TXN000084','Cash payment received'),
(85,85,'2025-03-27','UPI',1212.50,'Paid','TXN000085','Standard shipment payment'),
(86,86,'2025-03-28','Credit Card',1225.00,'Paid','TXN000086','Standard shipment payment'),
(87,87,'2025-03-29','Debit Card',1237.50,'Paid','TXN000087','Standard shipment payment'),
(88,88,'2025-03-30','Cash',1250.00,'Paid','TXN000088','Cash payment received'),
(89,89,'2025-03-31','UPI',1262.50,'Paid','TXN000089','Standard shipment payment'),
(90,90,'2025-04-01','Credit Card',1275.00,'Pending','TXN000090','Payment awaiting confirmation'),

(91,91,'2025-04-02','Debit Card',1287.50,'Paid','TXN000091','Standard shipment payment'),
(92,92,'2025-04-03','Cash',1300.00,'Paid','TXN000092','Cash payment received'),
(93,93,'2025-04-04','UPI',1312.50,'Paid','TXN000093','Standard shipment payment'),
(94,94,'2025-04-05','Credit Card',1325.00,'Paid','TXN000094','Standard shipment payment'),
(95,95,'2025-04-06','Debit Card',1337.50,'Paid','TXN000095','Standard shipment payment'),
(96,96,'2025-04-07','Cash',1350.00,'Paid','TXN000096','Cash payment received'),
(97,97,'2025-04-08','UPI',1362.50,'Paid','TXN000097','Standard shipment payment'),
(98,98,'2025-04-09','Credit Card',1375.00,'Paid','TXN000098','Standard shipment payment'),
(99,99,'2025-04-10','Debit Card',1387.50,'Paid','TXN000099','Standard shipment payment'),
(100,100,'2025-04-11','Cash',1400.00,'Pending','TXN000100','Payment awaiting confirmation');

INSERT INTO delivery_ratings
(rating_id, shipment_id, customer_id, rating_value, rating_date, feedback, delivery_experience, complaint_status)
VALUES
(1,1,1,4,'2025-06-02','Fast delivery and good service','Good','None'),
(2,2,2,5,'2025-06-03','Excellent delivery service','Excellent','None'),
(3,3,3,5,'2025-06-04','Very satisfied with the service','Excellent','None'),
(4,4,4,3,'2025-06-05','Delivery was satisfactory','Average','None'),
(5,5,5,4,'2025-06-06','Good overall experience','Good','None'),
(6,6,6,5,'2025-06-07','Excellent delivery service','Excellent','None'),
(7,7,7,4,'2025-06-08','Fast and reliable delivery','Good','None'),
(8,8,8,5,'2025-06-09','Very satisfied with the service','Excellent','None'),
(9,9,9,3,'2025-06-10','Delivery was satisfactory','Average','None'),
(10,10,10,4,'2025-06-11','Good overall experience','Good','Resolved'),

(11,11,11,5,'2025-06-12','Excellent delivery service','Excellent','None'),
(12,12,12,4,'2025-06-13','Fast and reliable delivery','Good','None'),
(13,13,13,5,'2025-06-14','Very satisfied with the service','Excellent','None'),
(14,14,14,3,'2025-06-15','Delivery was satisfactory','Average','None'),
(15,15,15,4,'2025-06-16','Good overall experience','Good','None'),
(16,16,16,5,'2025-06-17','Excellent delivery service','Excellent','None'),
(17,17,17,4,'2025-06-18','Fast and reliable delivery','Good','None'),
(18,18,18,5,'2025-06-19','Very satisfied with the service','Excellent','None'),
(19,19,19,3,'2025-06-20','Delivery was satisfactory','Average','None'),
(20,20,20,4,'2025-06-21','Good overall experience','Good','Resolved'),

(21,21,21,5,'2025-06-22','Excellent delivery service','Excellent','None'),
(22,22,22,4,'2025-06-23','Fast and reliable delivery','Good','None'),
(23,23,23,5,'2025-06-24','Very satisfied with the service','Excellent','None'),
(24,24,24,3,'2025-06-25','Delivery was satisfactory','Average','None'),
(25,25,25,4,'2025-06-26','Good overall experience','Good','None'),
(26,26,26,5,'2025-06-27','Excellent delivery service','Excellent','None'),
(27,27,27,4,'2025-06-28','Fast and reliable delivery','Good','None'),
(28,28,28,5,'2025-06-29','Very satisfied with the service','Excellent','None'),
(29,29,29,3,'2025-06-30','Delivery was satisfactory','Average','None'),
(30,30,30,4,'2025-07-01','Good overall experience','Good','Resolved'),

(31,31,31,5,'2025-07-02','Excellent delivery service','Excellent','None'),
(32,32,32,4,'2025-07-03','Fast and reliable delivery','Good','None'),
(33,33,33,5,'2025-07-04','Very satisfied with the service','Excellent','None'),
(34,34,34,3,'2025-07-05','Delivery was satisfactory','Average','None'),
(35,35,35,4,'2025-07-06','Good overall experience','Good','None'),
(36,36,36,5,'2025-07-07','Excellent delivery service','Excellent','None'),
(37,37,37,4,'2025-07-08','Fast and reliable delivery','Good','None'),
(38,38,38,5,'2025-07-09','Very satisfied with the service','Excellent','None'),
(39,39,39,3,'2025-07-10','Delivery was satisfactory','Average','None'),
(40,40,40,4,'2025-07-11','Good overall experience','Good','Resolved'),

(41,41,41,5,'2025-07-12','Excellent delivery service','Excellent','None'),
(42,42,42,4,'2025-07-13','Fast and reliable delivery','Good','None'),
(43,43,43,5,'2025-07-14','Very satisfied with the service','Excellent','None'),
(44,44,44,3,'2025-07-15','Delivery was satisfactory','Average','None'),
(45,45,45,4,'2025-07-16','Good overall experience','Good','None'),
(46,46,46,5,'2025-07-17','Excellent delivery service','Excellent','None'),
(47,47,47,4,'2025-07-18','Fast and reliable delivery','Good','None'),
(48,48,48,5,'2025-07-19','Very satisfied with the service','Excellent','None'),
(49,49,49,3,'2025-07-20','Delivery was satisfactory','Average','None'),
(50,50,50,4,'2025-07-21','Good overall experience','Good','Resolved'),

(51,51,51,5,'2025-07-22','Excellent delivery service','Excellent','None'),
(52,52,52,4,'2025-07-23','Fast and reliable delivery','Good','None'),
(53,53,53,5,'2025-07-24','Very satisfied with the service','Excellent','None'),
(54,54,54,3,'2025-07-25','Delivery was satisfactory','Average','None'),
(55,55,55,4,'2025-07-26','Good overall experience','Good','None'),
(56,56,56,5,'2025-07-27','Excellent delivery service','Excellent','None'),
(57,57,57,4,'2025-07-28','Fast and reliable delivery','Good','None'),
(58,58,58,5,'2025-07-29','Very satisfied with the service','Excellent','None'),
(59,59,59,3,'2025-07-30','Delivery was satisfactory','Average','None'),
(60,60,60,4,'2025-07-31','Good overall experience','Good','Resolved'),

(61,61,61,5,'2025-08-01','Excellent delivery service','Excellent','None'),
(62,62,62,4,'2025-08-02','Fast and reliable delivery','Good','None'),
(63,63,63,5,'2025-08-03','Very satisfied with the service','Excellent','None'),
(64,64,64,3,'2025-08-04','Delivery was satisfactory','Average','None'),
(65,65,65,4,'2025-08-05','Good overall experience','Good','None'),
(66,66,66,5,'2025-08-06','Excellent delivery service','Excellent','None'),
(67,67,67,4,'2025-08-07','Fast and reliable delivery','Good','None'),
(68,68,68,5,'2025-08-08','Very satisfied with the service','Excellent','None'),
(69,69,69,3,'2025-08-09','Delivery was satisfactory','Average','None'),
(70,70,70,4,'2025-08-10','Good overall experience','Good','Resolved'),

(71,71,71,5,'2025-08-11','Excellent delivery service','Excellent','None'),
(72,72,72,4,'2025-08-12','Fast and reliable delivery','Good','None'),
(73,73,73,5,'2025-08-13','Very satisfied with the service','Excellent','None'),
(74,74,74,3,'2025-08-14','Delivery was satisfactory','Average','None'),
(75,75,75,4,'2025-08-15','Good overall experience','Good','None');

UPDATE delivery_ratings dr
JOIN shipments s
    ON dr.shipment_id = s.shipment_id
JOIN parcels p
    ON s.parcel_id = p.parcel_id
SET dr.customer_id = p.customer_id
WHERE dr.customer_id <> p.customer_id;

UPDATE shipments
SET parcel_id = shipment_id
WHERE shipment_id BETWEEN 51 AND 100;

UPDATE delivery_ratings
SET customer_id = (
    SELECT p.customer_id
    FROM shipments s
    JOIN parcels p
        ON s.parcel_id = p.parcel_id
    WHERE s.shipment_id = delivery_ratings.shipment_id
)
WHERE rating_id IN (
    SELECT rating_id
    FROM (
        SELECT dr.rating_id
        FROM delivery_ratings dr
        JOIN shipments s
            ON dr.shipment_id = s.shipment_id
        JOIN parcels p
            ON s.parcel_id = p.parcel_id
        WHERE dr.customer_id <> p.customer_id
    ) AS mismatched_ratings
);

ALTER TABLE shipments
ADD CONSTRAINT uq_shipments_parcel
UNIQUE (parcel_id);

CREATE TABLE truncate_demo AS SELECT * FROM parcels;
TRUNCATE TABLE truncate_demo;

ALTER TABLE parcels
ADD CONSTRAINT chk_parcel_weight
CHECK (weight_kg > 0);

ALTER TABLE parcels
ADD COLUMN is_fragile BOOLEAN DEFAULT FALSE;

ALTER TABLE parcels
MODIFY COLUMN delivery_instructions VARCHAR(200);

ALTER TABLE parcels
RENAME COLUMN delivery_instructions TO special_instructions;

ALTER TABLE employees
ADD CONSTRAINT fk_employee_branch
FOREIGN KEY (branch_id) REFERENCES branches(branch_id);

SET SQL_SAFE_UPDATES = 1;