#!/bin/bash

answer=$(ls | wc -l)

function wrong_guess {
	if [[ $guess -lt $answer ]]
	then
		echo "Your guess is too low. :("
		make_guess
	elif [[ $guess -gt $answer ]]
	then
		echo "Your guess is too high. :("
		make_guess
	else
		echo "You guessed $guess, which is correct!"
	fi
}

function make_guess {
	echo "Guess how many files are in the current directory:"
	read guess

	if [[ $guess -eq $answer ]]
	then
		echo "You guessed $guess, which is correct. Contrats!!"
	else
		wrong_guess
	fi
}


make_guess


echo "End program"
