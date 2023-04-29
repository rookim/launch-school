# 

# 1. Add two strings together that, when concatenated, return your first and last name as your full name in one string.
# first_name = "Ro"
# last_name = "Kim"
# puts "#{first_name} #{last_name}"

# "Ro" + "Kim"

# 2. Use the modulo operator, division, or a combination of both to take a 4 digit number and find the digit in the: 1) thousands place 2) hundreds place 3) tens place 4) ones place
# x = 7592
# thousands = x / 1000

# x -= thousands * 1000
# hundreds = x / 100

# x -= hundreds * 100
# tens = x / 10

# x-= tens * 10
# ones = x / 1

# puts thousands
# puts hundreds
# puts tens
# puts ones

# 3. Write a program that uses a hash to store a list of movie titles with the year they came out. Then use the puts command to make your program print out the year of each movie to the screen.
# movies = {'The Bottle' => 1975, "The Matrix" => 2004, "Naruto Shippuden: The Movie" => 2013, "The Avengers" => 2001, "The Brady Bunch" => 1981}
# puts movies['The Bottle']
# puts movies['The Matrix']
# puts movies['Naruto Shippuden: The Movie']
# puts movies['The Avengers']
# puts movies['The Brady Bunch']

# 4. Use the dates from the previous example and store them in an array. Then make your program output the same thing as exercise 3.
# years = [1975, 2004, 2013, 2001, 1981]
# puts years[0]
# puts years[1]
# puts years[2]
# puts years[3]
# puts years[4]

# 5. Write a program that outputs the factorial of the numbers 5, 6, 7, and 8.
# five_factorial = 5 * 4 * 3 * 2 * 1
# six_factorial = 6 * 5 * 4 * 3 * 2 * 1
# seven_factorial = 7 * 6 * 5 * 4 * 3 * 2 * 1
# eight_factorial = 8 * 7 * 6 * 5 * 4 * 3 * 2 * 1 

# puts five_factorial
# puts six_factorial
# puts seven_factorial
# puts eight_factorial

# 6. Write a program that calculates the squares of 3 float numbers of your choosing and outputs the result to the screen.
a = 2.5
b = 3.1
c = 10.9

puts a * a
puts b * b
puts c * c

# 7. What does the following error message tell you?
# This error message tells me that ruby was expecting an ending bracket, but was instead provided with an ending parenthesis. As a result, ruby is unable to read the expression because of this syntax error.
# The right answer is that there is an opening bracket that is not being closed properly. It needs a closing bracket.
