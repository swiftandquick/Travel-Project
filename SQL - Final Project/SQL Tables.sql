CREATE TABLE City (
	ZipCode		INT(5) NOT NULL,
	State		VARCHAR(2) NOT NULL,
	City		VARCHAR(20) NOT NULL, 
	CONSTRAINT City_PK PRIMARY KEY (ZipCode)
);

CREATE TABLE Attraction (
	AttractionCode		INT(8) NOT NULL, 
	AName				VARCHAR(20)	NOT NULL, 
	AType				VARCHAR(20) NOT NULL, 
	AttractionRank		INT(4) NOT NULL, 
	ADescription		VARCHAR(50), 	
	ZipCode		INT(5) NOT NULL,
	CONSTRAINT Attraction_PK PRIMARY KEY (AttractionCode), 
	CONSTRAINT Attraction_FK1 FOREIGN KEY (ZipCode) REFERENCES City(ZipCode)
);

CREATE TABLE AttractionDetail (
	DetailedAddress		VARCHAR(30) NOT NULL, 
	PhoneNumber			VARCHAR(20), 
	OperatingHours		INT(2) NOT NULL, 
	Fee					NUMERIC(6,2) NOT NULL, 
	ADDescription		VARCHAR(50), 
	AttractionCode		INT(8) NOT NULL, 
	CONSTRAINT AttractionDetail_PK PRIMARY KEY (DetailedAddress), 
	CONSTRAINT AttractionDetail_FK1 FOREIGN KEY (AttractionCode) REFERENCES Attraction(AttractionCode) 
); 

CREATE TABLE Hotel (
	HotelAddress		VARCHAR(30) NOT NULL, 
	HName				VARCHAR(20) NOT NULL, 
	HRating				INT(1), 
	DistanceRange		INT(5) NOT NULL, 
	CONSTRAINT Hotel_PK PRIMARY KEY (HotelAddress), 
	AttractionCode		INT(8) NOT NULL, 
	CONSTRAINT Hotel_FK1 FOREIGN KEY (AttractionCode) REFERENCES Attraction(AttractionCode) 
); 

CREATE TABLE Tour (
	TourCode			INT(8) NOT NULL, 
	TouristGuide		VARCHAR(30) NOT NULL, 
	Duration			INT(3) NOT NULL, 
	Price				NUMERIC(6,2) NOT NULL, 
	CONSTRAINT Tour_PK PRIMARY KEY (TourCode)
); 

CREATE TABLE Customer (
	CustomerID			INT(10) NOT NULL, 
	FName				VARCHAR(20) NOT NULL, 
	LName				VARCHAR(20) NOT NULL, 
	JoinYear			INT(4) NOT NULL, 
	TourCode			INT(8) NOT NULL, 
	CONSTRAINT Customer_PK PRIMARY KEY (CustomerID), 
	CONSTRAINT Customer_FK1 FOREIGN KEY (TourCode) REFERENCES Tour(TourCode)
);

/* Multiple foreign keys.  */
CREATE TABLE Review (
	CommentID 			INT(12) NOT NULL,
	Category 			VARCHAR(30) NOT NULL,
	Title 				VARCHAR(30),
	Comment 			VARCHAR(100),
	RRating 			INT(1) NOT NULL,
	AttractionCode 		INT(8) NOT NULL,
	TourCode 			INT(8) NOT NULL,
	CustomerID 			INT(10) NOT NULL,
	CONSTRAINT Review_PK PRIMARY KEY (CommentID),
	CONSTRAINT Review_FK1 FOREIGN KEY (AttractionCode) REFERENCES Attraction(AttractionCode),
	CONSTRAINT Review_FK2 FOREIGN KEY (TourCode) REFERENCES Tour(TourCode),
	CONSTRAINT Review_FK3 FOREIGN KEY (CustomerID) REFERENCES Customer(CustomerID)
);

/* Route is a relationship between Attraction and Tour, it has a composite primary key.  */
CREATE TABLE Route (
	AttractionCode		INT(8) NOT NULL, 
	TourCode			INT(8) NOT NULL, 
	RouteType			VARCHAR(20) NOT NULL, 
	CONSTRAINT Route_CPK PRIMARY KEY (AttractionCode, TourCode) 
)