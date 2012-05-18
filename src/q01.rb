ans=0
rng=4563..89450

#http://snippets.dzone.com/posts/show/2161
class Array; def sum; inject( nil ) { |sum,x| sum ? sum+x : x }; end; end

@maxx=-1
def cnt n
cached=[]
s=n
while cached.index(s)==nil and s!=1
	cached.push(s)
	s=s.to_s.split('').collect{|x| x.to_i**2}.sum
	
	#puts "#{n}=>#{s}"
end
@maxx=cached.length if cached.length>@maxx
#puts "#{max=cached.length}: #{cached.max}"
return s
end
res=rng.collect{|x| 
r=cnt x
#puts "#{x.to_s.rjust(10)}=>#{r}"
r
}
f=File.new("ans#{__FILE__.scan(/[0-9]+/)[0]}", "w");
f.puts(res.to_s)
f.puts("number of ones: ".concat(res.count(1).to_s))
f.close
puts @maxx


#od 13:00 do 13:14