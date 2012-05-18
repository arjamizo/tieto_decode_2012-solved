q=[
[1, 1, 1, 1, 1, 1, 0, 0, 1, 0],
[1, 0, 0, 0, 1, 0, 1, 1, 1, 1],
[0, 0, 0, 1, 0, 0, 0, 0, 0, 0],
[0, 1, 1, 0, 1, 1, 0, 1, 0, 1],
[1, 0, 0, 1, 1, 1, 0, 1, 0, 1],
[0, 1, 0, 0, 0, 1, 0, 0, 1, 0],
[0, 1, 0, 1, 1, 1, 0, 0, 1, 0],
[0, 0, 0, 1, 1, 1, 0, 1, 0, 0],
[0, 1, 0, 1, 1, 1, 0, 1, 1, 1],
[0, 0, 1, 0, 0, 0, 0, 0, 0, 1]
]

def printState q
	for y in 0..9 do
		s=0+10*y
		e=s+9
		puts q[y].to_s
	end
	puts '-'*10
end

def nextState q
q=q
newq=Array.new(q)
for y in 0..9 do 
	for x in 0..9 do 
		neighsIds=[]
		(-1..1).each{|dx| 
			(-1..1).each{|dy|
				#puts "x: #{[x+dx].to_s} in #{(0..9).to_a.to_s} => #{[x+dx] & (0..9).to_a}"
				#puts "y: #{[y+dy].to_s} in #{(0..9).to_a.to_s}"
				isx=(0..9).to_a & [x+dx]
				isy=(0..9).to_a & [y+dy]
				#puts "#{isx.to_s} #{isy.to_s}" if x==0 && y==0 && isx.length>0 && isy.length>0
				neighsIds <<[y+dy, x+dx] if (isx.length>0 && isy.length>0 && [dy,dx]!=[0,0] )
			} 
		}
		nghs=neighsIds.collect{|n| q[n[0]][n[1]]}
		oppcnt=nghs.count{|i|i!=q[y][x]}
		newq[y][x]=((oppcnt*2>nghs.length)?1-q[y][x]:q[y][x])
		next if neighsIds.length!=3
		puts neighsIds.to_s
		puts nghs.to_s
		puts "opposites: #{oppcnt} all: #{nghs.length}"
	end
end


newq
end

printState q
for i in 0..100 do
gets
q=nextState q
printState q
end