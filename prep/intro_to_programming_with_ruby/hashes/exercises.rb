#

# 1. Given a hash of family members, with keys as the title and an array of names as the values, use Ruby's built-in select method to gather only siblings' names into a new array.
# family = {  uncles: ["bob", "joe", "steve"],
#   sisters: ["jane", "jill", "beth"],
#   brothers: ["frank","rob","david"],
#   aunts: ["mary","sally","susan"]
# }
# my solution
# siblings = []
# family.each do |k, v|
#   if k == :sisters || k == :brothers
#     siblings << v
#   end
# end
# p siblings.flatten

# right solution (i forgot i had to use select)
# siblings = family.select do |k, v|
#   k == :sisters || k == :brothers
# end
# p siblings.values.flatten

# 2. Look at Ruby's merge method. Notice that it has two versions. What is the difference between merge and merge!? Write a program that uses both and illustrate the differences.
# hash1 = {name: "ro", color: "pink"}
# hash2 = {occupation: "programmer", status: "tired"}
# the merge method produces a new hash
# hash3 = hash1.merge(hash2)
# p hash1
# p hash2
# p hash3

# the merge! method is destructive and changes the receiving hash, which is hash1
# hash1.merge!(hash2)
# p hash1
# p hash2

# 3. Using some of Ruby's built-in Hash methods, write a program that loops through a hash and prints all of the keys. Then write a program that does the same thing except printing the values. Finally, write a program that prints both.
ms_chars = {
  dressy: "demon avenger",
  chiby: "night walker",
  minimalism: "buccaneer",
  prrs: "demon slayer"
}
# ms_chars.keys.each { |key| puts key }
# ms_chars.each_key { |key| puts key }
# ms_chars.values.each { |value| puts value }
# ms_chars.each_value { |value| puts value }
# ms_chars.each do |k, v|
#   puts k
#   puts v
# end

# 4. Given the following expression, how would you access the name of the person?
# person = {name: 'Bob', occupation: 'web developer', hobbies: 'painting'}
# puts person[:name]

# 5. What method could you use to find out if a Hash contains a specific value in it? Write a program that verifies that the value is within the hash.
puts ms_chars.key?(:dressy)
puts ms_chars.value?("demon avenger")
puts ms_chars.value?("demon slayer")
puts ms_chars.value?("mechanic")

# 6. What's the difference between the two hashes that were created?
x = "hi there"
my_hash = {x: "some value"}
my_hash2 = {x => "some value"}
# The keys are different. The first hash has a symbol key. The second has is a string key (stored in a variable).

# 7. If you see this error, what do you suspect is the most likely problem?
# NoMethodError: undefined method `keys' for Array
# B: There is no method called keys for Array objects.