# Generate a Linux .desktop file
# Define default variables, include class
outputfolder = "DesktopFiles"
iconfolder = "/opt/multipixelone/icons"
require "file_utils"

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

# Define filepath
filename = "#{simple}.desktop"
filepath = "#{outputfolder}/#{filename}"

# Verify with user
print "\e[H\e[2J"
puts "Please make sure these are the right variables:"
puts "Name of desktop file: #{filename}"
puts "Name of Program in list: #{fullname}"
puts "Command to execute: #{command}"
puts "Comment in list: #{comment}"
puts "Location of desktop file: #{filepath}"
puts "Location of icon: #{icon}"
gets

# Move icon to proper folder
Dir.mkdir_p(iconfolder.to_s) unless File.directory? iconfolder.to_s
FileUtils.mv icon.to_s, "#{iconfolder}/#{icon}"
iconpath = iconfolder.to_s + "/" + icon.to_s

# Write all to file, array used for now
Dir.mkdir("#{outputfolder}") unless File.directory? outputfolder.to_s
a = ["[Desktop Entry]", "Name=#{fullname}", "Comment=#{comment}", "Exec=#{command}", "Icon=#{iconpath}", "Terminal=False", "Type=Application", "Categories=Game;"]
File.open("#{filepath}", mode: "w") do |file|
  a.each { |s| file.puts("#{s}\n") }
end

# Goodbye Message
puts "Thanks for using Multipixelone's Shortcut Script!"
puts "I love you~"
