MAX=1.0E07

#http://snippets.dzone.com/posts/show/2161
class Array; def sum; inject( nil ) { |sum,x| sum ? sum+x : x }; end; end

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
	   puts i unless (state == 0)
	end 
	primes
end

puts primesTo(MAX).sum%100