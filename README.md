# HotelReservation-SQL-Analysis

## Project Overview

The hotel industry relies on data to make informed decisions and provide a better guest experience. In this project, you will work with a hotel reservation dataset to gain insights into guest preferences, booking trends, and other key factors that impact hotel operations. Utilizing SQL, primarily through Microsoft SQL Server as the database management system, you will query and analyze the data to answer specific questions about the dataset. This hands-on experience will help you develop your data analysis skills in a practical context, allowing you to effectively manipulate and derive insights from the data.

## Dataset Details

The dataset includes the following columns:

- **Booking_ID**: A unique identifier for each hotel reservation.
- **no_of_adults**: The number of adults in the reservation.
- **no_of_children**: The number of children in the reservation.
- **no_of_weekend_nights**: The number of nights in the reservation that fall on weekends.
- **no_of_week_nights**: The number of nights in the reservation that fall on weekdays.
- **type_of_meal_plan**: The meal plan chosen by the guests.
- **room_type_reserved**: The type of room reserved by the guests.
- **lead_time**: The number of days between booking and arrival.
- **arrival_date**: The date of arrival.
- **market_segment_type**: The market segment to which the reservation belongs.
- **avg_price_per_room**: The average price per room in the reservation.
- **booking_status**: The status of the booking.

## Import HotelReservations.csv Data to Sql server management studio Using the Import Wizard
## Steps

1. **Create the Database**  
   First, create a database called `HOTEL_RESERVATION` using the following query:
   ```sql
   CREATE DATABASE HOTEL_RESERVATION
2. **Import Data**
Right-click on the database called HOTEL_RESERVATION and select Tasks > Import Data
![image](https://github.com/user-attachments/assets/5677c013-a79e-4038-8902-7f99f84bf9ac)
![image](https://github.com/user-attachments/assets/d6443ac1-efe9-45d5-81da-00b7edf9d0b9)
![image](https://github.com/user-attachments/assets/b3f15b19-81c7-4a27-8c34-493a778b6150)


