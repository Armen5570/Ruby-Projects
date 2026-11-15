
require_relative "calculator"
require_relative "password_generator"
require_relative "number_guessing"
require_relative "text_analyzer"

def show_menu
  puts "\n================================"
  puts "       RUBY TOOLKIT"
  puts "================================"
  puts "1. Calculator"
  puts "2. Password Generator"
  puts "3. Number Guessing Game"
  puts "4. Text Analyzer"
  puts "5. Exit"
  puts "================================"
  print "Choose an option: "
end

loop do
  show_menu
  choice = gets.chomp

  case choice
  when "1"
    run_calculator
  when "2"
    run_password_generator
  when "3"
    run_number_guessing
  when "4"
    run_text_analyzer
  when "5"
    puts "Thanks for using Ruby Toolkit!"
    break
  else
    puts "Invalid choice. Please try again."
  end
end
