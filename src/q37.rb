ans=[]
for i in 1..10**6 do
	sum=i+i.to_s.reverse.to_i
	if sum.to_s.index(/[13579]/)==nil then
		ans<<sum 
		#puts "#{i}+#{i.to_s.reverse.to_i}=#{sum}"
	end
end
puts "how many such numbers are there in given range? #{ans.length}"
puts "count of unique sums=#{ans.uniq.length}"