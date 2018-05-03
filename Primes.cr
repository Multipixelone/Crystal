def prime(max : Number, rc = false)
  primes = [] of Int32
  2.upto(max) do |number|
    success = true
    primes.each do |divisor|
      if number % divisor == 0
        success = false
      end
    end
    if success 
      primes << number
      if rc
        puts number
      end
    end
  end
  return primes
end  
print "Max range: "
max = gets.to_i
print "\n"
prime(max, true)
