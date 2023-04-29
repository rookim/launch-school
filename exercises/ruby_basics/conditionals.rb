# 1. Unpredictable Weather (Part 1): Write an if statement that prints "The sun is so bright!" if sun equals 'visible'.
# sun = ['visible', 'hidden'].sample
# if sun == 'visible'
#   puts "The sun is so bright!"
# end

# 2. Unpredictable Weather (Part 2): Write an unless statement that prints "The clouds are blocking the sun!" unless sun equals = 'visible'.
# sun = ['visible', 'hidden'].sample
# unless sun == 'visible'
#   puts "The clouds are blocking the sun!"
# end

# 3. Unpredictable Weather (Part 3): Write an if statement that prints "The sun is bright!" if sun equals visible. Also, write an unless statement that prints "The clouds are blocking the sun!" unless sun equals visible.
# sun = ['visible', 'hidden'].sample
# puts "The clouds are blocking the sun!" unless sun == "visible"
# puts "The sun is so bright!" if sun == "visible"

# 4. True or False: Write a ternary operator that prints "I'm true!" if boolean equals true and prints "I'm false!" if boolean equals false.
# boolean = [true, false].sample
# boolean ? puts("I'm true!") : puts("I'm false!")
# puts boolean ? "I'm true!" : "I'm false!"
# Ternary operations should be used to select between 2 values not 2 actions!

# 5. Truthy Number: What will the following code prints? Why?
# number = 7
# if number
#   puts "My favorite number is #{number}."
# else
#   puts "I don't have a favorite number."
# end
# "My favorite number is 7." will print.

# 6. Stoplight (Part 1): Write a case statement that prints "Go!" if stoplight equals 'green', "Slow down!" if stoplight equals 'yellow', and "Stop!" if stoplight equals 'red'.
# stoplight = ['green', 'yellow', 'red'].sample
# case stoplight
# when 'green'
#   puts "Go!"
# when 'yellow'
#   puts "Slow down!"
# when 'red'
#   puts "Stop!"
# end

# 7. Stoplight (Part 2): Convert the following case statement to an if statement.
# stoplight = ['green', 'yellow', 'red'].sample
# case stoplight
# when 'green'
#   puts 'Go!'
# when 'yellow'
#   puts 'Slow down!'
# else
#   puts 'Stop!'
# end
# if stoplight == 'green'
#   puts 'Go!'
# elsif stoplight == 'yellow'
#   puts 'Slow down!'
# elsif stoplight == 'red'
#   puts 'Stop!'
# end

# 8. Sleep Alert: Write an if statement that returns "be productive!" if status equals 'awake' and returns "Go to sleep!" otherwise. Then, assign the return value of the if statement to a variable and print the variable.
# status = ['awake', 'tired'].sample
# value = if status == 'awake'
#           "Be productive!"
#         else
#           "Go to sleep!"
#         end
# puts value

# 9. Cool Numbers: Currently, "5 is a cool number!" is being printed every time the program is run. Fix the code so that "Other numbers are cool too!" gets a chance to be executed.
# number = rand(10)
# if number == 5
#   puts '5 is a cool number!'
# else
#   puts 'Other numbers are cool too!'
# end

# 10. Stoplight (Part 3): Reformat the following case statement so that it only takes up 5 lines.
stoplight = ['green', 'yellow', 'red'].sample
case stoplight
when 'green'  then puts 'Go!'
when 'yellow' then puts 'Slow down!'
else               puts 'Stop!'
end
# Our code is much more succicnt and easier to read in this formatting!