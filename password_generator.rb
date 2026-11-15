
def run_password_generator
  puts "\n--- PASSWORD GENERATOR ---"

  print "Enter password length: "
  length = gets.chomp.to_i

  if length <= 0
    puts "Please enter a valid length!"
    return
  end

  characters = (
    "abcdefghijklmnopqrstuvwxyz" +
    "ABCDEFGHIJKLMNOPQRSTUVWXYZ" +
    "0123456789" +
    "!@#$%^&*"
  )

  password = Array.new(length) do
    characters[Random.rand(characters.length)]
  end.join

  puts "\nGenerated password:"
  puts password
end
