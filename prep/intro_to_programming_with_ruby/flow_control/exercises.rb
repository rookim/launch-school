#

# 1. Write down whether the following expressions return true or false. Then type the expressions into irb to see the results.
# (32 * 4) >= 129 FALSE
# false != !true FALSE
# true == 4 FALSE
# false == (847 == '847') TRUE
# (!true || (!(100 / 5) == 20) || ((328 / 4) == 82)) || false TRUE

# 2. Write a method that takes a string as an argument. The method should return a new, all-caps version of the string, only if the string is longer than 10 characters. Example: change "hello world" to "HELLO WORLD".
# def random(string)
#   output = string
#   if string.length > 10
#     output = string.upcase    
#   end
# end
# puts random("hellomynameisbob")

# 3. Write a program that takes a number from the user between 0 and 100 and reports back whether the number is between 0 and 50, 51 and 100, or above 100.
def comparison
  puts "Input a number between 0 and 100"
  input_number = gets.chomp.to_i
 if input_number <=50 && input_number >= 0
  puts "You input a number between 0 and 50"
 elsif input_number >= 51 && input_number <= 100
  puts "You input a number between 51 and 100"
 else
  puts "You put a number greater than 100"
 end
end
comparison()

# 4. What will each block of code below print to the screen?
  # Snippet 1: "FALSE"
  # Snippet 2: "Did you get it right?"
  # Snippet 3: "Alright now!"

# 5. Why do you get this error and how can you fix it?
# Forgot an end statement at the end of the if-else code block.

# 6. Write down whether the following expressions return true or false or raise an error.
  # 1. error
  # 2. false
  # 3. false
  # 4. true
  # 5. false
  # 6. true