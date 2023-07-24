=begin
Calculate BMI

Write function bmi that calculates body mass index (bmi = weight / height2).

if bmi <= 18.5 return "Underweight"

if bmi <= 25.0 return "Normal"

if bmi <= 30.0 return "Overweight"

if bmi > 30 return "Obese"
=end

def bmi(weight, height)
  index = weight / (height**2)
  if index > 30 
    return "Obese"
  elsif index <= 30.0 && index > 25.0
    return "Overweight"
  elsif index <= 25.0 && index > 18.5
    return "Normal"
  else
    return "Underweight"
  end
end

#puts bmi(50, 1.80)

############################################################################################

=begin
Even or Odd

Create a function that takes an integer as an argument and returns "Even" for even numbers or "Odd" for odd numbers.
=end

def even_or_odd(number)
  number.odd? ? "Odd" : "Even"
end

#puts even_or_odd(2)

############################################################################################

=begin
Remove exclamation marks

Write function RemoveExclamationMarks which removes all  exclamation marks from a given string.
=end

def remove_exclamation_marks(s)
  s.delete('!')
end

############################################################################################

=begin
Return Negative

In this simple assignment you are given a number and have to make it negative. But maybe the number is already negative?

Examples
  makeNegative(1);  # return -1
  makeNegative(-5); # return -5
  makeNegative(0);  # return 0

Notes
  The number can be negative already, in which case no change is    required.
  Zero (0) is not checked for any specific sign. Negative zeros make no mathematical sense.

My solution
=end

def make_negative(num)
  num <= 0 ? num : num*(-1)
end

############################################################################################

=begin
Rock Paper Scissors

Let's play! You have to return which player won! In case of a draw return Draw!.

Examples(Input1, Input2 --> Output):

"scissors", "paper" --> "Player 1 won!"
"scissors", "rock" --> "Player 2 won!"
"paper", "paper" --> "Draw!"

My solution
=end

def rps(p1, p2)
  if p1 == p2
    return "Draw!"
  elsif (p1 == "rock" && p2 == "scissors") || (p1 == "scissors" && p2 == "paper") || (p1 == "paper" && p2 == "rock")
    return "Player 1 won!"
  else
    return "Player 2 won!"
  end
end

############################################################################################


