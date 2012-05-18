res=[]
for i in (1..1000000) do 
	res<<i if (i.to_s.count('5')==3)
end
puts "containg three fives: "+res.length.to_s

puts ""+res.count{|i| c=i.to_s(2).count('1'); c==4||c==6 }.to_s