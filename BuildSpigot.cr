# Build Latest Spigot Build
# Made with <3 by Multipixelone
# Define Variables
require "file_utils"
buildfolder = "~/Spigot"

# Make build directory, expanding '~' for home
Dir.mkdir(File.expand_path("#{buildfolder}")) unless File.directory? File.expand_path(buildfolder.to_s)
FileUtils.cd(File.expand_path("#{buildfolder}"))
puts "#{Dir.current}"
