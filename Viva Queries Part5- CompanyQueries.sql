

/*Query to display all contact details for customers who have made bookings on a flight*/

SELECT DISTINCT  EZ_Title.Title, EZ_Customer.Name, EZ_PhoneCode.PhoneCode 'Dialling Code', EZ_Customer.PhoneNumber, EZ_Customer.Email,EZ_Orders.BookingReference AS 'Booking Reference', EZ_Flights.DepartureDateTime, DepartureAirport.AirportName AS 'Departure Airport',
ArrivalAirport.AirportName AS 'Arrival Airport', COUNT(EZ_PassengerDetails.PassengerDetailsID) AS 'Number of Passengers in Booking' FROM EZ_Flights
JOIN EZ_RouteNumber ON EZ_Flights.RouteNumberID = EZ_RouteNumber.RouteNumberID
JOIN EZ_Routes ON EZ_RouteNumber.RouteID = EZ_Routes.RouteID
JOIN EZ_Airports AS DepartureAirport ON EZ_Routes.DepartureAirport = DepartureAirport.AirportID
JOIN EZ_Airports AS ArrivalAirport ON  EZ_Routes.ArrivalAirport = ArrivalAirport.AirportID
JOIN EZ_Passenger ON EZ_Flights.FlightID = EZ_Passenger.FlightID
JOIN EZ_PassengerDetails ON EZ_Passenger.PassengerDetailsID = EZ_PassengerDetails.PassengerDetailsID
JOIN EZ_Orders ON EZ_PassengerDetails.OrderID = EZ_Orders.OrderID
JOIN EZ_Customer ON EZ_Orders.CustomerID = EZ_Customer.CustomerID
JOIN EZ_Title ON EZ_Customer.TitleID = EZ_Title.TitleID
JOIN EZ_PhoneCode ON EZ_Customer.PhoneCodeID= EZ_PhoneCode.PhoneCodeID
WHERE EZ_RouteNumber.FlightNumber = 'EZY801'
AND DATE(EZ_Flights.DepartureDateTime) = '2018-12-07'
GROUP BY EZ_Orders.OrderID;

/*Query to display all flights a plane has been assigned*/

SELECT EZ_Plane.TailNumber, EZ_Flights.DepartureDateTime,EZ_Flights.ArrivalDateTime, EZ_RouteNumber.FlightNumber, DepartAirport.AirportName, ArriveAirport.AirportName FROM `EZ_Flights` 
JOIN EZ_RouteNumber ON EZ_Flights.RouteNumberID=EZ_RouteNumber.RouteNumberID
JOIN EZ_Routes ON EZ_RouteNumber.RouteID=EZ_Routes.RouteID
JOIN EZ_Plane ON EZ_Flights.PlaneID = EZ_Plane.PlaneID
JOIN EZ_Airports AS DepartAirport ON EZ_Routes.DepartureAirport=DepartAirport.AirportID
JOIN EZ_Airports AS ArriveAirport ON EZ_Routes.DepartureAirport=ArriveAirport.AirportID
WHERE EZ_Plane.TailNumber = 'G-EJAR' AND DATE (EZ_Flights.ArrivalDateTime) BETWEEN '2018-11-22' AND '2018-11-24';

/*Table order items*/
SELECT EZ_Orders.BookingReference AS 'Booking Reference', EZ_OrderItems.Description 'Item', EZ_OrderDetails.Price AS 'Total Price' FROM `EZ_OrderDetails` 
JOIN EZ_Orders ON EZ_OrderDetails.OrderID = EZ_Orders.OrderID JOIN EZ_OrderItems ON EZ_OrderDetails.OrderItemID = EZ_OrderItems.OrderItemID
WHERE EZ_Orders.BookingReference = 'BOOK1297';


/*sum of prices*/
SELECT SUM(EZ_OrderDetails.Price) AS 'Total Price' FROM `EZ_OrderDetails` 
JOIN EZ_Orders ON EZ_OrderDetails.OrderID = EZ_Orders.OrderID 
WHERE EZ_Orders.BookingReference = 'BOOK1297';

