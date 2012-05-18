side=205891132094649 
V=side**3
v=V
nrOfCubes=1
cubeVol=V
for i in 1..30 do 
	nrOfCubes*=27
	cubeVol=V/(27**i)
	cubesToDelete=7*nrOfCubes/27
	nrOfCubes-=cubesToDelete
	v-=cubesToDelete*cubeVol
	puts "#{i}th\tnrOfCubes=#{nrOfCubes.to_s.ljust(20)} #{cubesToDelete}"
end
puts v
puts V-v