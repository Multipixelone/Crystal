# Calculate Gravity over time, neglecting air resistance
# Made with <3 by Multipixelone
# Define default variables, include class
gravity = 10 # Define gravity in m/s. Real Life would be 9.78033. This assignment can be safely round to 10

# Ask user some questions
puts "Please remember, all values are in m/s"
puts "What interval (in seconds) should we increase by?"
interval = gets
puts "What is the max distance we should calculate to? (In m/s)"
max = gets

# Run some calculations
halfgrav = (gravity / 2)
puts halfgrav
