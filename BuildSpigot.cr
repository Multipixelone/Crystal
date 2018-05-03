# Build Latest Spigot Build
# Made with <3 by Multipixelone
# Define Variables
require "file_utils"
buildfolder = "~/Spigot"

# Make build directory, expanding '~' for home
Dir.mkdir(File.expand_path("#{buildfolder}")) unless File.directory? File.expand_path(buildfolder.to_s)
FileUtils.cd(File.expand_path("#{buildfolder}"))
puts "Spigot will be downloaded and built into: #{Dir.current}, press [ENTER] to confirm"
gets
puts "Please type the Minecraft version you would like to build, followed by [ENTER]:"
puts "You may also type 'latest' for the latest version"
version = gets
