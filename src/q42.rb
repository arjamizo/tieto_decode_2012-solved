
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
	   #puts i unless (state == 0)
	end 
	primes
end

prs=primesTo 2000000
puts prs[-10..-1].to_s
puts prs[-10..-1].reduce(:+)