# 1. Use the each method of Array to iterate over [1, 2, 3, 4, 5, 6, 7, 8, 9, 10], and print out each value.
array = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]
# array.each { |number| puts number }

# 2. Same as above, but only print out values greater than 5.
# array.each do |number|
#   puts number if number > 5
# end

# 3. Now, using the same array from #2, use the select method to extract all odd numbers into a new array.
# odd_nums = array.select { |number| number.odd? }
# puts odd_nums

# 4. Append 11 to the end of the original array. Prepend 0 to the beginning.
# array.push(11)
# array.unshift(0)

# 5. Get rid of 11. And append a 3.
# array.pop
# array << 3

# 6. Get rid of duplicates without specifically removing any one value.
# array.uniq

# 7. What's the major difference between an Array and a Hash?
# An array is generally an ordered list of elements. Hashes contain key value pairs that are not ordered. However, as of Ruby 1.9, hashes are also ordered.

# 8. Create a Hash, with one key-value pair, using both Ruby syntax styles.
# hash = { name: "ro" }
# hash = { :age => 58 }

# 9. Suppose you have a hash h = {a:1, b:2, c:3, d:4}
# h = {a:1, b:2, c:3, d:4}
# h[:b]
# h[:e] = 5
# p h
# h.each do |k, v|
#   if v < 3.5
#     h.delete(k)
#   end
# end
# p h

# 10. Can hash values be arrays? Can you have an array of hashes? (give examples)
# Yes and yes.
hash = { 
  nicknames: ["ro", "hero", "lyn"]
}
array = [
  {name: "bob", age: 97},
  {name: "sally", age: 24}
]

# 11. Given the following data structures, write a program that copies the information from the array into the empty hash that applies to the correct person.
# contact_data = [
#   ["joe@email.com", "123 Main st.", "555-123-4567"],
#   ["sally@email.com", "404 Not Found Dr.", "123-234-3454"]
# ]

# contacts = {
#   "Joe Smith" => {},
#   "Sally Johnson" => {}
# }
# contact_data.each do |data|
#   hash = {}
#   hash[:email] = data[0]
#   hash[:address] = data[1]
#   hash[:phone] = data[2]
#   if hash[:email] =~ /joe/
#     contacts["Joe Smith"] = hash
#   else
#     contacts["Sally Johnson"] = hash
#   end
# end
# p contacts

# 12. Using the hash you created from the previous exercise, demonstrate how you would access Joe's email and Sally's phone number.
# p contacts["Joe Smith"][:email]
# p contacts["Sally Johnson"][:phone]

# 13. Use Ruby's Array method delete_if and String method start_with? to delete all of the strings that begin with an "s" in the following array.
# arr = ['snow', 'winter', 'ice', 'slippery', 'salted roads', 'white trees']
# arr.delete_if { |element| element.start_with?('s') }
# arr = ['snow', 'winter', 'ice', 'slippery', 'salted roads', 'white trees']
# arr.delete_if { |element| element.start_with?('s', 'w')}
# p arr

# 14. Take the following array and turn it into a new array that consists of strings containing one word. (ex. ["white snow", etc...] → ["white", "snow", etc...]. Look into using Array's map and flatten methods, as well as String's split method.
a = ['white snow', 'winter wonderland', 'melting ice', 'slippery sidewalk', 'salted roads', 'white trees']
# note to self: notice how i made an empty array? it's a good sign that i should be using a method like map, that already returns a new array
# split_words = []
# a.each { |string| split_words << string.split(" ") }
# p split_words.flatten

# 15. What will the following program output?
# It would output "These hashes are the same!" This is because both hashes contain the exact same key and value pairings.

# 16. Challenge: In exercise 11, we manually set the contacts hash values one by one. Now, programmatically loop or iterate over the contacts hash from exercise 11, and populate the associated data from the contact_data array. Hint: you will probably need to iterate over ([:email, :address, :phone]), and some helpful methods might be the Array shift and first methods.
# contact_data = [["joe@email.com", "123 Main st.", "555-123-4567"], ["sally@email.com", "404 Not Found Dr.", "123-234-3454"]]
# contacts = {"Joe Smith" => {}, "Sally Johnson" => {}}
# keys = [:email, :address, :phone]
# index = 0
# index1 = 0
# contacts.each do |k, v|
#   keys.each do |key|
#     v[key] = contact_data[index][index1]
#     index1 += 1
#   end
#   index += 1
#   index1 = 0
# end
# p contacts
# Solutions from Launch School for this problem are destructive. My solution does not touch any of the data.