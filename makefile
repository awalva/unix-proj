README.md: guessinggame.sh 
	echo "## Project Title: The Guessing Game" > README.md
	echo "The date and time at which make was run:" >> README.md
	date -r README.md >> README.md	
	echo "The number of lines of code contained in guessinggame.sh:" >> README.md
	wc -l guessinggame.sh | egrep -o "[0-9]+" >> README.md

