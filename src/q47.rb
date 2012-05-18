require 'date'
res=[]
rng=(2001..3000).to_a.select{|n| n%4==0}
for y in rng do
	1.upto(12){|month|
		res<<Time.new(y,month,13).to_date.to_s if Time.new(y,month,13).to_date.wday==5
	}
end
puts res.to_s
puts res.length