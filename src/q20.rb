#!/usr/local/bin/ruby
#http://julesberman.blogspot.com/2008/04/generating-prime-numbers-in-ruby-python.html
def primesTo n

	state = Numeric.new
	primes=[2,3]
	(4..n).each do
	   |i|
	   (2..(Math.sqrt(i).ceil)).each do
	      |thing|
	      state = 1
	      if (i.divmod(thing)[1] == 0)
		 state = 0
		 break
	      end
	   end
	   primes<<i unless (state == 0)
	end 
	primes
end

prims=primesTo 10**6
palindroms=prims.keep_if{|n| n.to_s==n.to_s.reverse}
puts palindroms.to_s
puts "64th palindrome prime is #{palindroms[64-1]}"
puts "there are #{palindroms.length} such a palindrome prime numbers"