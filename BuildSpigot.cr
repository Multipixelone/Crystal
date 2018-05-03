# Build Latest Spigot Build
# Made with <3 by Multipixelone
# Define Variables, get current user
#currentuser = ENV['USERNAME']
buildfolder = "#{Dir.home}/Spigot"

Dir.mkdir_p(buildfolder.to_s) unless File.directory? buildfolder.to_s
