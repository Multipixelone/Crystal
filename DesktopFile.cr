# Generate a Linux .desktop file
# Define default variables
folder = "DesktopFiles"

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

filename = "#{simple}.desktop"
filepath = "#{folder}/#{filename}"

print "\e[H\e[2J"
puts "Please make sure these are the right variables:"
puts "Name of desktop file: #{filename}"
puts "Name of Program in list: #{fullname}"
puts "Command to execute: #{command}"
puts "Comment in list: #{comment}"
puts "Location of desktop file: #{filepath}"
gets

Dir.mkdir("DesktopFiles")
File.write("DesktopFiles/#{filename}", "[Desktop Entry]")

puts "Thanks for using Multipixelone's Shortcut Script!"
puts "I love you~"
