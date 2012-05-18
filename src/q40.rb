ans=[]
100.upto(999){|i|
	ans<<(i.to_s+i.to_s.split('').reverse.join(''))
}
i=0
ans.each{|e|i+=1; print e.to_s+((i%8==0)?"\n":"\t"); }
puts
puts ans.length