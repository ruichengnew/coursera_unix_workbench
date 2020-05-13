#!/usr/bin/env bash

function test_user_guess {
  if [[ $user_guess -eq $right_ans ]]
  then
    echo "Congratulations! You're definitely right."
  elif [[ $user_guess -gt $right_ans ]]
  then
    echo "Sorry. Your guess is a litter big."
  else
    echo "Sorry. Your guess is a little small."
  fi
}


echo "Welcome to my project!"
echo "Can you guess how many files are there in my project?"

ans=0
right_ans=$(ls | wc -l)

while [[ $ans -ne $right_ans ]]
do
  echo "Type in your guess"
  read user_guess
  let ans=$user_guess
  test_user_guess
done
