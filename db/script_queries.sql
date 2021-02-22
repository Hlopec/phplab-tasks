 
  SELECT DISTINCT email FROM users;
  
  SELECT * FROM movies ORDER BY movies_language;
  
  SELECT rooms_space FROM rooms GROUP BY rooms_space;
  
  SELECT technology FROM rooms UNION SELECT technology FROM movies ORDER BY technology;
  
  SELECT duration FROM movies WHERE duration BETWEEN 200 AND 360;
  
  SELECT AVG(duration) FROM movies