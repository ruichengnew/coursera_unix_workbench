all: README.md

README.md:
	echo "This project name is: $${PWD##*/}." > README.md
	echo "Makefile running time is: $$(date "+%Y-%m-%d %H:%M")." >> README.md
	echo "The number of lines of code contained in guessinggame.sh is: $$(wc -l guessinggame.sh | egrep -o "[0-9]+") lines." >> README.md
