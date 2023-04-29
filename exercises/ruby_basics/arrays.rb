# 1. New Pet: Select 'fish' from pets, assign the return value to a variable named my_pet, then print the value of my_pet.
# pets = ['cat', 'dog', 'fish', 'lizard']
# my_pet = pets.select{ |pet| pet == 'fish' }.join
# puts "I have a pet #{my_pet}!"
# Or just use indexing to grab 'fish' from the pets array...

# 2. More Than One: Write some code that selects 'fish' and 'lizard' from the pets array - select the 2 items at the same time. Assign the return value to a variable named my_pets, then print the contents of my_pets as a single string.
# pets = ['cat', 'dog', 'fish', 'lizard']
# my_pets = pets.select { |pet| pet == 'fish' || pet == 'lizard' }
# puts "I have a pet #{my_pets[0]} and a pet #{my_pets[-1]}!"
# Can also use the .. syntax to select for multiple things in an array, ie my_pets = pets[2..3]

# 3. Free the Lizard: Remove 'lizard; from my_pets then print the value of my_pets.
# pets = ['cat', 'dog', 'fish', 'lizard']
# my_pets = pets[2..3]
# my_pets.pop
# puts "I have a pet #{my_pets[-1]}!"

# 4. One Isn't Enough: Without changing the code below, select 'dog' from pets, add the return value to my_pets, then print the value of my_pets.
# pets = ['cat', 'dog', 'fish', 'lizard']
# my_pets = pets[2..3]
# my_pets.pop
# my_pets.push(pets[1])
# puts "I have a pet #{my_pets[0]} and a pet #{my_pets[-1]}!"

# 5. What Color Are You?: Use Array#each to iterate over colors and print each element.
# colors = ['red', 'yellow', 'purple', 'green']
# colors.each { |color| puts "I'm the color #{color}!"}

# 6. Doubled: Use Array#map to iterate over numbers and return a new array with each number doubled. Assign the returned array to a variable named doubled_numbers and print its value using #p.
# numbers = [1, 2, 3, 4, 5]
# doubled_numbers = numbers.map { |number| number * 2 }
# p doubled_numbers

# 7. Divisble by Three: Use Array#select to iterate over numbers and return a new array that contains only numbers divisible by three. Assign the returned array to a variable named divisible_by_three and print its value using #p.
# numbers = [5, 9, 21, 26, 39]
# divisible_by_three = numbers.select do |number|
#                        number % 3 == 0
#                      end
# p divisible_by_three

# 8. Favorite Number (Part 1): The following array contains three names and numbers. Group each name with the number following it by placing the pair in their own array. Then create a nested array containing all three groups. What does this look like? (You don't need to write any code here. Just alter the value shown so it meets the exercise requirements.)
[['Dave', 7], ['Miranda', 3], ['Jason', 11]]

# 9. Favorite Number (Part 2): Flatten and print this array. That is, the printed result should not have any subarrays, but should have all of the original strings and numbers from the original array.
# favorites = [['Dave', 7], ['Miranda', 3], ['Jason', 11]]
# p favorites.flatten

# 10. Are We The Same?: Compare array1 and array2 and print true or false based on whether they match.
false
# This is because order matters in arrays.