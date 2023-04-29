# 1. Where to Find Documentation: Where can you find the most complete Ruby documentation?
# The most complete Ruby docs can be found at https://ruby-doc.org/

# 2. while Loops: Locate the description of the while loop in the ruby documentation.
# Go to the Ruby docs, click on the version of Ruby you're using, and then click on the link to control expressions. Use ctrl + F to locate their explanation on the while loop.
# The while loop executes while a condition is true.

# 3. Return Value of while: Using the ruby documentation, determine what value a while loop returns.
# The result of a while loop is nil unless break is used to supply a value.

# 4. Return Value of break: In the previous exercise, you learned that the while loop returns nil unless break is used. Locate the documentation for break, and determine what value break sets the return value to for the while loop.
# The keyword `break` accepts a value that is the result of the expression it is “breaking” out of. If no arguments are provided, nil is returned instead.

# 5. Large Numbers: Using the ruby documentation, determine how you can write large numbers in a way that makes them easier to read.
# You can use underscores to make large numbers easier to read. Ruby ignores underscore characters when reading numbers. 

# 6. Symbol Syntax: Using the ruby documentation, determine how you would write a Symbol that represents your name. We aren't looking for a String; we want a Symbol, which is one of ruby's datatypes.
# :Ro
# You can also interpolate into a symbol like this:
x = "kim"
:"hero#{x}" # this will produce :herokim
x = " kim"
:"hero#{x}" # this will produce :"hero kim"

# 7. String Class: Locate and open the class documentation for the String class.
# https://ruby-doc.org/core-2.7.5/String.html

# 8. Right Justifying Strings: Use the ruby documentation for the String class to determine which method can be used to right justify a String object.
# #rjust: takes in an integer parameter of size and an optional parameter of pad_string = ' ', basically a string that will replace all the empty spaces in your right-justified string.