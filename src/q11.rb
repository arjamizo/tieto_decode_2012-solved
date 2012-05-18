inp="PRZYKLADOWE ZDANIE TESTOWE"
key=1
incrementRange=('A'..'Z').to_a+[' ', '+']
puts incrementRange.to_s
res=inp.split('').collect{|c| 
if ('A'..'Z').to_a.index(c)!=nil
puts "done #{c}"
	n=c.ord+(key%2==0?-1:1)*key
	n-='A'.ord
	n%=('Z'.ord-'A'.ord)
	n+='A'.ord
	c=n
end
key+=1
c.chr
}
puts res.join('')