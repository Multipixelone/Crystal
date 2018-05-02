# Generate a Linux .desktop file
# Define default variables
outputfolder = "DesktopFiles"
iconfolder = "/opt/multipixelone"

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
puts "Type the path to the icon file, to be moved, followed by [ENTER]:"
icon = gets

filename = "#{simple}.desktop"
filepath = "#{outputfolder}/#{filename}"

print "\e[H\e[2J"
puts "Please make sure these are the right variables:"
puts "Name of desktop file: #{filename}"
puts "Name of Program in list: #{fullname}"
puts "Command to execute: #{command}"
puts "Comment in list: #{comment}"
puts "Location of desktop file: #{filepath}"
puts "Location of icon: #{icon}"
gets

Dir.mkdir(iconfolder.to_s)

Dir.mkdir("#{folder}")
File.write("#{filepath}", "[Desktop Entry]")
File.write("#{filepath}", "Name=#{fullname}")
File.write("#{filepath}", "Comment=#{comment}")
File.write("#{filepath}", "Exec=#{command}")
File.write("#{filepath}", "Icon=")
File.write("#{filepath}", "Terminal=false")
File.write("#{filepath}", "Type=Application")
File.write("#{filepath}", "Categories=Game;")

puts "Thanks for using Multipixelone's Shortcut Script!"
puts "I love you~"
