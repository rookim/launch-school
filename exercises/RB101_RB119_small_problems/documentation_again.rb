# 1. Class and Instance Methods: Locate the ruby documentation for methods File::path and File#path. How are they different?
# The path class method returns the string representation of a path. The path instance method returns the pathname used to create the file as a string.

# 2. Optional Arguments Redux: What will each of the 4 statements print?
require 'date'
puts Date.civil # => "-4712-01-01"
puts Date.civil(2016) # => "2016-01-01"
puts Date.civil(2016, 5) # => "2016-05-01"
puts Date.civil(2016, 5, 13) # => "2016-05-13"
# Date::civil is the same as Date::new

# 3. Default Arguments in the Middle: Use the ruby documentation to determine what this code will print.
def my_method(a, b = 2, c = 3, d)
  p [a, b, c, d]
end
my_method(4, 5, 6) #=> [4, 5, 3, 6]
# According to ruby docs, ruby fills in missing arguments from left to right. So smart. First, 4 is assigned to a. 6 is then assigned to d. 5 is assigned to b, and c receives the default parameter of 3.
# Googled "ruby default positional arguments"

# 4. Mandatory Blocks: How would you search this array, using Array#bsearch, to find the first element whose value exceeds 8?
a = [1, 4, 8, 11, 15, 19]
num = a.bsearch { |e| e > 8 }
p num

# 5. Multiple Signatures: What do each of these puts statements output?
a = %w(a b c d e)
puts a.fetch(7) # => IndexError exception
puts a.fetch(7, 'beats me') # => 'beats me'
puts a.fetch(7) { |index| index**2 } # => 49

# 6. Keyword Arguments: What does this code print?
5.step(to: 10, by: 3) { |value| puts value }
# => 5
# => 8
# The step instance method is from Ruby's Numeric class.

# 7. Parent Class: How would you modify this code to print just the public methods that are defined or overridden by the String class? That is, the list should exclude all members that are only defined in Object, BasicObject, and Kernel.
# my answer
# => s.class.instance_methods(false).inspect
# LS answer
#  => s.public_methods(false).inspect

# 8. Included Modules: Find the documentation for the #min method and change the above code to print the two samllest values in the array.
a = [5, 9, 3, 11]
puts a.min(2)

# 9. Down the Rabbit Hole: Find the documentation for YAML::load_file
# I found some documentation in Ruby 1.8.6.
# The YAML module is an alias of Psych, which is the YAML engine for Ruby.