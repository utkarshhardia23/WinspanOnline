--Design queries based on the following: 
----a. Find the top3 fastest-speed bird associated with Wingspan, food-token and  habitat(s). 
select birdName from Bird where Wingspan = 'Something' and food_id = '9' and habitat_id = '10' order by winspan desc limit 3
----b. Find duplicate birds if possible. 
SELECT birdName from Bird group by birdName having count(bird_id) > 1
----c. At the end of the game, calculate all credits for each player. 
SELECT user_id, game_id, sum(points_earned) as totalCredits from GameTransaction group by user_id, game_id



--4. Please design a software scheduler using Python/Groovy/Bash Script to backup all  Databases every night, and restore them in new databases with selected tables with  your choice.
--unix command to backup Postgre SQL database - 
pg_dump -Fc -h 127.0.0.1 -U dbuser -W 'NotmyPassword' Winspan -f Winspan.dump
--We can put the above code in .sh file and schedule it to run at 12 mid night everyday with the help of crane job scheduler