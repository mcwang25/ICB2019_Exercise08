# Number guessing game between 1 and 100 with 10 attempts
integer <- 1:100
magicnumber <- sample(integer,size=1)
print("I'm programmed to generate a random integer between 1 and 100...you have 10 chances.")
count=0
while(count<10)
  if (readline(prompt="Guess:")<magicnumber){
    count <- count+1
    print("Higher!")
  }else if (readline(prompt="Guess:")>magicnumber){
    count <- count+1
    print("Lower!")
  }else{
    print("Correct!")
  }
