#!/usr/local/bin/ruby


#http://snippets.dzone.com/posts/show/2161
class Array; def sum; inject( nil ) { |sum,x| sum ? sum+x : x }; end; end

#http://julesberman.blogspot.com/2008/04/generating-prime-numbers-in-ruby-python.html
def primesLowerThan n
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
	return primes
end

a=primesLowerThan 10000
A=a.sum
b=(0..10000/243).to_a.collect!{|n| n*243}
B=b.sum
puts "a=#{a.to_s} |a|=#{a.length}"
puts "b=#{b.to_s} |b|=#{b.length}"
puts "A=#{A} \nB=#{B}"

puts "is a divibible by b? "
puts A%B==0
puts "are a,b relatively prime?"
puts A.gcd(B)==1

exit