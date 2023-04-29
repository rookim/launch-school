# 1. Breakfast, Lunch, or Dinner? (Part 1): What will the following code pring? Why?
# def meal
#   return 'Breakfast'
# end
# puts meal
# It will print Breakfast.

# 2. Breakfast, Lunch, or Dinner? (Part 2): What will the following code print? Why?
# def meal
#   'Evening'
# end
# puts meal
# Evening will be printed.

# 3. Breakfast, Lunch, or Dinner? (Part 3): What will be printed and why?
# def meal
#   return 'Breakfast'
#   'Dinner'
# end
# puts meal
# Breakfast is printed.

# 4. Breakfast, Lunch, or Dinner? (Part 4): What will the following code print? Why?
# def meal
#   puts 'Dinner'
#   return 'Breakfast'
# end
# puts meal
# Dinner and Breakfast is printed.

# 5. Breakfast, Lunch, or Dinner? (Part 5): What will the following code print? Why?
def meal
  'Dinner'
  puts 'Dinner'
end
p meal
# Dinner and nil, in that order, are printed.

# 6. Breakfast, Lunch, or Dinner? (Part 6): What will the following code print? Why?
def meal
  return 'Breakfast'
  'Dinner'
  puts 'Dinner'
end
puts meal
# Only Breakfast is printed.

# 7. Counting Sheep (Part 1): What will the following code print? Why?
def count_sheep
  5.times do |sheep|
    puts sheep
  end
end
puts count_sheep
# 0
# 1
# 2
# 3
# 4
# 5
# The Integer#times method will return the initial integer, this case being 5.

# 8. Counting Sheep (Part 2): What will the following code print? Why?
def count_sheep
  5.times do |sheep|
    puts sheep
  end
  10
end
puts count_sheep
# 0
# 1
# 2
# 3
# 4
# 10

# 9. Counting Sheep (Part 3): What will the following code print? Why?
def count_sheep
  5.times do |sheep|
    puts sheep
    if sheep >= 2
      return
    end
  end
end
p count_sheep
# 0
# 1
# 2
# nil

# 10. Tricky Number: What will the following code print? Why?
def tricky_number
  if true
    number = 1
  else
    2
  end
end
puts tricky_number
# 1

