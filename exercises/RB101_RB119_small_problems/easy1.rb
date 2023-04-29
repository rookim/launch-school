# 1. Repeat Yourself: Write a method that takes two arguments, a string and a positive integer, and prints the string as many times as the integer indicates.
def repeat(string, integer)
  integer.times { puts string }
end
# repeat('Hello', 3)

# 2. Odd: Write a method that takes one integer argument, which may be positive, negative, or zero. This method returns true if the number's absolute value is odd. You may assume that the argument is a valid integer value.
def is_odd?(integer)
  integer % 2 == 1
end
# def is_odd?(integer)
#   integer.remainder(2) != 0
# end
# puts is_odd?(2)    # => false
# puts is_odd?(5)    # => true
# puts is_odd?(-17)  # => true
# puts is_odd?(-8)   # => false
# puts is_odd?(0)    # => false
# puts is_odd?(7)    # => true 

# 3. Stringy Strings: Write a method that takes one argument, a positive integer, and returns a string of alternating 1s and 0s, always starting with 1. THe length of the string should match the given integer.
# My Initial Solution
# def stringy(integer)
#   index = 0
#   output = ''
#   while index < integer
#     output << '1' if index % 2 == 0
#     output << '0' if index % 2 == 1
#     index += 1
#   end
#   output
# end
# puts stringy(6) == '101010'
# puts stringy(9) == '101010101'
# puts stringy(4) == '1010'
# puts stringy(7) == '1010101'
# Further Exploration: I liked the succinct solution provided by Launch School, so I built on that.
def stringy(integer, starting=1)
  array = []
  num1 = '1'
  num2 = '0'
  if starting == 0
    num1 = '0'
    num2 = '1'
  end
  integer.times do |index|
    array << num1 if index.even?
    array << num2 if index.odd?
  end
  array.join
end
# puts stringy(6) == '101010'
# puts stringy(9) == '101010101'
# puts stringy(4) == '1010'
# puts stringy(7) == '1010101'
# puts stringy(6, 0) == '010101'
# puts stringy(9, 0) == '010101010'
# puts stringy(4, 0) == '0101'
# puts stringy(7, 0) == '0101010'
# PEDAC
# takes an integer in, spits out a string
# if it's an even index, a 1 is printed
# for an odd index, a 0 is printed
# initialize a zero-indexing variable and a variable that will contain the string the method returns. use this variable to know when a 1 or 0 should be printed. return a string

# 4. What's my Bonus?: Write a method that takes two arguments, a positive integer and a boolean, and calculates the bonus for a given salary. If the boolean is true, the bonus should be half of the salary. If the boolean is false, bonus should be 0.
# My Initial Solution
def calculate_bonus(integer, give_raise)
  return integer / 2 if give_raise
  0
end
# One-liner!
# def calculate_bonus(integer, give_raise)
#   give_raise ? (integer / 2) : 0
# end
# puts calculate_bonus(2800, true) == 1400
# puts calculate_bonus(1000, false) == 0
# puts calculate_bonus(50000, true) == 25000

# 5. Bannerizer: Write a method that will take a short line of text, and print it within a box.
# My Initial Solution
# def print_in_box(text)
#   length = text.length
#   # column start
#   row1 = '+-'
#   row2 = '| '
#   row3 = '| '
#   length.times do |index|
#     row1 << '-'
#     row2 << ' '
#     row3 << text[index]
#   end
#   # column end
#   row1 << '-+'
#   row2 << ' |'
#   row3 << ' |'
#   puts "#{row1}\n#{row2}\n#{row3}\n#{row2}\n#{row1}"
# end
# Condensed Solution 
# After I took at Launch School's solution, I took a lunch break, and came back and wrote another more condensed solution based off of the LS solution.
# def print_in_box(text)
#   border = "+#{'-' * (text.length + 2)}+"
#   space = "|#{' ' * (text.length + 2)}|"
#   words = "| #{text} |"

#   puts "#{border}\n#{space}\n#{words}\n#{space}\n#{border}"
# end
# print_in_box('To boldly go where no one has gone before.')
# print_in_box('')
# PEDAC
# Five variables should be initialized as strings, which will represent each row in this text banner. Find out the length of the text parameter, which will determine how long the banner should be. Properly concatenate all 5 strings at the end to output the text banner.
# Further Exploration: Truncate the message if it's too wide to fit inside a standard terminal window (80 columns). For a real challenge, try word wrapping very long messages so they appear on multiple lines, but still within a box.
# Including the sides of the border, the text can only be 76 characters. First check to see how long the text is, and if it's over 76, make sure only the first 76 characters are included.
# I can use a conditional to see if words should have multiple rows.
# If the remainder of length / 80 is zero, create a new row by adding "\n"
# Don't forget to recreate the new row with borders "|  |"
# For each row, after 78 characters, need to add the ending " |"                            
def print_in_box(text)
  horizontal_lines = "+--+"
  spaces = "|  |"
  words = []
  row = ""
  new_row_index = 0
  length = text.length

  if length > 75
    76.times do
      horizontal_lines.insert(-3, '-')
      spaces.insert(-3, " ")
    end
  else
    length.times do
      ntal_lines.insert(-3, '-')
      spaces.insert(-3, " ")
    end
  end
  # length = 76 if text.length >= 77
  length.times do |index|
    # words.insert(-3, text[index])
    # add the "|  |" at the end? for now, append 76 characters into the row array
    row << text[index]
    if new_row_index % 75 == 0
      if new_row_index != 0
        row.insert(0, "| ")
        row.insert(-1, " |")
        words << row
        row = ""
        new_row_index = -1
      end
    end
    new_row_index += 1
    # check to see if the last row is less than 80 characters. They need to match up!
    if index == length - 1
      if row
        row.insert(0, "| ")
        remaining = 78 - row.length
        row << " " * remaining
        row << " |"
        words << row
      end
    end
  end

  # puts horizontal_lines
  # puts spaces
  # puts words.join("\n")
  # puts spaces
  # puts horizontal_lines
end
# print_in_box('To boldly go where no one has gone before.')
# print_in_box('')
# print_in_box('The more often we see the things around us - even the beautiful and wonderful things - the more they become invisible to us. That is why we often take for granted the beauty of this world: the flowers, the trees, the birds, the clouds - even those we love. Because we see things so often, we see them less and less.')
# print_in_box('If I lose it all, slip and fall, I will never run away. If I lose it all, lose it all, lose it all. If I lose it all, outside the wall, live to die another day.')

# 6. Right Triangles: Write a method that takes a positive integer, n, as an argument, and displays a right triangle whose sides have n stars.
# My Initial Solution
def triangle(length)
  triangle_array = []
  length.times do |index|
    row = ""
    row << " " * (length - (index + 1))
    row << "*" * (index + 1) # => "   *"
    triangle_array << row
  end
  triangle_array.size.times { |i| puts triangle_array[i] }
end
# Further Exploration: Try modifying your solution so it prints the triangle upside down from its current orientation.
def triangle(length)
  length.times do |index|
    puts (" " * index) + ("*" * length)
    length -= 1
  end
end
# triangle(5)
# triangle(9)
# Further Explanation 2: Display the triangle with the right angle at any corner of the grid.
# triangle() will take in another argument 1-4. These numbers refer to a specific quadrant. This will tell the method where the right angle should go
def triangle(length, quadrant=4)
  case quadrant
  when 1
    length.times do |index|
      puts (" " * index) + ("*" * length)
      length -= 1
    end
  when 2
    length.times do |index|
      puts ("*" * length) + (" " * index)
      length -= 1
    end
  when 3
    length.times do |index|
      puts ("*" * (index + 1)) + (" " * (length - (index + 1)))
    end
  else
    length.times do |index|
      puts (" " * (length - (index + 1))) + ("*" * (index + 1))
    end
  end
end
# triangle(3, 2)
# triangle(3, 3)
# triangle(3, 1)
# triangle(3, 4)

# 7. Madlibs: Create a simple mad-lib program that prompts for a noun, a verb, an adverb, and an adjective and injects those into a story that you create.
def madlibs
  print "Enter a noun: "
  noun = gets.chomp
  print "Enter a verb: "
  verb = gets.chomp
  print "Enter an adjective: "
  adjective = gets.chomp
  print "Enter an adverb: "
  adverb = gets.chomp

  puts "How could you #{verb} my #{adjective} #{noun}? You really thought you could get away with it huh. I'm #{adverb} disappointed."
end
# madlibs

# 8. Reverse the Digits in a Number: Write a method that takes a positive integer as an argument and returns that number with its digits reversed.
def reversed_number(positive_integer)
  # turn it into a string
  # initialize an empty string as a variable, string
  # iterate through the string
  # after each iteration, append the letter to the beginning of the string variable
  # turn it back into an integer
  string_integer = positive_integer.to_s
  string = ''
  string_integer.each_char { |c| string.insert(0, c) }
  string.to_i
end
# p reversed_number(12345) == 54321
# p reversed_number(12213) == 31221
# p reversed_number(456) == 654
# p reversed_number(12000) == 21 # No leading zeros in return value!
# p reversed_number(12003) == 30021
# p reversed_number(1) == 1

# 9. Get Middle Character: Write a method that takes a non-empty string argument, and returns the middle character or characters of the argument.
def center_of(string)
  midpoint = (string.length) / 2
  if string.length.odd?
    return string[midpoint]
  elsif string.length.even?
    return string[midpoint-1, 2]
  end
end
# p center_of('I love ruby') == 'e'
# p center_of('Launch School') == ' '
# p center_of('Launch') == 'un'
# p center_of('Launchschool') == 'hs'
# p center_of('x') == 'x'