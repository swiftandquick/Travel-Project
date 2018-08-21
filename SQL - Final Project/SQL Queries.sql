/* Chapter 6 */

/* Displays two columns from table Tour.  */
SELECT TourCode, TouristGuide 
FROM Tour; 

/* Displays all columns from table Attraction.  */
SELECT * 
FROM Attraction; 

/* Display all hotel names with the rating of 9 */
SELECT HName
FROM Hotel
WHERE HRating = 9; 

/* Display all attractions that are museums or churches.  */
SELECT AName 
FROM Attraction
WHERE AType IN ('Museum', 'Church'); 

/* Display all columns from AttractionDetails that are in New Salem Street.  */
SELECT * 
FROM AttractionDetail
WHERE DetailedAddress LIKE '%New Salem Street%'; 


/* Chapter 7 */

/* Count the reviews that have the rating of 5 or above.  */
SELECT COUNT(*) AS Count
FROM Review 
WHERE RRating >= 5; 

/* Find number of hotel in each attraction (based on attraction code), 
and average rating for each attraction's nearby hotels.  */
SELECT AttractionCode,
		COUNT(HotelAddress) AS HotelCount,
		AVG(HRating) AS AvgRating
FROM Hotel
GROUP BY AttractionCode
ORDER BY AvgRating; 

/* List all the customers that wrote an attraction review based on customerID.  */
SELECT *
FROM Customer
WHERE CustomerID IN
	(SELECT CustomerID
	FROM Review
	WHERE Category LIKE '%Attraction%'); 
	
	
/* Chapter 8 */

/* List CustomerID with Name on the Review table if it is matching with Customer table.  */
SELECT r.CustomerID, FName, LName, r.TourCode, RRating
FROM Customer c, Review r
WHERE c.CustomerID = r.CustomerID;
	
/* Show the TourCode and RouteType of the Route table if there is a match between Route and Tour table  */
SELECT r.TourCode, RouteType
FROM Route r JOIN Tour t ON r.TourCode = t.TourCode;

/* Find the customers that has the tour code of 69694200.  */ 
SELECT CustomerID, FName, LName, JoinYear
FROM Customer c 
WHERE EXISTS
	(SELECT *
	FROM Review r
	WHERE c.CustomerID = r.CustomerID AND TourCode = 69694200); 


/* Extra Chapter 7 Queries */

/* Checks for the number of empty comments in Review table.  */
SELECT COUNT(CommentID) AS EmptyComments 
FROM Review
WHERE Comment = ""; 

/* Checks for the number of non-empty comments in Review table.  */
SELECT COUNT(CommentID) AS EmptyComments 
FROM Review
WHERE Comment != ""; 

/* Display all durations that applies to multiple (more than 1) tours.  */
SELECT Duration, COUNT(Duration) AS NumberOfTours
FROM Tour
GROUP BY Duration
HAVING COUNT(Duration) > 1
ORDER BY Duration; 

/* Counts the number of tours that have the same duration.  
/* Checks the average price for each tour that have the duration of between 3 and 6 hours, 
order of the table:  highest duration to lowest duration (descendingly).  */
SELECT Duration, COUNT(Duration) AS NumberOfTours, AVG(Price) AS AvgPrice
FROM Tour
WHERE Duration BETWEEN 3 AND 6
GROUP BY Duration
ORDER BY Duration DESC;

/* Checks which tour guide isn't rated by customers.  
Tourist guides that are rated by customers have 'Category' as 'Tourist Guide Review.'  
There are 19 tours in total, and there are only 2 being rated by customers.  
This means there are 17 tourist guides haven't been rated yet.  */
SELECT *
FROM Tour
WHERE TourCode NOT IN
	(SELECT TourCode
	FROM Review
	WHERE Category = "Tourist Guide Review");
	

/* Extra Chapter 8 Queries */

/* Show the AttractionCode and count the RouteType if there is a match between Route and Tour table  */
SELECT r.AttractionCode, COUNT(RouteType) AS count
FROM Route r left JOIN Tour t ON r.TourCode = t.TourCode
GROUP BY r.RouteType
ORDER BY r.AttractionCode;

