def multiply(first_number, second_number)
  first_number.to_f * second_number.to_f
end

def divide(first_number, second_number)
  first_number.to_f / second_number.to_f
end

def subtract(first_number, second_number)
  second_number.to_f - first_number.to_f
end

def mod(first_number, second_number)
  first_number.to_f % second_number.to_f
end

#puts "What is your first name?"
#first_name = gets.chomp

#puts "What is your last name?"
#last_name = gets.chomp

#full_name = first_name + " " + last_name

#puts "Welcome #{full_name}, to the analyzer!"
#puts "Your first name has #{first_name.length} characters, and your last name has #{last_name.length} characters"
#puts "Your name reversed is #{full_name.reverse}"

puts "What do you want to do? 1) multiply 2) divide 3) subtract 4) find remainder"
prompt = gets.chomp

puts "Please enter your first number"
first_number = gets.chomp

puts "Please enter your second number"
second_number = gets.chomp

if prompt == '1'
  puts "You have chosen to multiply #{first_number} by #{second_number}"
  result = multiply(first_number, second_number)
elsif prompt == '2'
  puts "You have chosen to divide #{first_number} by #{second_number}"
  result = divide(first_number, second_number)
elsif prompt == '3'
  puts "You have chosen to subtract #{first_number} from #{second_number}"
  result = subtract(second_number, first_number)
elsif prompt == '4'
  puts "You have chosen to find the remainder of #{first_number} divided by #{second_number}"
  result = mod(first_number, second_number)
else
  puts "You have made an invalid choice"
end

puts "The result is #{result}"

# puts "The first number multiplied by the second number is: #{first_number.to_i * second_number.to_i}"
# puts "The first number divided by the second number is: #{first_number.to_i / second_number.to_i}"
# puts "The first number subtracted_from the second number is: #{second_number.to_i - first_number.to_i}"
# puts "The first number modulo the second number is: #{first_number.to_i % second_number.to_i}"

# puts "The first number multiplied by the second number is: #{multiply(first_number, second_number)}"
# puts "The first number divided by the second number is: #{divide(first_number, second_number)}"
# puts "The first number subtracted_from the second number is: #{subtract(second_number, first_number)}"
# puts "The first number modulo the second number is: #{mod(first_number, second_number)}"
