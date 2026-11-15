
def run_calculator
  puts "\n--- CALCULATOR ---"

  print "Enter first number: "
  first = gets.chomp.to_f

  print "Enter operator (+, -, *, /): "
  operator = gets.chomp

  print "Enter second number: "
  second = gets.chomp.to_f

  result = case operator
           when "+"
             first + second
           when "-"
             first - second
           when "*"
             first * second
           when "/"
             second.zero? ? "Cannot divide by zero!" : first / second
           else
             "Invalid operator!"
           end

  puts "Result: #{result}"
end
