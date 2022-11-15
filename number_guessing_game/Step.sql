psql --username=freecodecamp --dbname=number_postgres
CREATE DATABASE number_guess;

CREATE TABLE games (
  game_id SERIAL PRIMARY KEY, 
  user_id INT not null,
  no_of_guess int not null, 
  random_num int not null,
  FOREIGN KEY (user_id) REFERENCES users (user_id)
)