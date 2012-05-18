#http://snippets.dzone.com/posts/show/2161
class Array; def sum; inject( nil ) { |sum,x| sum ? sum+x.to_i : x.to_i }; end; end

def fulfillsCriteria? n
	tab=n.to_s.split('').collect!{|x| x.to_i}
	newnr=0
	(tab.length+1).times{|i|
	newnr=tab.sum
	tab.shift
	tab.push(newnr)
	return true if tab.sum==n
	}
	#"#{n}==sum(#{tab.to_s})=#{tab.sum}"
	return tab.sum==n
end

res=[]
for i in (100-1..10**6) do
	puts ">#{i}" if i%100000==0
	if fulfillsCriteria? i then
	puts i
	res<<i 
	end
end
puts res.length