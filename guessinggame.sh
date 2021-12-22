#######################################################################################
# Assignment 4: Bash, Make, Git, and GitHub                                           #
# Submitted by Sean Hobin                                                             #
# Run via "bash guessinggame.sh"                                                      #
#######################################################################################
# Init variables
numfiles=$(ls | wc -l)
re='^[0-9]+$'
correct=1
#######################################################################################
# FUNCTION COMPONENT of assignment                                                    #
#######################################################################################
function finishgame {
  let correct=0
}
#######################################################################################
# Ask the user how many files are in the current directory, then prompt them to guess #
#######################################################################################
echo "How many files are in the current directory? Give it a guess!: "
read guess
#######################################################################################
# LOOP COMPONENT of assignment                                                        #
#######################################################################################
while [[ $correct -eq 1 ]]
do
#######################################################################################
# IF STATEMENT COMPONENTS of assignment                                               #
# If the user guesses incorrectly, they are advised whether their guess is too high   #
# or too low, and are prompted to guess again. If user answers correctly, they are    #
# congratulated. The program does not end until the user enters the correct number of #
# files. Program is run via entering "bash guessinggame.sh" into the console.         #
#######################################################################################
  if ! [[ $guess =~ $re ]]
  then
    echo "I can only handle numbers, and simple ones like ints. Try again!: "
    read guess
  elif [[ $guess -gt $numfiles ]]
  then
    echo "$guess is too high! Try again: "
    read guess
  elif [[ $guess -lt $numfiles ]]
  then
    echo "$guess is too low - try again: "
    read guess
  else
    echo "You did it! There are $numfiles files in the directory. Good job :)"
    finishgame
  fi
done
