
CREATE TABLE Hotel (
  hotel_ID char (20) PRIMARY KEY, 
  amenities varchar (50),
contact_details varchar (50), 
  location varchar (50),
name varchar (50))

CREATE TABLE Guest (
Guest_ID char (20) PRIMARY KEY ,
  Name varchar (50),
contact_information varchar (50),
  reservation_history varchar (50))

  CREATE TABLE Employee (
employee_ID char (20) PRIMARY KEY, 
  name varchar (50),
department varchar (100), 
  contact_details varchar (50), 
  position varchar (50))

  CREATE TABLE service (
service_ID char (20) PRIMARY KEY,
  name varchar (50),
price Numeric (10,2),
  description varchar (50))

  CREATE TABLE Room (
room_number char (20) PRIMARY KEY, 
  hotel_id char (20),
type varchar (50), price numeric (10,2),
  capacity int (100), availability boolean, 
  FOREIGN KEY (hotel_id) REFERENCES Hotel(hotel_id))

CREATE TABLE Reservation ( 
  reservation_ID char (20) PRIMARY KEY,
  room_number char (20),
guest_id char (20), 
  price numeric (10,2), 
  check_in_date date, 
  check_out_date date,
additional_request varchar (50), FOREIGN KEY (room_number) REFERENCES Room(room_number) FOREIGN KEY (guest_id ) REFERENCES Guest(guest_id))

CREATE TABLE request (
Guest_ID char (20) ,
  Service_ID char (20) ,
  time Time ,
PRIMARY KEY (Guest_ID ,Service_ID) FOREIGN KEY (Guest_ID) REFERENCES Guest(Guest_ID) FOREIGN KEY (Service_ID ) REFERENCES Service(Service_ID ))

  CREATE TABLE interacts (
Guest_ID char (20) ,
  employee_id char (20) , PRIMARY KEY (Guest_ID , employee_id) FOREIGN KEY (Guest_ID) REFERENCES Guest(Guest_ID) FOREIGN KEY (employee_id ) REFERENCES Employee (employee_id))
