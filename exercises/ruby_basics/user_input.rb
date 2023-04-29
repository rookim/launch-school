# 1. Repeat after me: Write a program that asks the user to type something in, after which your program should simply display what was entered.
# def ruby_repeater
#   puts "Type whatever you want girl!"
#   input = gets.chomp
#   puts input
# end

# 2. Your Age in Months: Write a program that asks the user for their age in years, and then converts that age to months.
# puts "What is your age in years?"
# age = gets.chomp.to_i
# age *= 12
# puts "You are #{age} months old."

# 3. Print Something (Part 1): Write a program that asks the user whether they want the program to print "something", then print it if the user enters y. Otherwise, print nothing.
# puts "Do you want me to print something?"
# input = gets.chomp
# if input.downcase == 'y'
#   puts "something"
# end

# 4. Print Something (Part 2): Modify your program so it prints an error message for any inputs that aren't y or n, and then asks you to try again.
# my initial solution
# puts "Do you want me to print you something girl?"
# while true
#   input = gets.chomp.downcase
#   if input == 'y'
#     puts "someting zz"
#     break
#   elsif input == 'n'
#     break
#   else
#     puts "Invalid input. Try again!"
#   end
# end
# LS's solution
# input = nil
# loop do
#   puts "Do you want me to print something? (y/n)"
#   input = gets.chomp.downcase
#   break if %w[y n].include?(input)
#   puts "Invalid input. Try again!"
# end
# puts "someting zz" if input == 'y'

# 5. Launch School Printer (Part 1): Write a program that prints 'Launch School is the best!' repeatedly until a certain number of lines have been printed. The program should obtain the number of lines from the user, and should insist that at least 3 lines are printed.
# phrase = "Launch School is the best!"
# puts "How many number of lines would you like the statement 'Launch School is the best!' to be printed? Pick a number 3 or greater."
# input = nil
# loop do
#   input = gets.chomp.to_i
#   break if input > 2
#   puts "Seems like you entered a number less than 3. Try again!"
# end
# input.times { puts phrase } 

# 6. Passwords: Write a program that displays a welcome message, but only after the user enters the correct password, where the password is a string that is defined as a constant in your program. Keep asking for the password until the user enters the correct password.
# PASSWORD = "capybara"
# loop do
#   puts "Password:"
#   input = gets.chomp
#   break if input == PASSWORD
#   puts "Incorrect."
# end

# puts "Welcome to White District 101, Agent Capybara."

# 7. User Name and Password: The program should solicit both the user name and the password, then validate both, and issue a generic error message if one or both are incorrect; the error message should not tell the user which item is incorrect.
# USERNAME = "capybara"
# PASSWORD = "zen"

# loop do
#   puts "Username:"
#   username_input = gets.chomp
#   puts "Password:"
#   password_input = gets.chomp

#   break if username_input == USERNAME && password_input == PASSWORD

#   puts "Invalid username/password."
# end
# puts "Welcome, Agent Capybara. Here is your next mission."

# 8. Dividing Numbers: Write a program that asks the user to enter two integers, then prints the results of dividing the first by the second. The second number must not be 0. Since this is user input, there's a good chance that the user won't enter a valid integer. Therefore, you must validate the input to be sure it is an integer. You can use the following code to determine whether the input is an integer.
# def valid_number?(number_string)
#   number_string.to_i.to_s == number_string
# end
# numerator = 0
# loop do
#   puts "Enter the numerator:"
#   numerator = gets.chomp
#   break if valid_number?(numerator)
#   puts "Only integers, please."
# end

# denominator = 1
# loop do
#   puts "Enter the denominator:"
#   denominator = gets.chomp
#   valid = valid_number?(denominator)
#   break if denominator.to_i != 0 && valid
#   if denominator == "0"
#     puts "A denominator of 0 is not allowed."
#   else
#     puts "Only integers, please."
#   end
# end
# answer = numerator.to_i/denominator.to_i
# puts "#{numerator} / #{denominator} is #{answer}"

# 9. Launch School Printer (Part 2): 
# phrase = "Launch School is the best!"
# input = nil
# loop do
#   loop do
#     puts "How many output lines do you want? Enter a number >= 3 (Q to quit):"
#     input = gets.chomp
#     break if input.to_i >= 3 || input.downcase == 'q'
  
#     puts "That's not enough lines."
#   end
#   break if input.downcase == 'q'

#   input = input.to_i
#   input.times { puts phrase }
# end

# 10. Opposites Attract: Write a program that requests two integers from the user, adds them together, and then displays the result. Furthermore, insist that one of the integers be positive, and one negative; however, the order in which the two integers are entered does not matter.
def valid_number?(number_string)
  number_string.to_i.to_s == number_string && number_string.to_i != 0
end

num1 = nil
num2 = nil

loop do
  loop do
    puts "Please enter a positive or negative integer:"
    num1 = gets.chomp
    break if valid_number?(num1)
    puts "Invalid input. Only non-zero integers are allowed."
  end

  loop do
    puts "Please enter a positive or negative integer:"
    num2 = gets.chomp
    break if valid_number?(num2)
    puts "Invalid input. Only non-zero integers are allowed."
  end

  break if num1.to_i.positive? && num2.to_i.negative? || num1.to_i.negative? && num2.to_i.positive?

  puts "Sorry. One integer must be positive, one must be negative."
  puts "Please start over."
end

num1 = num1.to_i
num2 = num2.to_i

result = num1 + num2
puts "#{num1} + #{num2} = #{result}"

