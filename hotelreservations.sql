--FIRST CREATE DATABSE CALLED "HOTEL_RESERVATION"
CREATE DATABASE HOTEL_RESERVATION

--DIRECT FROM MASTER TO YOUR DATABASE CALLED "HOTEL_RESERVATION"
USE HOTEL_RESERVATION

/*Utilize SQL Commands to gain insights into guest preferences,
booking trends, and other key factors that impact hotel operations*/

-- 1. Total number of reservations in the dataset
SELECT COUNT(*) AS Total_Reservations
FROM HotelReservations

-- 2. Most popular meal plan among guests
SELECT Top 1 type_of_meal_plan, COUNT(*) AS Count
FROM HotelReservations
GROUP BY type_of_meal_plan
ORDER BY Count DESC

-- 3. Average price per room for reservations involving children
SELECT AVG(avg_price_per_room) AS Avg_Price_With_Children
FROM HotelReservations
WHERE no_of_children > 0

-- 4. Reservations made for the year 20XX (replace XX with the desired year)
SELECT COUNT(*) AS Total_Reservations_Year
FROM HotelReservations
WHERE YEAR(arrival_date) = 2017 --  XX = 17 with the year

-- 5. Most commonly booked room type
SELECT TOP 1 room_type_reserved, COUNT(*) AS Count
FROM HotelReservations
GROUP BY room_type_reserved
ORDER BY Count DESC


-- 6. Reservations that fall on a weekend
SELECT COUNT(*) AS Weekend_Reservations
FROM HotelReservations
WHERE no_of_weekend_nights > 0

-- 7. Highest and lowest lead time for reservations
SELECT MAX(lead_time) AS Max_Lead_Time, MIN(lead_time) AS Min_Lead_Time
FROM HotelReservations

-- 8. Most common market segment type for reservations
SELECT TOP 1 market_segment_type, COUNT(*) AS Count
FROM HotelReservations
GROUP BY market_segment_type
ORDER BY Count DESC

-- 9. Reservations with booking status of "Confirmed"
SELECT COUNT(*) AS Confirmed_Reservations
FROM HotelReservations
WHERE booking_status = 'Confirmed'

-- 10. Total number of adults and children across all reservations
SELECT SUM(no_of_adults) AS Total_Adults, SUM(no_of_children) AS Total_Children
FROM HotelReservations

-- 11. Average number of weekend nights for reservations involving children
SELECT AVG(no_of_weekend_nights) AS Avg_Weekend_Nights_With_Children
FROM HotelReservations
WHERE no_of_children > 0

-- 12. Reservations made in each month of the year
SELECT MONTH(arrival_date) AS Month, COUNT(*) AS Reservations_Count
FROM HotelReservations
GROUP BY MONTH(arrival_date)
ORDER BY Month

-- 13. Average number of nights spent by guests for each room type
SELECT room_type_reserved, AVG(no_of_weekend_nights + no_of_week_nights) AS Avg_Nights
FROM HotelReservations
GROUP BY room_type_reserved

-- 14. Most common room type for reservations involving children and average price
SELECT TOP 1 room_type_reserved, COUNT(*) AS Count, AVG(avg_price_per_room) AS Avg_Price
FROM HotelReservations
WHERE no_of_children > 0
GROUP BY room_type_reserved
ORDER BY Count DESC

-- 15. Market segment type that generates the highest average price per room
SELECT TOP 1 market_segment_type, AVG(avg_price_per_room) AS Avg_Price
FROM HotelReservations
GROUP BY market_segment_type
ORDER BY Avg_Price DESC
