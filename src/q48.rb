#http://ruby-doc.org/core-1.9.3/Enumerator.html#method-i-with_index
fib = Enumerator.new do |y|
  a = 1
  b=1
  loop do
    y << a
    a, b = b, a + b
  end
end
require "enumerator"

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

prs=primesTo 200
puts ">>primes\n#{prs.to_s}"

fibs=fib.take(1000)

fibs=fibs[0..36-1]
puts "\n>>#{fibs.to_s}"
nrs=fibs.select{|f| pos=fibs.index(f)+1; prs.index(pos)!=nil}
puts "\n>>fibb z pozycji o indeksach liczb pierwszych\n#{nrs.to_s}"
t=nrs.collect.with_index{|e,i| [nrs[i-1],nrs[i]]}[1..-1]
puts "\n>>adjs\n#{t.to_s}"
ans=t.collect{|x| sum=(x[0]+x[1]); (sum%2==0)?(sum/2):sum }
puts ans.to_s
ans=ans.select{|n| prs.index(n)!=nil}
puts ans.to_s
puts "there are #{ans.length} prime numbers"
