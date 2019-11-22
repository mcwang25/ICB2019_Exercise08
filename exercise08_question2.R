# Number guessing game between 1 and 100 with 10 attempts
integer <- 1:100
magicnumber <- sample(integer,size=1)
magicnumber <- as.integer(magicnumber)
print("I'm programmed to generate a random integer between 1 and 100...you have 10 chances.")
count=0
flag=10
while(count<flag){
  value <- as.integer(readline(prompt="Guess:"))
  if (value<magicnumber){
    print("Higher!")
    count <- count+1
  }else if (value>magicnumber){
    print("Lower!")
    count <- count+1
  }else{
    print("Correct!")
    flag=0
  }
} 