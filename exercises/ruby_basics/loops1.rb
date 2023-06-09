# 1. Runaway Loop: Modify the code so the loop stops after the first iteration.
loop do
  puts 'Just keep printing'
  break
end

# 2. Loopception: Modify the code so each loop stops after the first iteration.
loop do
  puts 'This is the outer loop.'

  loop do
    puts 'This is the inner loop.'
    break
  end
  break
end

puts 'This is outside all loops.'

# 3. Control the Loop: Modify the following loop so it iterates 5 times instead of just once.
iterations = 1

loop do
  5.times do
    puts "Number of iterations = #{iterations}"
    iterations += 1
  end
  break
end
# loop do
#   puts "Number of iterations = #{iterations}"
#   iterations += 1
#   break if iterations > 5
# end

# 4. Loop on Comand: Modify the code below so the loop stops iterating when the user inputs 'yes'.
loop do
  puts 'Should I stop looping?'
  answer = gets.chomp
  break if answer == 'yes'
end

# 5. Say Hello: Modify the code below so "Hello!" is printed 5 times.
say_hello = true

while say_hello
  5.times do
    puts 'Hello!'
  end
  say_hello = false
end

# 6. Print While: Using a while loop, print 5 random numbers between 0 and 99 (inclusive). The code below shows an example of how to begin solving this exercise.
numbers = []

while numbers.size < 5
  numbers << rand(0..99)
end
puts numbers

# 7. Count Up: The following code outputs a countdown from 10 to 1. modify the code so that it counts from 1 to 10 instead.
count = 1

until count == 11
  puts count
  count += 1
end

# 8. Print Until: Given the array of several numbers below, use an until loop to print each number
numbers = [7, 9, 13, 25, 18]

until numbers.empty?
  puts numbers[0]
  numbers.shift
end

# 9. That's Odd: Modify the code so that it only outputs i if i is an odd number.
for i in 1..100
  puts i if i.odd?
end

# 10. Greet Your Friends: Given the following array of names, use a for loop to greet each friend individually.
friends = ['Sarah', 'John', 'Hannah', 'Dave']
for friend in friends
  puts "Hello, #{friend}!"
end
