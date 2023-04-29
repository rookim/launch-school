# 1. Create a String: Create an empty string using the String class and assign it to a variable.
# str = String.new

# 2. Quote Confusion: Modify the following code so that double-quotes are used instead of single-quotes.
# puts "It's now 12 o'clock."

# 3. Ignoring Case: Using the following code, compare the value of name with string 'RoGeR' while ignoring the case of both strings. Print true if the values are the same; print false if they aren't. Then, perrform the same case-insensitive comparison, except compare the value of name with the string 'DAVE' instead of 'RoGeR'.
# name = 'Roger'
# p name.casecmp?('RoGeR')
# p name.casecmp?('DAVE')
# p name.casecmp('RoGeR') == 0
# p name.casecmp('DAVE') == 0
# Using the casecmp method will return an integer. If the 2 strings are equal, a 0 is returned. Otherwise, a -1 is returned.

# 4. Dynamic String: Modify the following code so that the value of name is printed within "Hello, !".
# name = 'Elizabeth'
# puts "Hello, #{name}!"

# 5. Combining Names: Using the following code, combine the two names together to form a full name and assign that value to a variable named full_name. Then, print the value of full_name.
# first_name = 'John'
# last_name = 'Doe'
# full_name = first_name + " " + last_name
# puts full_name

# 6. Tricky Formatting: Using the following code, capitalize the value of state then print the modified value. Note that state should have the modified value both before and after you print it.
# state = 'tExAs'
# puts state.capitalize!

# 7. Goodbye, not Hello: Given the following code, invoke a destructive method on greeting so that "Goodbye!" is printed instead of Hello!.
# greeting = 'Hello!'
# greeting.gsub!('Hello!', 'Goodbye!')
# puts greeting

# 8. Print the Alphabet: Using the following code, split the value of alphabet by individual characters and print each character.
# alphabet = 'abcdefghijklmnopqrstuvwxyz'
# alphabet = alphabet.split("")
# alphabet.each { |letter| puts letter }
# puts alphabet

# 9. Pluralize: Given the following code, use Array#each to print the plural of each word in words.
# words = 'car human elephant airplane'
# words.split.each { |word| puts word + "s" }

# 10. Are You There?: Using the following code, print true if colors includes the color 'yellow' and print false if it doesn't. Then, print true if colors includes the color 'purple' and print false if it doesn't.
colors = 'blue pink yellow orange'
p colors.include?('yellow')
p colors.include?('purple')
