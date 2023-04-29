# 

# 1. What does the each method in the following program return after it is finished executing?
# It returns the original array.

# 2. Write a while loop that takes input from the user, performs an action, and only stops when the user types "STOP". Each loop can get info from the user.
# input = ''
# while input != "STOP"
#   puts "Type STOP if you want to stop"
#   input = gets.chomp
# end

# 3. Write a method that counts down to zero using recursion.
def countdown_from(number)
  puts number
  number -= 1
 if number > -1
  countdown_from(number)
 end
end

countdown_from(6)