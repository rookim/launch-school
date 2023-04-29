names = ['bob', 'joe', 'steve', nil, 'frank']
names.each do |name|
  begin
    puts "#{name}'s name has #{name.length} letters in it."
  rescue
    puts "Something is wrong!"
  end
end

# inline exception handling example
zero = 0
puts "Before each call"
zero.each { |element| puts element } rescue puts "Can't do that!"
puts "After each call"

# rescue pre-existing errors
def divide(number, divisor)
  begin
    answer = number / divisor
  rescue ZeroDivisionError => e
    puts e.message
  end
end
puts divide(16,4)
puts divide(4,0)
puts divide(14,7)