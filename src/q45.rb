
f=File.new("q45.txt","a+")
f.puts "start #{Time.now.to_s}"
f.close
puts "start #{Time.now.to_s}"


s=[0,0,3,2,57]; e=[0,0,3,3,1]; 

s=[0,0,0,0,1]; e=[5,1,1,1,1]; 

s.reverse!
e.reverse!

def inc t
	#t=t.reverse
	i=0
	t[i]+=1
	while t[i]>=60 do
		t[i]=0
		i+=+1
		t[i]+=1
	end
	#t=t.reverse
	t
end

t=Array.new(s)

ans=0
e=inc(e)
i=1
while t!=e
	#puts t.to_s
	i+=1
	#gets if i%10==0
	tt=t.take_while{|x|x!=0}
	pr=0
	if tt.length!=0 then
		pr=tt.reduce(1,:*)
	end
	puts "#{t.to_s}=>#{pr}" if pr==0
	ans+=(pr)
	t=inc(t)
end 
puts ans
puts "end #{Time.now.to_s}"
f=File.new("q45.txt","a+")
#puts ans.reduce(0,:+)
f.puts ans
f.puts "end #{Time.now.to_s}"
f.close()