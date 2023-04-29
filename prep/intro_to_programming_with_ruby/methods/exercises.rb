# 

# 1. Write a program that prints a greeting message. This program should contain a method called greeting that takes a name as its parameter and returns a string.
def greeting(name)
  "Hello, #{name}. You look good today!"
end
puts greeting("Hero")

# 2. What do the following expressions evaluate to? That is, what value does each expression return?
  # 1. 2
  # 2. nil
  # 3. "Joe"
  # 4. "four"
  # 5. nil

# 3. Write a program that includes a method called multiply that takes two arguments and returns the product of the two numbers.

def multiply(num1, num2)
  num1 * num2
end

# 4. What will the following code print to the screen?
# It will print nothing because there is a return statement before the puts statement in the scream method.

# 5. Edit the method definition in exercise #4 so that it does print words on the screen. What does it return now?
def scream(words)
  words = words + "!!!!"
  puts words
  return 
end

scream("Yippeee")
# Because the puts statement is the final line of code that is evaluated before the return statement, the scream method now returns nil.

# 6. What does the following error message tell you?
# The calculate_product method expected 2 arguments, but only received 1.