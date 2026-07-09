-- Query 1: Total Ride Requests
SELECT COUNT(*) AS Total_Ride_Requests
FROM uber_requests;

-- Query 2: Ride Requests by Status
SELECT Status, COUNT(*) AS Total_Requests
FROM uber_requests
GROUP BY Status;

-- Query 3: Ride Requests by Pickup Point
SELECT "Pickup point", COUNT(*) AS Total_Requests
FROM uber_requests
GROUP BY "Pickup point";

-- Query 4: Completed Rides
SELECT COUNT(*) AS Completed_Rides
FROM uber_requests
WHERE Status = 'Trip Completed';

-- Query 5: Cancelled Rides
SELECT COUNT(*) AS Cancelled_Rides
FROM uber_requests
WHERE Status = 'Cancelled';

-- Query 6: No Cars Available
SELECT COUNT(*) AS No_Cars_Available
FROM uber_requests
WHERE Status = 'No Cars Available';

-- Query 7: Ride Status by Pickup Point
SELECT "Pickup point",
       Status,
       COUNT(*) AS Total
FROM uber_requests
GROUP BY "Pickup point", Status
ORDER BY "Pickup point";

-- Query 8: Ride Requests by Hour
SELECT
strftime('%H', "Request timestamp") AS Hour,
COUNT(*) AS Total_Requests
FROM uber_requests
GROUP BY Hour
ORDER BY Hour;

-- Query 9: Airport Requests by Status
SELECT Status,
COUNT(*) AS Total
FROM uber_requests
WHERE "Pickup point"='Airport'
GROUP BY Status;

-- Query 10: City Requests by Status
SELECT Status,
COUNT(*) AS Total
FROM uber_requests
WHERE "Pickup point"='City'
GROUP BY Status;
