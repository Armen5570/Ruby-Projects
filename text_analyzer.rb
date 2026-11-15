
def run_text_analyzer
  puts "\n--- TEXT ANALYZER ---"

  print "Enter your text: "
  text = gets.chomp

  words = text.split
  characters = text.length
  letters = text.gsub(/\s/, "").length
  sentences = text.split(/[.!?]+/).reject(&:empty?).length

  puts "\n--- ANALYSIS RESULTS ---"
  puts "Characters: #{characters}"
  puts "Letters (without spaces): #{letters}"
  puts "Words: #{words.length}"
  puts "Sentences: #{sentences}"
  puts "Uppercase: #{text.upcase}"
  puts "Lowercase: #{text.downcase}"
  puts "Reversed: #{text.reverse}"
end
