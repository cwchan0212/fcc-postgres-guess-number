#!/bin/bash
#  BUild a number guessing game
PSQL="psql --username=freecodecamp --dbname=number_guess -t --no-align -c"

echo "Enter your username:"
read USERNAME
USERNAME_FOUND=$($PSQL "SELECT username from users WHERE username='$USERNAME'")

if [[ -z $USERNAME_FOUND ]]
then
  INSERT_USER=$($PSQL "INSERT INTO users (username) VALUES ('$USERNAME')")
  USER_ID=$($PSQL "SELECT user_id FROM users WHERE username='$USERNAME'")
  echo -e "\nWelcome, $USERNAME! It looks like this is your first time here."
else
    USER_ID=$($PSQL "SELECT user_id FROM users WHERE username='$USERNAME'")
    GAMES_PLAYED=$($PSQL "SELECT COUNT(*) AS cnt FROM games WHERE user_id=$USER_ID")
    BEST_GAMES=$($PSQL "SELECT MIN(no_of_guess) AS best FROM games WHERE user_id=$USER_ID")
    echo -e "\nWelcome back, $USERNAME! You have played $GAMES_PLAYED games, and your best game took $BEST_GAMES guesses."
fi
# echo $USER_ID, $USERNAME
RANDOM_NUM=$((1 + $RANDOM % 1000))
echo -e $RANDOM_NUM
GUESS=1
echo -e "\nGuess the secret number between 1 and 1000:"
while read NUM
do
  if [[ ! $NUM =~ ^[0-9]+$ ]]
  then
    echo -e "\nThat is not an integer, guess again:"
  else
    if [[ $NUM -gt $RANDOM_NUM  ]]
    then
      echo -e "\nIt's higher than that, guess again:"
    elif [[ $NUM -lt $RANDOM_NUM  ]]
    then
      echo -e "\nIt's lower than that, guess again:"
    elif [[ $NUM -eq $RANDOM_NUM  ]]
    then
      echo -e "\nYou guessed it in $GUESS tries. The secret number was $RANDOM_NUM. Nice job!"
      INSERT_GUESS=$($PSQL "INSERT INTO games (user_id, no_of_guess, random_num) VALUES ($USER_ID, $GUESS, $RANDOM_NUM)")
      exit
    fi
  fi
  GUESS=$(($GUESS + 1))
done