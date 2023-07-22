#!/bin/bash

PSQL="psql --username=freecodecamp --dbname=number_guess -t --no-align -c"

SECRET_VARIABLE=$((1 + $RANDOM % 1000))


#CHECKING IF USER HAS PLAYED
echo -e "\nEnter your username:"
read USERNAME

CHECK_USERNAME=$($PSQL "SELECT name from users WHERE name='$USERNAME'")

if [[ -z $CHECK_USERNAME ]]
  then
    echo -e "\nWelcome, $USERNAME! It looks like this is your first time here."
    INSERT_USER=$($PSQL "INSERT INTO users(name, number_of_games, best_game) VALUES('$USERNAME',0, 10000)")
    GAMES_PLAYED=$($PSQL "SELECT number_of_games FROM users WHERE name='$USERNAME'")
    BEST_GAME=$($PSQL "SELECT best_game FROM users WHERE name='$USERNAME'")
  else
    GAMES_PLAYED=$($PSQL "SELECT number_of_games FROM users WHERE name='$USERNAME'")
    BEST_GAME=$($PSQL "SELECT best_game FROM users WHERE name='$USERNAME'")
    echo -e "\nWelcome back, $USERNAME! You have played $GAMES_PLAYED games, and your best game took $BEST_GAME guesses."
fi

#PLAYING THE GAME
echo -e "\nGuess the secret number between 1 and 1000:"
read GUESS
NUMBER_OF_GUESSES=1

until [[ $GUESS == $SECRET_VARIABLE ]]
do
  if [[ $GUESS =~ [0-9]+ ]]
  then
    if [[ $GUESS > $SECRET_VARIABLE ]]
    then
      echo -e "\nIt's lower than that, guess again:"
      read GUESS
((NUMBER_OF_GUESSES++))

    fi
    if  [[ $GUESS < $SECRET_VARIABLE ]]
    then
      echo -e "\nIt's higher than that, guess again:"
      read GUESS
((NUMBER_OF_GUESSES++))

    fi
  else
  echo -e "\nThat is not an integer, guess again:"
  read GUESS
((NUMBER_OF_GUESSES++))
  fi
done

if [[ $NUMBER_OF_GUESSES -lt $BEST_GAME ]]
then
  UPDATE_BEST=$($PSQL "UPDATE users SET best_game=$NUMBER_OF_GUESSES WHERE name='$USERNAME'")
fi

((GAMES_PLAYED++))
UPDATE_PLAYED=$($PSQL "UPDATE users set number_of_games=$GAMES_PLAYED WHERE name='$USERNAME'")

echo -e "\nYou guessed it in $NUMBER_OF_GUESSES tries. The secret number was $SECRET_VARIABLE. Nice job!"

