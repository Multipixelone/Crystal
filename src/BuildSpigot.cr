# Build Latest Spigot Build
# Made with <3 by Multipixelone
# Define Variables
require "file_utils"
require "io"
buildfolder = "~/BuildTools"

#io = IO::Memory.new

# Quick check for new info
#def confirm
#  print "[Y/N] "
#  r = gets(1).downcase
#  exit 0 unless r == "y"
#end

# Make build directory, expanding '~' for home
outputdir = Dir.current
Dir.mkdir(File.expand_path("#{buildfolder}")) unless File.directory? File.expand_path(buildfolder.to_s)
FileUtils.cd(File.expand_path("#{buildfolder}"))
puts "Spigot will be downloaded and built into: #{Dir.current}, correct?"
gets
#confirm
puts "Please type the Minecraft version you would like to build, followed by [ENTER]:"
#puts "You may also type 'latest' for the latest version"
version = gets

# Install Java
puts "Installing OpenJDK 9"
`sudo apt-get -y install openjdk-8-jre git`
`wget https://hub.spigotmc.org/jenkins/job/BuildTools/lastSuccessfulBuild/artifact/target/BuildTools.jar -O BuildTools.jar`
puts "Building Now... Please Wait!"
system "java -jar BuildTools.jar --rev #{version}"
outputjar = "spigot-#{version}.jar"
FileUtils.cp(outputjar.to_s, "#{outputdir}/#{outputjar}")
puts "Build finished"
puts "I love you! <3"
exit 0
