/* City */
INSERT INTO City VALUES (32099, "FL", "Jacksonville");
INSERT INTO City VALUES (77001, "TX", "Houston");
INSERT INTO City VALUES (80123, "CO", "Denver"); 
INSERT INTO City VALUES (84101, "UT", "Salt Lake City");
INSERT INTO City VALUES (90001, "CA", "Los Angeles");
INSERT INTO City VALUES (10001, "NY", "New York City");

/* Attraction */
INSERT INTO Attraction VALUES (10425150, "Hanson Stadium", "Stadium", 230, "An American football stadium.", 77001); 
INSERT INTO Attraction VALUES (19536849, "Future Museum", "Museum", 399, "", 80123); 
INSERT INTO Attraction VALUES (19539158, "Silent Cathedral", "Church", 603, "Most attended church in Denver.", 80123); 
INSERT INTO Attraction VALUES (29163603, "Colon Mall", "Mall", 4925, "The mall next to Colon Zoo.", 10001); 
INSERT INTO Attraction VALUES (29164290, "Colon Zoo", "Zoo", 7, "Largest zoo in the United States!", 10001); 
INSERT INTO Attraction VALUES (36904150, "Museum of Death", "Museum", 1210, "", 32099); 
INSERT INTO Attraction VALUES (36906314, "Zoolander", "Zoo", 2150, "", 32099); 
INSERT INTO Attraction VALUES (49603835, "Sodium Museum", "Museum", 1942, "", 84101); 
INSERT INTO Attraction VALUES (63656110, "Whitney Park", "Park", 1124, "", 90001); 
INSERT INTO Attraction VALUES (63656250, "Black Star Stadium", "Stadium", 429, "A baseball stadium.", 90001); 

/* AttractionDetail */
INSERT INTO AttractionDetail VALUES ("5 Newton Street", "296-534-5261", 12, 460.42, "", 10425150); 
INSERT INTO AttractionDetail VALUES ("68 Babara Street", "290-613-6363", 24, 99.99, "", 19536849); 
INSERT INTO AttractionDetail VALUES ("31 Babara Street", "290-631-5366", 9, 445.12, "", 19539158); 
INSERT INTO AttractionDetail VALUES ("99 Colon Street", "195-516-6912", 12, 500.61, "", 29163603); 
INSERT INTO AttractionDetail VALUES ("1 Colon Street", "195-510-0000", 11, 196.53, "", 29164290); 
INSERT INTO AttractionDetail VALUES ("39 New Salem Street", "296-190-5210", 24, 111.11, "", 36904150); 
INSERT INTO AttractionDetail VALUES ("119 New Salem Street", "296-195-5114", 14, 330.84, "", 36906314); 
INSERT INTO AttractionDetail VALUES ("7 Winston Street", "280-531-6311", 10, 490.64, "", 49603835); 
INSERT INTO AttractionDetail VALUES ("880 Whitney Street",	"894-100-6310", 12, 164.75, "", 63656110); 
INSERT INTO AttractionDetail VALUES ("11 Whitney Street", "894-512-7194", 12, 290.64, "", 63656250); 

/* Hotel */
INSERT INTO Hotel VALUES ("77 Newton Street", "Copper Dine", 6, 190, 10425150); 
INSERT INTO Hotel VALUES ("18 Wan Street", "Watt's Ville", 9, 1056, 10425150); 
INSERT INTO Hotel VALUES ("520 Wholemilk Street", "New Castle", 9, 1995, 19536849); 
INSERT INTO Hotel VALUES ("67 Godwin Street", "Honey Palace", 6, 752, 19536849); 
INSERT INTO Hotel VALUES ("62 Sleepywood Street", "Sleepywood Inn", 3, 35, 19539158); 
INSERT INTO Hotel VALUES ("101 Colon Street", "Western Hotel", 8, 45, 29163603); 
INSERT INTO Hotel VALUES ("4 Colon Street", "Colon Hotel", 9, 32, 29164290); 
INSERT INTO Hotel VALUES ("9 Colon Street", "Triple Tree", 5, 63, 29164290); 
INSERT INTO Hotel VALUES ("11 Colon Street", "Trump Hotel NYC", 7, 98, 29164290); 
INSERT INTO Hotel VALUES ("190 Origin Street", "Mirror's End", 5, 637, 36904150); 
INSERT INTO Hotel VALUES ("224 Max Street", "Party House", 7, 4520, 36904150); 
INSERT INTO Hotel VALUES ("31 Bland Street", "Temple of Hope", 6, 3359, 49603835); 
INSERT INTO Hotel VALUES ("42 Manchester Street", "Connie's Inn", 4, 356, 63656250); 
INSERT INTO Hotel VALUES ("51 Whitney Street", "Black Star Hotel", 9, 268, 63656250); 

/* Tour */ 
INSERT INTO Tour VALUES (11536150, "Jenny White", 3, 25.61); 
INSERT INTO Tour VALUES (11536151, "Elizabeth Black", 3, 27.31); 
INSERT INTO Tour VALUES (11534251, "Asahel Mason", 3, 20.12); 
INSERT INTO Tour VALUES (21526782, "Jane Williams", 6, 19.63); 
INSERT INTO Tour VALUES (31856514, "Yamato Shibaki", 2, 20.63); 
INSERT INTO Tour VALUES (31852220, "Jason Velocity", 8, 49.50); 
INSERT INTO Tour VALUES (31852221, "Herbert Coast", 8, 50.62); 
INSERT INTO Tour VALUES (31852222, "Donald Ford", 4, 27.61); 
INSERT INTO Tour VALUES (31852223, "Ernest Harris", 4, 28.63); 
INSERT INTO Tour VALUES (31852224, "Hussein Ali", 4, 29.99); 
INSERT INTO Tour VALUES (41503690, "Mel Johnson", 2, 14.63); 
INSERT INTO Tour VALUES (41503691, "John Amias", 5, 26.63); 
INSERT INTO Tour VALUES (41509063, "Damion Ronda", 4, 33.64); 
INSERT INTO Tour VALUES (41509064, "Rafael Cihak", 2, 21.68); 
INSERT INTO Tour VALUES (51536311, "Simon Lee", 2, 20.61); 
INSERT INTO Tour VALUES (69694200, "Cecilia Gabris", 5, 31.86); 
INSERT INTO Tour VALUES (69694201, "Aspasia Demopoulos", 3, 16.74); 
INSERT INTO Tour VALUES (69692002, "Cletus Malia", 3, 15.63); 
INSERT INTO Tour VALUES (69692000, "Lyra Snare", 2, 10.52); 

/* Customer */
INSERT INTO Customer VALUES (12692309, "Percy", "Hicks", 2013, 69694200); 
INSERT INTO Customer VALUES (15216036, "John", "Weng", 2013, 69694200); 
INSERT INTO Customer VALUES (24463029, "Tiffany", "Tomlinson", 2014, 11536151); 
INSERT INTO Customer VALUES (32953819, "Samuel", "Doe", 2014, 31852220); 
INSERT INTO Customer VALUES (36124953, "Wendy", "Constantinople", 2015, 31852220); 
INSERT INTO Customer VALUES (40663026, "Ronaldo", "Cook", 2015, 21526782); 
INSERT INTO Customer VALUES (45620592, "Donald", "Reagan", 2015, 51536311); 
INSERT INTO Customer VALUES (56042653, "August", "Ladefoged", 2016, 69694200); 

/* Review */
INSERT INTO Review VALUES (528079435, "Tourist Guide Review", "Cheerful Crowd", "The crowd in the stadium made my day.", 9, 63656110, 69694200, 12692309); 
INSERT INTO Review VALUES (528079436, "Tourist Guide Review", "However", "I like the trip but our guide is bad.", 3, 63656110, 69694200, 12692309); 
INSERT INTO Review VALUES (528079951, "Attraction Review", "Cecilia", "She's mediocre at guiding.", 5, 63656110, 69694200, 15216036); 
INSERT INTO Review VALUES (528080001, "Attraction Review", "Stadium is too full!", "I can't get in!", 1, 10425150, 11536151, 24463029); 
INSERT INTO Review VALUES (528080425, "Tourist Guide Review", "Arrogant Tourist", "Jason Velocity is the worst tourist guide ever.", 1, 29164290, 31852220, 32953819); 
INSERT INTO Review VALUES (528081001, "Attraction Review", "Fun Time", "The zoo is a good attraction, but slightly overrated.", 6, 29164290, 31852220, 36124953); 
INSERT INTO Review VALUES (528082942, "Attraction Review", "", "", 8, 19539158, 21526782, 40663026); 
INSERT INTO Review VALUES (528083999, "Attraction Review", "", "", 4, 49603835, 51536311, 45620592); 
INSERT INTO Review VALUES (528089999, "Attraction Review", "Best trip ever!", "This is the best zoo I ever went to.", 9, 29164290, 31852221, 56042653); 

/* Route */
INSERT INTO Route VALUES (10425150, 11536150, "Round Trip"); 
INSERT INTO Route VALUES (10425150, 11536151, "Round Trip"); 
INSERT INTO Route VALUES (19536849, 11534251, "Round Trip"); 
INSERT INTO Route VALUES (19539158, 21526782, "Round Trip"); 
INSERT INTO Route VALUES (29163603, 31856514, "Round Trip"); 
INSERT INTO Route VALUES (29164290, 31852220, "Round Trip"); 
INSERT INTO Route VALUES (29164290, 31852221, "Round Trip"); 
INSERT INTO Route VALUES (29164290, 31852222, "One Way"); 
INSERT INTO Route VALUES (29164290, 31852223, "One Way"); 
INSERT INTO Route VALUES (29164290, 31852224, "One Way"); 
INSERT INTO Route VALUES (36904150, 41503690, "One Way"); 
INSERT INTO Route VALUES (36904150, 41503691, "Round Trip"); 
INSERT INTO Route VALUES (36906314, 41509063, "Round Trip"); 
INSERT INTO Route VALUES (36906314, 41509064, "Round Trip"); 
INSERT INTO Route VALUES (49603835, 51536311, "One Way"); 
INSERT INTO Route VALUES (63656110, 69694200, "Round Trip"); 
INSERT INTO Route VALUES (63656110, 69694201, "One Way"); 
INSERT INTO Route VALUES (63656110, 69692002, "One Way"); 
INSERT INTO Route VALUES (63656250, 69692000, "Round Trip"); 