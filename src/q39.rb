#parameters BEGIN
side=50
#parameters END

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
prs=primesTo(side**2)

#(side**2).times{|i|
#	ans<<(cnt)
#	cnt+=d
#	d=1
#	d=10 if prs.index(ans[-1])!=nil
#}
cnt=0
d=1
i=0
mat=Array.new(side){Array.new(side){0}}
for y in 1..side do
	for x in 1..side do
		cnt+=d
		mat[y-1][x-1]=cnt
		d=1
		d=10 if prs.index(y)!=nil && prs.index(x)!=nil
	end
end
#puts mat.collect{|x| x.to_a.collect{|n| n.to_s.rjust(3)}.join(',')}
ans=[]
side.times{|i| ans<<mat[i][i]}
puts "ans to question 38th is #{ans.reduce(0,:+)}"