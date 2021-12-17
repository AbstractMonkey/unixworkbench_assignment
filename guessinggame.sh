# Assignment 4: Bash, Make, Git, and GitHub
# Submitted by Sean Hobin
# Written in 38 lines, or 27 lines of code

# Init variables
numfiles=$(ls | wc -l)
re='^[0-9]+$'
correct=1

# Function component of assignment
function finishgame {
  let correct=0
}

echo "How many files are in the current directory?"
read guess

# Loop component of assignment
while [[ $correct -eq 1 ]]
do
# If statement components of assignment
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