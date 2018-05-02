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

filename = "#{simple}.desktop"

puts "\e[H\e[2J"
puts "Please make sure these are the right variables:"
puts "Name of desktop file: #{filename}"
puts "Name of Program in list: #{fullname}"
puts "Command to execute: #{command}"
puts "Comment in list: #{comment}"
gets

File.open(filename, mode = 'a') do |f|
    f << "[Desktop Entry]"
    f << "Name=#{fullname}"
    f << "Comment=#{comment}"
    f << "Exec=#{command}"
#    f << "Icon="
    f << "Terminal=false"
    f << "Type=Application"
    f << "Categories=Game;"
end

puts "Thanks for using Multipixelone's Shortcut Script!"
puts "I love you~"
