# What's My Value? Part 1
# a = 7
# Remember, numbers in Ruby are immutable!

# Part 2
# a = 7

# Part 3
# a = 7
# The a variable within the my_value method scope, is not accessible from the outside. Therefore, 7 would be printed instead of 12.

# Part 4
# a = "Xy-zy"
# Strings are mutable. String#[] is also a mutating method.

# Part 5
# a = "Xyzzy"
# Assignment never changes the value of an object. A new object is instead created.

# Part 6
# There is an error. The a variable within the my_value method is never defined.

# Part 7
# a = 3
# The each loop is not in its own scope. Thus, the variable a, which was set at the very top, is affected.

# Part 8
# An error is raised because a was never defind outside of the code block.

# Part 9
# a = 7
# In this problem, something called shadowing occurs. The block parameter has the same name as a variable defined outside of this code block. As a result, the variable defined outside of the scope of the each method is not affected at all.

# Part 10
# a = 7, but invoking the my_value method brings about an error because the a variable is never defined.