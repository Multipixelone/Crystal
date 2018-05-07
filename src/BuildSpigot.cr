# Build Latest Spigot Build
# Made with <3 by Multipixelone
# Define Variables
require "file_utils"
require "io"
buildfolder = "~/BuildTools"

#io = IO::Memory.new

# Quick check for new info
def confirm
  print "[Y/N] "
  r = gets(1)
  exit 0 unless r == "Y"
end

# Make build directory, expanding '~' for home
outputdir = Dir.current
Dir.mkdir(File.expand_path("#{buildfolder}")) unless File.directory? File.expand_path(buildfolder.to_s)
FileUtils.cd(File.expand_path("#{buildfolder}"))
puts "Spigot will be downloaded and built into: #{Dir.current}, correct?"
#gets
confirm
sleep(1)
puts "Please type the Minecraft version you would like to build, followed by [ENTER]:"
version = gets

# Check for prebuilt .jar
if File.exists?("#{outputdir}/spigot-#{version}.jar") #or File.exists?("#{buildfolder/spigot-#{version}.jar")
  puts "Jar already exists for version #{version} in #{outputdir}. Proceed?"
  gets
elsif File.exists?("#{buildfolder}/spigot-#{version}.jar")
  puts "Jar already exists for version #{version} in #{buildfolder}. Proceed?"
  gets
elsif File.exists?("#{Dir.current}/spigot-#{version}.jar")
  puts "Jar alreadt exists for version #{version} in your current directory. Proceed?"
end

# Install Java
puts "Installing OpenJDK 9"
`sudo apt-get -y install openjdk-8-jre git`
`wget https://hub.spigotmc.org/jenkins/job/BuildTools/lastSuccessfulBuild/artifact/target/BuildTools.jar -O BuildTools.jar`
puts "Building Spigot Version #{version}... Please Wait!"
sleep(1.5s)
system "java -jar BuildTools.jar --rev #{version}"
outputjar = "spigot-#{version}.jar"
FileUtils.cp(outputjar.to_s, "#{outputdir}/#{outputjar}")
puts "Build finished"
puts "I love you! <3"
exit 0
