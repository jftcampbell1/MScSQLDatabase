START TRANSACTION;

INSERT INTO `EZ_Customer` (`CustomerID`, `TitleID`, `Name`, `PhoneCodeID`, `PhoneNumber`, `Email`, `Password`) 
VALUES (NULL, '1', 'Viva Demo', '1', '7766512876', 'vivademo@email.com', AES_ENCRYPT('vivapassword','JCKeyPass123'));
       
SET @LastCustomer_ID = LAST_INSERT_ID();

INSERT INTO `EZ_CustomerAddress` (`CustomerAddressID`, `CustomerID`, `Address`, `AddressContinued`, `CustCity`, `Postcode/Zip`, `CountryID`) VALUES (NULL, @LastCustomer_ID, '18 Malone Rd', '', 'Belfast', 'BT9 6RT', '1');
        
COMMIT;


/*Demo of decryption of data- show encrypted data*/
SELECT EZ_Customer.Email AS 'Username', EZ_Customer.Password, EZ_PaymentType.PaymentType, 
EZ_PaymentDetails.CardNumber, 
EZ_PaymentDetails.CVVNumber FROM EZ_PaymentDetails
JOIN EZ_PaymentType ON EZ_PaymentDetails.PaymentTypeID = EZ_PaymentType.PaymentTypeID
RIGHT OUTER JOIN EZ_Customer ON EZ_PaymentDetails.CustomerID = EZ_Customer.CustomerID;

/*Show all decrypted data*/
SELECT EZ_Customer.Email AS 'Username', AES_DECRYPT (EZ_Customer.Password, 'JCKeyPass123') AS 'Password', EZ_PaymentType.PaymentType, 
AES_DECRYPT (EZ_PaymentDetails.CardNumber, 'JCKeyCard123') AS 'CustomerCardNumber', 
AES_DECRYPT (EZ_PaymentDetails.CVVNumber, 'JCKeyCode123') AS 'CCVCode' FROM EZ_PaymentDetails
JOIN EZ_PaymentType ON EZ_PaymentDetails.PaymentTypeID = EZ_PaymentType.PaymentTypeID
RIGHT OUTER JOIN EZ_Customer ON EZ_PaymentDetails.CustomerID = EZ_Customer.CustomerID;

START TRANSACTION;

INSERT INTO `EZ_Orders` (`OrderID`, `CustomerID`, `OrderDateTime`, `OrderTotalPrice`, `BookingReference`) 
VALUES (NULL, '9', '2018-04-03 00:00:00', '0.00', 'BOOK9945');
SET @Last_Orders_ID = LAST_INSERT_ID();
INSERT INTO `EZ_PassengerDetails` (`PassengerDetailsID`, `TitleID`, `Name`, `PassportNumber`, `PassengerTypeID`, `PlusMemberID`, `OrderID`) 
VALUES (NULL, '1', 'VivaDemo Passenger', '', '1', '2', @Last_Orders_ID);
SET @Last_PassengerDetails_ID = LAST_INSERT_ID();

INSERT INTO `EZ_SpecialAssistance` (`SpecialAssistanceID`, `PassengerDetailsID`, `SpecialAssistanceTypeID`) 
VALUES (NULL, @Last_PassengerDetails_ID, '6');

INSERT INTO `EZ_Passenger` (`PassengerID`, `PassengerDetailsID`, `FlightID`) 
VALUES (NULL, @Last_PassengerDetails_ID, '15');
SET @Last_Passenger_ID = LAST_INSERT_ID();

INSERT INTO `EZ_SeatBooking` (`SeatBookingID`, `PassengerID`, `SeatID`) 
VALUES (NULL, @Last_Passenger_ID, '4');

INSERT INTO `EZ_HoldLuggage` (`HoldLuggageID`, `OrderID`, `HoldLuggageTypeID`) 
VALUES (NULL, @Last_Orders_ID, '1');

COMMIT;


/*Check VivaDemo Passenger is added, delete and do again*/

SELECT EZ_PassengerDetails.Name AS 'Passenger Name', EZ_Seat.SeatName AS 'Seat', EZ_PassengerType.PassengerType AS 'PassengerType', EZ_SeatType.Description 'Seat Type' FROM EZ_Passenger 
LEFT OUTER JOIN EZ_PassengerDetails ON EZ_Passenger.PassengerDetailsID = EZ_PassengerDetails.PassengerDetailsID
LEFT OUTER JOIN EZ_SeatBooking ON EZ_Passenger.PassengerID = EZ_SeatBooking.PassengerID
LEFT OUTER JOIN EZ_Seat ON EZ_SeatBooking.SeatID = EZ_Seat.SeatID 
LEFT OUTER JOIN EZ_SeatType ON EZ_Seat.SeatTypeID = EZ_SeatType.SeatTypeID
LEFT OUTER JOIN EZ_PassengerType ON EZ_PassengerDetails.PassengerTypeID = EZ_PassengerType.PassengerTypeID 
JOIN EZ_Flights ON EZ_Passenger.FlightID = EZ_Flights.FlightID
JOIN EZ_RouteNumber ON EZ_Flights.RouteNumberID = EZ_RouteNumber.RouteNumberID
WHERE EZ_RouteNumber.FlightNumber = 'EZY801' AND DATE(EZ_Flights.DepartureDateTime) = '2018-12-07';


/*Check VivaDemo Passenger Luggage is added, delete and do again*/


SELECT DISTINCT(EZ_HoldLuggageType.LuggageType) AS 'Hold Luggage', EZ_Orders.BookingReference AS 'Booking Reference', EZ_RouteNumber.FlightNumber AS 'Flight Reference Number', DATE(EZ_Flights.DepartureDateTime) AS 'Flight Date' FROM EZ_Orders
JOIN EZ_HoldLuggage ON EZ_Orders.OrderID = EZ_HoldLuggage.OrderID
JOIN EZ_HoldLuggageType ON EZ_HoldLuggage.HoldLuggageTypeID = EZ_HoldLuggageType.LuggageTypeID
INNER JOIN EZ_PassengerDetails ON EZ_Orders.OrderID = EZ_PassengerDetails.OrderID
JOIN EZ_Passenger ON EZ_Passenger.PassengerDetailsID = EZ_PassengerDetails.PassengerDetailsID
JOIN EZ_Flights ON EZ_Passenger.FlightID = EZ_Flights.FlightID
JOIN EZ_RouteNumber ON EZ_Flights.RouteNumberID = EZ_RouteNumber.RouteNumberID
WHERE EZ_RouteNumber.FlightNumber = 'EZY801' 
AND DATE(EZ_Flights.DepartureDateTime) = '2018-12-07';


/*Check VivaDemo Passenger Special Assistance is added, delete and do again*/

SELECT EZ_PassengerDetails.Name AS 'Passenger Name', EZ_SpecialAssistanceType.Assistance AS 'Special Assistance', EZ_Seat.SeatName AS 'Seat' FROM EZ_SpecialAssistance
LEFT JOIN EZ_SpecialAssistanceType ON 
EZ_SpecialAssistance.SpecialAssistanceTypeID = EZ_SpecialAssistanceType.EZ_SpecialAssistanceTypeID
LEFT JOIN EZ_PassengerDetails ON EZ_SpecialAssistance.PassengerDetailsID = EZ_PassengerDetails.PassengerDetailsID
LEFT JOIN EZ_Passenger ON EZ_PassengerDetails.PassengerDetailsID = EZ_Passenger.PassengerDetailsID
LEFT JOIN EZ_SeatBooking on EZ_Passenger.PassengerID = EZ_SeatBooking.PassengerID
LEFT JOIN EZ_Seat ON EZ_SeatBooking.SeatID = EZ_Seat.SeatID
LEFT JOIN EZ_Flights ON EZ_Passenger.FlightID = EZ_Flights.FlightID
LEFT JOIN EZ_RouteNumber ON EZ_Flights.RouteNumberID = EZ_RouteNumber.RouteNumberID
WHERE EZ_RouteNumber.FlightNumber = 'EZY801'AND DATE(EZ_Flights.DepartureDateTime) = '2018-12-07'

/*Delete a Registered Customer/User by unique username */

DELETE FROM EZ_Customer WHERE EZ_Customer.Email = 'a_reilly1960@hotmail.com';
DELETE FROM EZ_Orders WHERE EZ_Orders.BookingReference = 'BOOK9945';

/*Check VivaDemo Passenger is deleted*/

SELECT EZ_PassengerDetails.Name AS 'Passenger Name', EZ_Seat.SeatName AS 'Seat', EZ_PassengerType.PassengerType AS 'PassengerType', EZ_SeatType.Description 'Seat Type' FROM EZ_Passenger 
LEFT OUTER JOIN EZ_PassengerDetails ON EZ_Passenger.PassengerDetailsID = EZ_PassengerDetails.PassengerDetailsID
LEFT OUTER JOIN EZ_SeatBooking ON EZ_Passenger.PassengerID = EZ_SeatBooking.PassengerID
LEFT OUTER JOIN EZ_Seat ON EZ_SeatBooking.SeatID = EZ_Seat.SeatID 
LEFT OUTER JOIN EZ_SeatType ON EZ_Seat.SeatTypeID = EZ_SeatType.SeatTypeID
LEFT OUTER JOIN EZ_PassengerType ON EZ_PassengerDetails.PassengerTypeID = EZ_PassengerType.PassengerTypeID 
JOIN EZ_Flights ON EZ_Passenger.FlightID = EZ_Flights.FlightID
JOIN EZ_RouteNumber ON EZ_Flights.RouteNumberID = EZ_RouteNumber.RouteNumberID
WHERE EZ_RouteNumber.FlightNumber = 'EZY801' AND DATE(EZ_Flights.DepartureDateTime) = '2018-12-07';

