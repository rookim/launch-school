# 1. First Car: Create a hash that contains the following data and assign it to a variable named car.
# car = {
#   type: "sedan",
#   color: "blue",
#   mileage: 80000
# }

# 2. Adding the Year: using the code below, add the key :year and the value 2003 to car.
# car[:year] = 2003
# p car

# 3. Broken Odometer: Using the following code, delete the key :mileage and its associated value from car.
# car.delete(:mileage)
# p car

# 4. What Color?: Using the following code, select the value 'blue' from car and print it with #puts.
# puts car[:color]

# 5. Labeled Numbers: Use Hash#each to iterate over numbers and print each element's key/value pair.
# numbers = {
#   high:   100,
#   medium: 50,
#   low:    10
# }
# numbers.each do |k, v|
#   puts "A #{k} number is #{v}."
# end

# 6. Divided by Two: Use Enumerable#map to iterate over numbers and return an array containing each number divided by 2. Assign the returned array to a variable named half_numbers and print its value using #p.
# half_numbers = numbers.map do |key, value|
#   value / 2
# end
# p half_numbers

# 7. Low, Medium, or High?: Use Hash#select to iterate over numbers and return a hash containing only key-value pairs where the value is less than 25.
# low_numbers = numbers.select do |k, v|
#   v < 25
# end
# p low_numbers

# 8. Low or Nothing: Modify the code to use #select! instead of #select.
# numbers = {
#   high:   100,
#   medium: 50,
#   low:    10
# }

# low_numbers = numbers.select! do |key, value|
#                  value < 25
#                end

# p low_numbers
# p numbers

# 9. Multiple Cars: Create a nested hash using the following data.
# vehicles = {
#   car: {
#     type: "sedan",
#     color: "blue",
#     year: 2003
#   },
#   truck: {
#     type: "pickup",
#     color: "red",
#     year: 1998
#   }
# }

# 10. Which Collection: Rewrite car as a nested array containing the same key-value pairs.
car = [[:type, "sedan"], [:color, "blue"], [:year, 2003]]