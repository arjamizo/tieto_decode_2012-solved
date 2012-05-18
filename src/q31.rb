res=[]
for i in (-300..50200)
	str=i.to_s
	even=str.scan(/[02468]/).collect!{|x| x.to_i}.reduce(:+).to_i
	odd=str.scan(/[13579]/).collect!{|x| x.to_i}.reduce(:+).to_i
	puts "#{i}: Eevens=#{even} Eodds=#{odd}"
	next if even==0 || odd==0
	res<<i if i%even==0 && i%odd==0
end
puts res.length