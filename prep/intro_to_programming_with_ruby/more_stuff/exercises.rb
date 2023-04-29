# 

# 1. Write a program that checks if the sequence of characters "lab" exists in the following strings. If it does exist, print out the word.
# def has_lab?(word)
  # if word =~ /lab/
  #   puts "We have a match!"
  # else
  #   puts "No match."
  # end

#   if /lab/.match(word)
#     puts "We have a match!"
#   else
#     puts "No match."
#   end

# end
# has_lab?("laboratory")
# has_lab?("experiment")
# has_lab?("Pans Labyrinth")
# has_lab?("elaborate")
# has_lab?("polar bear")
# has_lab?("pola bear")
# regex is case sensitive by default

# 2. What will the following program print to the screen? What will it return?
# Nothing is printed because the block has to be activated with the call method!

# 3. What is exception handling and what problem does it solve?
# Exception handling is for when exceptions (errors) are raised in our program. Normally, when our program raises an exception, the entire program halts and throws an error. Exception handling allows for the program to continue despite any errors. No data is needlessly lost either, and we don't have to start over.

# 4. Modify the code in exercise 2 to make the block execute properly.
def execute(&block)
  block.call
end

execute { puts "Hello from inside the execute method!" }

# 5. Why does the following code give us the following error when we run it?
# Because the ampersand in front of the block argument in the definition of the execute method, the code block is unable to be passed in as a parameter. In the execute method's eyes, no parameter/argument is being passed in. Thus the error that it expects 1 argument but received none is being raised.