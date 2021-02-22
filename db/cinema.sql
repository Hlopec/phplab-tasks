CREATE DATABASE cinema_app;

CREATE TABLE `cities` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `city_name` varchar(60) NOT NULL,
  `city_address` varchar(255) NOT NULL,
  PRIMARY KEY (ID)
);

CREATE TABLE `movies` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `movies_language` varchar(60) NOT NULL,
  `duration` int(11) NOT NULL,
  `technology` varchar(60) NOT NULL,
  PRIMARY KEY (ID)
);

CREATE TABLE `rooms` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `room_number` int(11) NOT NULL,
  `rooms_space` int(11) NOT NULL,
  `technology` varchar(60) NOT NULL,
  PRIMARY KEY (ID)
);

CREATE TABLE `users` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `first_name` varchar(40) NOT NULL,
  `last_name` varchar(40) NOT NULL,
  `email` varchar(60) NOT NULL,
  `phone` varchar(40) NOT NULL,
  PRIMARY KEY (ID)
);

CREATE TABLE `order_list` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `users_id` int(11) NOT NULL,
  `city_id` int(11) NOT NULL,
  `movie_id` int(11) NOT NULL,
  `room_id` int(11) NOT NULL,
  PRIMARY KEY (ID),
  FOREIGN KEY (users_id) REFERENCES users(ID),
  FOREIGN KEY (city_id) REFERENCES cities(ID),
  FOREIGN KEY (movie_id) REFERENCES movies(ID),
  FOREIGN KEY (room_id) REFERENCES rooms(ID)
);

  INSERT INTO cities (city_name, city_address) VALUES ("Dubá", "2408 Porter Drive");
  INSERT INTO cities (city_name, city_address) VALUES ("Sukasirna", "5009 Trailsway Park");
  INSERT INTO cities (city_name, city_address) VALUES ("Rio Grande", "1575 Russell Terrace");
  INSERT INTO cities (city_name, city_address) VALUES ("Sindangan", "94 Daystar Plaza");
  INSERT INTO cities (city_name, city_address) VALUES ("Okiot", "44 Shasta Center");
  INSERT INTO cities (city_name, city_address) VALUES ("Chumpi", "34 Grover Junction");
  INSERT INTO cities (city_name, city_address) VALUES ("Canillo", "6358 Ronald Regan Terrace");
  INSERT INTO cities (city_name, city_address) VALUES ("Peza e Madhe", "5 Bartillon Trail");
  INSERT INTO cities (city_name, city_address) VALUES ("Petropavlovka", "0433 Melby Drive");
  INSERT INTO cities (city_name, city_address) VALUES ("Port-au-Prince", "77 Sloan Circle");
  INSERT INTO cities (city_name, city_address) VALUES ("Yamparáez", "07 Darwin Plaza");
  INSERT INTO cities (city_name, city_address) VALUES ("Seia", "31251 Kim Crossing");
  INSERT INTO cities (city_name, city_address) VALUES ("Shuangxikou", "2556 Ohio Road");
  INSERT INTO cities (city_name, city_address) VALUES ("Jaguariaíva", "6 Nelson Road");
  INSERT INTO cities (city_name, city_address) VALUES ("Ahar", "9256 Pond Terrace");
  INSERT INTO cities (city_name, city_address) VALUES ("Alcanena", "577 Monica Crossing");
  INSERT INTO cities (city_name, city_address) VALUES ("Sanyang", "2835 Sutherland Crossing");
  INSERT INTO cities (city_name, city_address) VALUES ("Krzyżowice", "97 Milwaukee Pass");
  INSERT INTO cities (city_name, city_address) VALUES ("Moriki", "12 Blue Bill Park Place");
  INSERT INTO cities (city_name, city_address) VALUES ("Talzemt", "623 Crownhardt Street");


  INSERT INTO movies (name, movies_language, duration, technology) VALUES ("Central Station (Central do Brasil)", "Northern Sotho", "80","3D");
  INSERT INTO movies (name, movies_language, duration, technology) VALUES ("To Kill with Intrigue (Jian hua yan yu Jiang Nan)", "Danish", "60","3D");
  INSERT INTO movies (name, movies_language, duration, technology) VALUES ("Closer to the Moon", "Haitian Creole", "90","4DX");
  INSERT INTO movies (name, movies_language, duration, technology) VALUES ("Love and Bullets", "Persian", "180","3D");
  INSERT INTO movies (name, movies_language, duration, technology) VALUES ("Inside Moves", "Hindi", "120","Cinetech");
  INSERT INTO movies (name, movies_language, duration, technology) VALUES ("I Am", "Portuguese", "90","4DX");
  INSERT INTO movies (name, movies_language, duration, technology) VALUES ("Honor Among Lovers", "Lithuanian", "180","2D");
  INSERT INTO movies (name, movies_language, duration, technology) VALUES ("Meltdown (Shu dan long wei)", "Danish", "180","4DX");
  INSERT INTO movies (name, movies_language, duration, technology) VALUES ("O Auto da Compadecida (Dog's Will, A)", "Georgian", "120","3D");
  INSERT INTO movies (name, movies_language, duration, technology) VALUES ("Clean and Sober", "Catalan", "90","IMAX");
  INSERT INTO movies (name, movies_language, duration, technology) VALUES ("Curse, The (a.k.a. The Farm)", "Hiri Motu", "120","IMAX");
  INSERT INTO movies (name, movies_language, duration, technology) VALUES ("Grand Hotel", "Azeri", "120","3D");
  INSERT INTO movies (name, movies_language, duration, technology) VALUES ("Truth of Lie, The (Die Wahrheit der Lüge)", "Indonesian", "60","2D");
  INSERT INTO movies (name, movies_language, duration, technology) VALUES ("Up the Down Staircase", "Dutch", "120","Cinetech");
  INSERT INTO movies (name, movies_language, duration, technology) VALUES ("End of St. Petersburg, The (Konets Sankt-Peterburga)", "Dari", "240","2D");
  INSERT INTO movies (name, movies_language, duration, technology) VALUES ("Prom Night", "Polish", "90","2D");
  INSERT INTO movies (name, movies_language, duration, technology) VALUES ("Show Boat", "Tetum", "90","3D");
  INSERT INTO movies (name, movies_language, duration, technology) VALUES ("Four Sons", "Sotho", "60","Cinetech");
  INSERT INTO movies (name, movies_language, duration, technology) VALUES ("Jubilation Street", "Pashto", "180","IMAX");
  INSERT INTO movies (name, movies_language, duration, technology) VALUES ("Slackers", "Danish", "320","2D");
  
  INSERT INTO rooms (room_number, rooms_space, technology) VALUES ("1","120","2D");
  INSERT INTO rooms (room_number, rooms_space, technology) VALUES ("2","80","3D");
  INSERT INTO rooms (room_number, rooms_space, technology) VALUES ("3","200","Cinetech");
  INSERT INTO rooms (room_number, rooms_space, technology) VALUES ("4","80","2D");
  INSERT INTO rooms (room_number, rooms_space, technology) VALUES ("5","340","IMAX");
  INSERT INTO rooms (room_number, rooms_space, technology) VALUES ("6","80","3D");
  INSERT INTO rooms (room_number, rooms_space, technology) VALUES ("7","80","4DX");
  INSERT INTO rooms (room_number, rooms_space, technology) VALUES ("8","120","2D");
  INSERT INTO rooms (room_number, rooms_space, technology) VALUES ("9","580","IMAX");
  INSERT INTO rooms (room_number, rooms_space, technology) VALUES ("10","80","3D");
  INSERT INTO rooms (room_number, rooms_space, technology) VALUES ("11","80","4DX");
  INSERT INTO rooms (room_number, rooms_space, technology) VALUES ("12","120","2D");
  INSERT INTO rooms (room_number, rooms_space, technology) VALUES ("13","120","3D");
  INSERT INTO rooms (room_number, rooms_space, technology) VALUES ("14","120","Cinetech");
  INSERT INTO rooms (room_number, rooms_space, technology) VALUES ("15","200","IMAX");

  INSERT INTO users (first_name, last_name, email, phone) VALUES ("Emmit", "Bauduccio", "ebauduccio0@chicagotribune.com", "759-840-0589");
  INSERT INTO users (first_name, last_name, email, phone) VALUES ("Ingrim", "Adran", "iadran1@feedburner.com", "958-895-6935");
  INSERT INTO users (first_name, last_name, email, phone) VALUES ("Talya", "O'Loughane", "toloughane2@ox.ac.uk", "574-574-0184");
  INSERT INTO users (first_name, last_name, email, phone) VALUES ("Sonni", "Golt", "sgolt3@berkeley.edu", "200-840-0591");
  INSERT INTO users (first_name, last_name, email, phone) VALUES ("Tiebout", "Vagges", "tvagges4@ft.com", "917-734-5684");
  INSERT INTO users (first_name, last_name, email, phone) VALUES ("Fee", "Richards", "frichards5@topsy.com", "931-173-6412");
  INSERT INTO users (first_name, last_name, email, phone) VALUES ("Felizio", "Hedde", "fhedde6@wikispaces.com", "822-891-0510");
  INSERT INTO users (first_name, last_name, email, phone) VALUES ("Fonz", "Kellegher", "fkellegher7@artisteer.com", "687-187-0453");
  INSERT INTO users (first_name, last_name, email, phone) VALUES ("Bonita", "Peplaw", "bpeplaw8@edublogs.org", "261-783-4067");
  INSERT INTO users (first_name, last_name, email, phone) VALUES ("Belvia", "Inglis", "binglis9@microsoft.com", "335-970-1356");