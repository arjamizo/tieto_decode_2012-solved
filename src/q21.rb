def nFirstFibbNrs n
fibb=[1,1]
p1,p2=fibb[1],fibb[0]
(n-2).times{
	newfib=p1+p2
	p2=p1
	p1=newfib
	fibb<<newfib
}
fibb
end
fibs=nFirstFibbNrs(1000)
fexpects=fibs.keep_if{|n| 
[2,3,5,7].count{|i| n%i==0}==4
}

puts fibs.to_s
puts fexpects.to_s
puts fexpects.length