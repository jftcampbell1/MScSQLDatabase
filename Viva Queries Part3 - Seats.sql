/*Passengers on a certain flight, seats displayed if they have selected*/

SELECT EZ_RouteNumber.FlightNumber AS 'Flight Number', DATE(EZ_Flights.DepartureDateTime) AS 'Date', EZ_PassengerDetails.Name, EZ_Seat.SeatName AS 'Selected Seat',EZ_SeatType.Description 'Seat Type', EZ_PassengerType.PassengerType AS 'Type of Passenger' FROM EZ_Passenger 
LEFT OUTER JOIN EZ_PassengerDetails ON EZ_Passenger.PassengerDetailsID = EZ_PassengerDetails.PassengerDetailsID
LEFT OUTER JOIN EZ_SeatBooking ON EZ_Passenger.PassengerID = EZ_SeatBooking.PassengerID
LEFT OUTER JOIN EZ_Seat ON EZ_SeatBooking.SeatID = EZ_Seat.SeatID 
LEFT OUTER JOIN EZ_SeatType ON EZ_Seat.SeatTypeID = EZ_SeatType.SeatTypeID
LEFT OUTER JOIN EZ_PassengerType ON EZ_PassengerDetails.PassengerTypeID = EZ_PassengerType.PassengerTypeID 
LEFT OUTER JOIN EZ_Flights ON EZ_Passenger.FlightID = EZ_Flights.FlightID
LEFT OUTER JOIN EZ_RouteNumber ON EZ_Flights.RouteNumberID = EZ_RouteNumber.RouteNumberID
WHERE EZ_RouteNumber.FlightNumber = 'EZY801' AND DATE(EZ_Flights.DepartureDateTime) = '2018-12-07';

/*Total number of passengers on flight*/

SELECT COUNT(*) AS 'Total Passengers on Flight' FROM EZ_Passenger 
LEFT OUTER JOIN EZ_Flights ON EZ_Passenger.FlightID = EZ_Flights.FlightID 
LEFT OUTER JOIN EZ_RouteNumber ON EZ_Flights.RouteNumberID = EZ_RouteNumber.RouteNumberID 
WHERE EZ_RouteNumber.FlightNumber = 'EZY801' 
AND DATE(EZ_Flights.DepartureDateTime) = '2018-12-07';

/*Total number of seats required for flight (infants not included)*/

SELECT COUNT(*) AS 'Total Seats Required' FROM EZ_PassengerDetails 
LEFT JOIN EZ_Passenger ON EZ_PassengerDetails.PassengerDetailsID = EZ_Passenger.PassengerDetailsID 
LEFT JOIN EZ_PassengerType ON EZ_PassengerDetails.PassengerTypeID = EZ_PassengerType.PassengerTypeID 
LEFT OUTER JOIN EZ_Flights ON EZ_Passenger.FlightID = EZ_Flights.FlightID 
LEFT OUTER JOIN EZ_RouteNumber ON EZ_Flights.RouteNumberID = EZ_RouteNumber.RouteNumberID 
WHERE EZ_RouteNumber.FlightNumber = 'EZY801' 
AND DATE(EZ_Flights.DepartureDateTime) = '2018-12-07' 
AND EZ_PassengerType.PassengerType NOT LIKE 'Infant';


/*Number of seats booked on a flights*/

SELECT COUNT(DISTINCT EZ_Seat.SeatID) AS 'Number of seats booked' FROM EZ_SeatBooking
JOIN EZ_Passenger ON EZ_SeatBooking.PassengerID=EZ_Passenger.PassengerID 
JOIN EZ_Seat ON EZ_SeatBooking.SeatID = EZ_Seat.SeatID
LEFT OUTER JOIN EZ_Flights ON EZ_Passenger.FlightID = EZ_Flights.FlightID
LEFT OUTER JOIN EZ_RouteNumber ON EZ_Flights.RouteNumberID = EZ_RouteNumber.RouteNumberID
WHERE EZ_RouteNumber.FlightNumber = 'EZY801' 
AND DATE(EZ_Flights.DepartureDateTime) = '2018-12-07';

/* Which seats are available on the flights*/

SELECT EZ_Seat.SeatName, EZ_SeatType.Description FROM `EZ_Seat` 
JOIN EZ_SeatType ON EZ_Seat.SeatTypeID = EZ_SeatType.SeatTypeID WHERE NOT EXISTS
(SELECT * FROM EZ_SeatBooking
JOIN EZ_Passenger ON EZ_SeatBooking.PassengerID=EZ_Passenger.PassengerID 
WHERE EZ_SeatBooking.SeatID = EZ_Seat.SeatID AND EZ_Passenger.FlightID = 15);



