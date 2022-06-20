CREATE TABLE P_WINGSPAN.Game (
    gameid serial PRIMARY KEY,
    creator_id INT NOT NULL,
    start_tsp timestamp NOT NULL,
    END_TSP timestamp,
    FOREIGN KEY (creator_id)
       REFERENCES Users (user_id)
    );
    
CREATE TABLE P_WINGSPAN.Users (
    user_id serial PRIMARY KEY,
    firstName VARCHAR (255) NOT NULL,
    lastName VARCHAR (255) NOT NULL
    );
    
CREATE TABLE P_WINGSPAN.Food (
    food_id serial PRIMARY KEY,
    foodName VARCHAR (255) NOT NULL,
    description VARCHAR (255)
    );
    
CREATE TABLE P_WINGSPAN.Habitat (
    habitat_id serial PRIMARY KEY,
    habitatName VARCHAR (255) NOT NULL,
    description VARCHAR (255)
    );
    
CREATE TABLE P_WINGSPAN.Bird (
    Bird_id serial PRIMARY KEY,
    birdName VARCHAR (255) NOT NULL,
    winspan int,
    food_id int NOT NULL,
    habitat_id int NOT NULL,
    card_url VARCHAR (255) NOT NULL,
    FOREIGN KEY (food_id)
       REFERENCES Food (food_id),
    FOREIGN KEY (habitat_id)
       REFERENCES Habitat (habitat_id)
    );

CREATE TABLE P_WINGSPAN.GameTransaction (
    session_id serial PRIMARY KEY,
    game_id int NOT NULL,
    user_id int NOT NULL,
    points_earned int NOT NULL,
    session_timestamp timestamp,
    card_url VARCHAR (255) NOT NULL,
    FOREIGN KEY (game_id)
       REFERENCES Game (gameid),
    FOREIGN KEY (user_id)
       REFERENCES Users (user_id)
    );