# 1.: Print Me (Part 1): Write a method named print_me that prints "I'm printing within the method!" when invoked.
# def print_me
#   puts "I'm printing within the method!"  
# end
# print_me

# 2. Print Me (Part 2): Write a method named print_me so that I'm printing the return value! is printed.
# def print_me
#   "I'm printing the return value!"
# end
# puts print_me

# 3. Greeting Through Methods (Part 1): Write two methods, one that returns the string "Hello" and one that returns the string "World". Then print both strings using #puts, combining them into one sentence.
# def hello
#   "Hello"
# end
# def world
#   "World"
# end
# puts hello + " " + world

# 4. Greeting Through Methods (Part 2): Write a method named greet that invokes the following methods.
# def hello
#   'Hello'
# end
# def world
#   'World'
# end
# def greet
#   word1 = hello
#   word2 = world
#   "#{word1} #{word2}"
# end
# puts greet

# 5. Make and Model: Using the following code, write a method called ar that takes two arguments and prints a string containing the values of both arguments.
# def car(x, y)
#   puts x + " " + y
# end
# car("Toyota", 'Corolla')

# 6. Day or Night?: The variable will be randomly assigned as true or false. Write a method name time_of_day that, given a boolean as an argument, prints "It's daytime!" if the boolean is true and "It's nighttime!" if it's false. Pass daylight into the method as the argument to determine whether it's day or night.
# daylight = [true, false].sample
# def time_of_day(bool)
#   if bool
#     puts "It's daytime!"
#   else
#     puts "It's nighttime!"
#   end
# end
# time_of_day(daylight)

# 7. Naming Animals: Based on what the error messages are telling you, update the relevant method of definitions and method invocations as necessary so that the names are printed as shown below.
# def dog(name)
#   return name
# end

# def cat(name)
#   return name
# end

# puts "The dog's name is #{dog('Spot')}."
# puts "The cat's name is #{cat('Ginger')}."

# 8. Name Not Found: Write a method that accepts one argument, but doesn't require it. The parameter should default to the string "Bob" if no argument is given. The method's return value should be the value of the argument.
# def assign_name(name='Bob')
#   name
# end
# puts assign_name('Kevin') == 'Kevin'
# puts assign_name == 'Bob'

# 9. Multiply the Sum: Write the following methods so that each output is true.
# def add(num1, num2)
#   num1 + num2
# end
# def multiply(num1, num2)
#   num1 * num2
# end
# puts add(2, 2) == 4
# puts add(5, 4) == 9
# puts multiply(add(2, 2), add(5, 4)) == 36

# 10. Random Sentence: Write the methods name and activity so that they each take the appropriate array and return a random value from it. Then write the method setnence that combines both values into a sentence and returns it from the method.
names = ['Dave', 'Sally', 'George', 'Jessica']
activities = ['walking', 'running', 'cycling']
def name(array)
  array.sample
end
def activity(array)
  array.sample
end
def sentence(person, action)
  "#{action.capitalize} is #{person}'s favorite activity."
end
puts sentence(name(names), activity(activities))