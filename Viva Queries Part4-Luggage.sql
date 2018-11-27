/*All passenger details for a booking*/

SELECT EZ_Orders.BookingReference AS 'Booking Reference', EZ_Flights.DepartureDateTime AS 'Date and Time', DepartureAirport.AirportName AS 'Departure From', ArrivalAirport.AirportName AS 'Arrival At', EZ_Title.Title, EZ_PassengerDetails.Name, EZ_Seat.SeatName AS 'Seat' FROM EZ_Orders
JOIN EZ_PassengerDetails ON EZ_Orders.OrderID = EZ_PassengerDetails.OrderID
JOIN EZ_Title ON EZ_PassengerDetails.TitleID = EZ_Title.TitleID
JOIN EZ_Passenger ON EZ_PassengerDetails.PassengerDetailsID = EZ_Passenger.PassengerDetailsID
JOIN EZ_SeatBooking ON EZ_Passenger.PassengerID = EZ_SeatBooking.PassengerID
JOIN EZ_Seat ON EZ_SeatBooking.SeatID = EZ_Seat.SeatID
JOIN EZ_Flights ON EZ_Passenger.FlightID = EZ_Flights.FlightID
JOIN EZ_RouteNumber ON EZ_Flights.RouteNumberID = EZ_RouteNumber.RouteNumberID
JOIN EZ_Routes ON EZ_RouteNumber.RouteID = EZ_Routes.RouteID
JOIN EZ_Airports AS DepartureAirport ON EZ_Routes.DepartureAirport = DepartureAirport.AirportID
JOIN EZ_Airports AS ArrivalAirport ON EZ_Routes.ArrivalAirport = ArrivalAirport.AirportID
WHERE EZ_Orders.BookingReference = 'BOOK1297'
ORDER BY DATE(EZ_Flights.DepartureDateTime);


/*Hold Luggage associated with a booking (Belfast to Venice return)*/

SELECT EZ_Orders.BookingReference AS 'Booking Reference', EZ_HoldLuggageType.LuggageType AS 'Hold Luggage' FROM EZ_Orders
JOIN EZ_HoldLuggage ON EZ_Orders.OrderID =EZ_HoldLuggage.OrderID
JOIN EZ_HoldLuggageType ON EZ_HoldLuggage.HoldLuggageTypeID = EZ_HoldLuggageType.LuggageTypeID
WHERE EZ_Orders.BookingReference = 'BOOK1297';

/*Shows luggage is on outbound flight*/
SELECT DISTINCT(EZ_HoldLuggageType.LuggageType) AS 'Hold Luggage', EZ_Orders.BookingReference AS 'Booking Reference', EZ_RouteNumber.FlightNumber AS 'Flight Reference Number', DATE(EZ_Flights.DepartureDateTime) AS 'Flight Date' FROM EZ_Orders
JOIN EZ_HoldLuggage ON EZ_Orders.OrderID = EZ_HoldLuggage.OrderID
JOIN EZ_HoldLuggageType ON EZ_HoldLuggage.HoldLuggageTypeID = EZ_HoldLuggageType.LuggageTypeID
INNER JOIN EZ_PassengerDetails ON EZ_Orders.OrderID = EZ_PassengerDetails.OrderID
JOIN EZ_Passenger ON EZ_Passenger.PassengerDetailsID = EZ_PassengerDetails.PassengerDetailsID
JOIN EZ_Flights ON EZ_Passenger.FlightID = EZ_Flights.FlightID
JOIN EZ_RouteNumber ON EZ_Flights.RouteNumberID = EZ_RouteNumber.RouteNumberID
WHERE EZ_RouteNumber.FlightNumber = 'EZY801' 
AND DATE(EZ_Flights.DepartureDateTime) = '2018-12-07';


/*Shows luggage is on return flight*/
SELECT DISTINCT(EZ_HoldLuggageType.LuggageType) AS 'Hold Luggage', EZ_Orders.BookingReference AS 'Booking Reference', EZ_RouteNumber.FlightNumber AS 'Flight Reference Number', DATE(EZ_Flights.DepartureDateTime) AS 'Flight Date' FROM EZ_Orders
JOIN EZ_HoldLuggage ON EZ_Orders.OrderID = EZ_HoldLuggage.OrderID
JOIN EZ_HoldLuggageType ON EZ_HoldLuggage.HoldLuggageTypeID = EZ_HoldLuggageType.LuggageTypeID
INNER JOIN EZ_PassengerDetails ON EZ_Orders.OrderID = EZ_PassengerDetails.OrderID
JOIN EZ_Passenger ON EZ_Passenger.PassengerDetailsID = EZ_PassengerDetails.PassengerDetailsID
JOIN EZ_Flights ON EZ_Passenger.FlightID = EZ_Flights.FlightID
JOIN EZ_RouteNumber ON EZ_Flights.RouteNumberID = EZ_RouteNumber.RouteNumberID
WHERE EZ_RouteNumber.FlightNumber = 'EZY802' 
AND DATE(EZ_Flights.DepartureDateTime) = '2018-12-09';

