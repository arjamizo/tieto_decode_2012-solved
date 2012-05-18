require 'date'
res=[]
for y in 2012..2365-1 do
	1.upto(12){|month|
		res<<[y,month] if Time.new(y,month,13).to_date.wday==5
	}
end
puts res.to_s
puts res.length