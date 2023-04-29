# 1. Even or Odd?: Write a loop that prints numbers 1-5 and whether the number is even or odd.
count = 1

loop do
  puts count
  if count.even?
    puts "This number is even."
  else
    puts "This number is odd."
  end
  count += 1
  break if count > 5
end

# 2. Catch the Number: Modify the following code so that the loop stops if number is equal to or between 0 and 10.
# my solution
loop do
  number = rand(100)
  puts number
  break if number <= 10 && number >= 0
end
# LS's solution
loop do
  number = rand(100)
  puts number
  break if number.between?(0,10)
end

# 3. Conditional Loop: Write an if/else statement that executes some code if the process_the_loop variable is true and some other code if it's false
process_the_loop = [true, false].sample

if process_the_loop
  loop do
    puts "The loop was processed."
    break
  end
else
  puts "The loop wasn't processed!"
end

# 3. Get the Sum: The code below asks the user "What does 2 + 2 equal?" and uses #gets to retrieve the user's answer. Modify the code so "That's correct!" is printed and the loop stops when the user's answer equals 4. Print "Wrong answer. Try agqain!" if the user's answer doesn't equal 4.
loop do
  puts 'What does 2 + 2 equal?'
  answer = gets.chomp.to_i
  if answer == 4
    puts "That's correct!"
    break
  else
    puts "Wrong answer. Try again!"
  end
end

# 4. Insert Numbers: Modify the code below so that the user's input gets added to the numbers array. Stop the loop when the array contains 5 numbers.
numbers = []

loop do
  puts 'Enter any number:'
  input = gets.chomp.to_i
  numbers << input
  break if numbers.size == 5
end
puts numbers

# 5. Empty the Array: Given the array below, use loop to remove and print each name from first to last. Stop the loop once names doesn't contain any more elements.
names = ['Sally', 'Joe', 'Lisa', 'Henry']
loop do
  name = names.shift
  puts name
  break if names.size == 0
end

# 6. Stop Counting: Modify the block so that it prints the current number and stops iterating when the current number equals 2.
5.times do |index|
  puts index
  break if index == 2
end

# 7. Only Even: Using next, modify the code so that it only prints positive integers that are even.
number = 0

until number == 10
  number += 1
  next if number.odd?
  puts number
end

# 8. First to Five: The following code increments number_a and number_b by either 0 or 1. loop is used so that the variables can be incremented more than once, however, break stops the loop after the first iteration. Use next to modify the code so that the loop iterates until either number_a or number_b equals 5. Print "5 was reached!" before breakintg out of the loop.
number_a = 0
number_b = 0

loop do
  number_a += rand(2)
  number_b += rand(2)
  # p number_a, number_b
  next unless number_b == 5 || number_a == 5

  puts "5 was reached!"
  break
end

# 9. Greeting: Given the code, use a while loop to print "Hello!" twice.
def greeting(amount)
  iteration = 0
  while iteration < amount
    puts 'Hello!'
    iteration += 1
  end
end

number_of_greetings = 2
greeting(number_of_greetings)