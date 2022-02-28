--SEAL TRAVELS WEBSYSTEM

--Admin
create table ADMINISTRATOR
(
AdministratorId char(50),
Password char(50),
)
insert into ADMINISTRATOR(AdministratorId,Password)
values('admin01','admin01');

--Users
create table USERS
(
Id int Primary Key Identity(1,1),
Email char(50),
Username char(50),
Password char(50),
DateAdded char(50)
)

--Flight Booking - Roundtrip
create table ROUNDTRIPFLIGHTS
(
Id int Primary Key Identity(1,1),
Name char(50),
Email char(50),
TripType char(50),
LeavingFrom char(50),
GoingTo char(50),
Departing char(50),
Returning char(50),
Adults char(50),
Children char(50),
FlightType char(50),
Airline char(50),
TravelClass char(50),
Amount char(50)
)

--Flight Booking - Oneway
create table ONEWAYFLIGHTS
(
Id int Primary Key Identity(1,1),
Name char(50),
Email char(50),
TripType char(50),
LeavingFrom char(50),
GoingTo char(50),
Departing char(50),
Adults char(50),
Children char(50),
FlightType char(50),
Airline char(50),
TravelClass char(50),
Amount char(50)
)

--FlightTickets
create table FLIGHTTICKETS
(
Id int Primary Key Identity(1,1),
Name char(50),
FlightNumber char(50),
TravelClass char(50),
CheckinOpens char(50),
Status char(50),
Departure char(50),
Arrival char(50),
DepartingFrom char(50),
DepartureAirportandTerminal char(50),
ArrivingAt char(50),
ArrivalAirportandTerminal char(50),
Barcode char(50),
TicketValidity char(50),
)

--Hotel Booking
create table HOTELBOOKING
(
Id int Primary Key Identity(1,1),
Hotel char(50),
Name char(50),
Email char(50),
Travelers char(50),
Rooms char(50),
RoomType char(50),
CheckIn char(50),
CheckOut char(50),
Amount char(50)
)

--Payment Information
create table FLIGHTPAYMENTS
(
Id int Primary Key Identity(1,1),
Name char(50),
Email char(50),
PaymentMethod char(50),
CardNumber char(50),
CVV char(50),
ExpiryDate char(50),
Amount char(50),
)

create table USERACTIVITYLOG(
Username char(50),
DateTimestamp datetime,
Action char(50),
IPAddress char(50),
HostName char(50)
Primary Key Clustered(Username asc,DateTimestamp asc)
with(Pad_Index = Off, Statistics_NoreCompute = Off, Ignore_Dup_Key = Off, Allow_Row_Locks = On, Allow_Page_Locks = On)
On [Primary]) On [Primary] 
Go
Set Ansi_Padding Off

create table ADMINISTRATORACTIVITYLOG(
AdministratorId char(50),
DateTimestamp datetime,
Action char(50),
IPAddress char(50),
HostName char(50)
Primary Key Clustered(AdministratorId asc,DateTimestamp asc)
with(Pad_Index = Off, Statistics_NoreCompute = Off, Ignore_Dup_Key = Off, Allow_Row_Locks = On, Allow_Page_Locks = On)
On [Primary]) On [Primary] 
Go
Set Ansi_Padding Off
