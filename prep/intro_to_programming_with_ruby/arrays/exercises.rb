# 

# 1. Below we have given you an array and a number. Write a program that checks to see if the number appears in the array.
# arr = [1, 3, 5, 7, 9, 11]
# number = 3
# puts arr.include?(number)

# 2. What will the following programs return? What is the value of arr after each?
  # 1. [["b"], ["b", 2], ["b", 3], ["a", 1], ["a", 2], ["a", 3]]
  # 2. [["b"], ["a", [1, 2, 3]]]

# 3. How do you return the word "example" from the following array?
# arr = [["test", "hello", "world"],["example", "mem"]]
# p arr[1][0] 
# arr.last.first

# 4. What does each method return in the following example?
  # 1. 3
  # 2. error?
  # 3. 8

# 5. What is the value of a, b, and c in the following program?
# a is "e". b is "A". c is nil.

# 6. You run the following code... and get the following error message. What is the problem and how can it be fixed?
# Ruby is interpreting ['margaret'] as an integer that you are trying to index the array names at. But because a string was provided, an error is thrown. This problem can be fixed by replacing 'margaret' with 3.

# 7. Use the each_with_index method to iterate through an array of your creation that prints each index and value of the array.
# pillars = ["giyu", "mitsuri", "obanai", "sanemi", "gyomei", "tengen", "kyojuro", "shinobu"]
# pillars.each_with_index do |pillar, index|
#   puts "Pillar ##{index+1} is #{pillar.capitalize}."
# end

# 8. Write a program that iterates over an array and builds a new array that is the result of incrementing each value in the original array by a value of 2. You should have two arrays at the end of this program, The original array and the new array you've created. Print both arrays to the screen using the p method instead of puts.
# the levels of my DA, NW, bucc, and DS
arr1 = [275, 250, 224, 223]
arr2 = arr1.map { |num| num+2 }
p arr1
p arr2