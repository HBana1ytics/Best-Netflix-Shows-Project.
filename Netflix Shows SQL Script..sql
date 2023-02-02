SELECT * FROM casestudy.`best shows on netflix`;
   
#Best genre and productions according to both scores and votes   
SELECT MAIN_GENRE, MAIN_PRODUCTION, AVG(SCORE) AS AVG_SCORE, SUM(NUMBER_OF_VOTES) AS TOTAL_VOTES 
FROM `best shows on netflix` 
GROUP BY MAIN_GENRE, MAIN_PRODUCTION
ORDER BY AVG_SCORE DESC, TOTAL_VOTES DESC;   
 
#Best genre and productions according to votes    
SELECT MAIN_GENRE, MAIN_PRODUCTION, SUM(NUMBER_OF_VOTES) AS TOTAL_VOTES
FROM `best shows on netflix`
GROUP BY MAIN_GENRE, MAIN_PRODUCTION
ORDER BY TOTAL_VOTES DESC; 
 
#votes for best shows according to release years from the beginning till now    
SELECT RELEASE_YEAR, SUM(NUMBER_OF_VOTES) AS TOTAL_VOTES
FROM `best shows on netflix`
GROUP BY RELEASE_YEAR
ORDER BY RELEASE_YEAR;  
  
#release years according to highest votes for best shows   
SELECT RELEASE_YEAR, SUM(NUMBER_OF_VOTES) AS TOTAL_VOTES
FROM `best shows on netflix`  
GROUP BY RELEASE_YEAR
ORDER BY TOTAL_VOTES DESC;
  
#Average scores for every genre              
SELECT MAIN_GENRE, AVG(SCORE) AS AVG_SCORE
FROM `best shows on netflix`
GROUP BY MAIN_GENRE
ORDER BY AVG_SCORE DESC;
  
#Top three (3) shows according to the highest votes       
SELECT TITLE, NUMBER_OF_VOTES     
FROM `best shows on netflix`
ORDER BY NUMBER_OF_VOTES DESC
LIMIT 3;     
   
# Best show with longest duration    
SELECT TITLE, DURATION
FROM `best shows on netflix` 
ORDER BY DURATION DESC
LIMIT 1; 

#Top three (3) genres with longest durations      
SELECT MAIN_GENRE, DURATION    
FROM `best shows on netflix`  
ORDER BY DURATION DESC
LIMIT 3;  
 
#Top three (3) shows with most seasons, their genre, votes and scores     
SELECT TITLE, NUMBER_OF_SEASONS, MAIN_GENRE, SCORE, NUMBER_OF_VOTES               
FROM `best shows on netflix`  
ORDER BY NUMBER_OF_SEASONS DESC
LIMIT 3                                                          
  
  
  
 