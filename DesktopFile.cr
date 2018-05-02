# Generate a Linux .desktop file
puts ".Desktop file script made by Multipixelone"

# Ask some questions
puts "Type a simple name of the application in lowercase, with no spaces, followed by [ENTER]:"
simple = gets
puts "Type the full name of the application, followed by [ENTER]:"
fullname = gets
puts "Command to execute, followed by [ENTER]:"
command = gets
puts "Type the comment of the application, followed by [ENTER]:"
comment = gets

filename = ${simple}.desktop

puts "Make sure these are the right variables"
puts filename
puts simple
puts fullname
puts command
puts comment
