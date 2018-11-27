
/*Query to display Airports containing L in name of City, Airport, */
SELECT EZ_Airports.AirportName, EZ_Airports.AirportCode, EZ_City.City, 
EZ_Country.Country FROM EZ_Airports
INNER JOIN EZ_City ON EZ_Airports.CityID = EZ_City.CityID
INNER JOIN EZ_Country ON EZ_City.CountryID = EZ_Country.CountryID 
WHERE EZ_Airports.AirportName LIKE "L%" 
OR EZ_Airports.AirportCode LIKE "L%" 
OR EZ_City.City LIKE "L%"
OR EZ_Country.Country LIKE "L%"
ORDER BY EZ_Airports.AirportName ASC;


/* Query to display all route offered from a departure airport. */
SELECT DepartAirport.AirportName AS 'Departure Airport', ArriveAirports.AirportName AS 'Arrival Airport'
FROM EZ_Routes
INNER JOIN EZ_Airports as DepartAirport ON EZ_Routes.DepartureAirport=DepartAirport.AirportID
INNER JOIN EZ_Airports as ArriveAirports ON EZ_Routes.ArrivalAirport=ArriveAirports.AirportID
WHERE DepartAirport.AirportName LIKE "%Belfast%";

/*Query to display flights for between two aiports between set dates*/

SELECT DepartureAirport.AirportName AS 'Departure Airport', ArrivalAirport.AirportName AS 'Arrival Airport', EZ_Flights.DepartureDateTime AS 'Departs at', EZ_Flights.ArrivalDateTime AS 'Arrives at', EZ_RouteNumber.FlightNumber AS 'Flight Number', EZ_Flights.BasePrice AS 'Price' FROM EZ_Flights
JOIN EZ_RouteNumber ON EZ_Flights.RouteNumberID = EZ_RouteNumber.RouteNumberID
JOIN EZ_Routes ON EZ_RouteNumber.RouteID = EZ_Routes.RouteID
JOIN EZ_Airports as DepartureAirport ON EZ_Routes.DepartureAirport = DepartureAirport.AirportID
JOIN EZ_Airports as ArrivalAirport ON EZ_Routes.ArrivalAirport = ArrivalAirport.AirportID
WHERE DepartureAirport.AirportCode LIKE "CDG" AND ArrivalAirport.AirportCode LIKE "LGW" 
AND DATE (EZ_Flights.ArrivalDateTime) BETWEEN '2018-11-22' AND '2018-11-24'
ORDER BY DATE (EZ_Flights.ArrivalDateTime);

 
/* Query to display the cheapest flight in on a selected route taking place in a selected date range. */

SELECT DepartureAirport.AirportName AS 'Departure Airport', ArrivalAirport.AirportName AS 'Arrival Airport', EZ_Flights.DepartureDateTime AS 'Departs at', EZ_Flights.ArrivalDateTime AS 'Arrives at', EZ_RouteNumber.FlightNumber AS 'Flight Number', MIN(EZ_Flights.BasePrice) AS 'Lowest fare'  FROM EZ_Flights
JOIN EZ_RouteNumber ON EZ_Flights.RouteNumberID = EZ_RouteNumber.RouteNumberID
JOIN EZ_Routes ON EZ_RouteNumber.RouteID = EZ_Routes.RouteID
JOIN EZ_Airports as DepartureAirport ON EZ_Routes.DepartureAirport = DepartureAirport.AirportID
JOIN EZ_Airports as ArrivalAirport ON EZ_Routes.ArrivalAirport = ArrivalAirport.AirportID
WHERE DepartureAirport.AirportCode LIKE "CDG" AND ArrivalAirport.AirportCode LIKE "LGW" 
AND DATE (EZ_Flights.ArrivalDateTime) BETWEEN '2018-11-22' AND '2018-11-24';



