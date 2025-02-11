#!/bin/bash

PSQL="psql --username=freecodecamp --dbname=number_guess -t --no-align -c"

RANDOM_NUM=$(( ( RANDOM % 1000 ) + 1 ))
GUESS_COUNT=0

# Prompt the user for their username
echo "Enter your username:"
read USERNAME
USERNAME=$(echo "$USERNAME" | xargs) 

# Check if the user exists in the database
USER_DATA=$($PSQL "SELECT user_id, games_played, best_game FROM users WHERE username='$USERNAME'")

if [[ -z $USER_DATA ]]; then
  # If the user doesn't exist, insert them into the database
  $PSQL "INSERT INTO users(username, games_played, best_game) VALUES ('$USERNAME', 0, NULL)" > /dev/null
  echo "Welcome, $USERNAME! It looks like this is your first time here."
  GAMES_PLAYED=0
  BEST_GAME="not recorded yet"
else
  # Extract user data
  IFS='|' read USER_ID GAMES_PLAYED BEST_GAME <<< "$USER_DATA"

  # If BEST_GAME is NULL, set it to "not recorded yet"
  if [[ -z $BEST_GAME || $BEST_GAME == "NULL" ]]; then
    BEST_GAME="not recorded yet"
  fi

  echo "Welcome back, $USERNAME! You have played $GAMES_PLAYED games, and your best game took $BEST_GAME guesses."
fi

# Increment games played
GAMES_PLAYED=$((GAMES_PLAYED + 1))
$PSQL "UPDATE users SET games_played=$GAMES_PLAYED WHERE username='$USERNAME'" > /dev/null

# Start the guessing game
echo "Guess the secret number between 1 and 1000:"
while true; do
  read GUESS
  ((GUESS_COUNT++))

  # Check if input is a valid integer
  if [[ ! $GUESS =~ ^[0-9]+$ ]]; then
    echo "That is not an integer, guess again:"
    continue
  fi

  # Compare guess with the secret number
  if [[ $GUESS -lt $RANDOM_NUM ]]; then
    echo "It's higher than that, guess again:"
  elif [[ $GUESS -gt $RANDOM_NUM ]]; then
    echo "It's lower than that, guess again:"
  else
    # Update best game if necessary
    if [[ "$BEST_GAME" == "not recorded yet" || $GUESS_COUNT -lt $BEST_GAME ]]; then
      $PSQL "UPDATE users SET best_game=$GUESS_COUNT WHERE username='$USERNAME'" > /dev/null
    fi

    echo "You guessed it in $GUESS_COUNT tries. The secret number was $RANDOM_NUM. Nice job!"
    echo "Game over. Thanks for playing!"
    exit 0
  fi
done
