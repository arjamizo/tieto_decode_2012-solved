INPUT_SIDE_LENGTH=111



s=INPUT_SIDE_LENGTH+2
mat=Array.new(s){Array.new(s){-1}}
neg=Array.new(s){0}
#mat[y][x]
@_inc=0
def inc
	@_inc+=1
end

mat[0]=mat[s-1]=neg
mat=mat.transpose
mat[0]=mat[s-1]=neg
mat=mat.transpose

x=s-1
y=s-1-1
dx=-1
dy=0
puts mat.collect{|x| x.to_a.collect{|n| n.to_s.rjust(3)}.join(',')}
destx=s/2
desty=s/2
#puts "cel #{destx} #{desty}"
while x!=destx && y!=desty do 
	begin
	c=inc
	#puts "(#{x}+#{dx},#{y}+#{dy})=#{c}"
	mat[y+dy][x+dx]=c
#	puts mat.collect{|x| x.to_a.collect{|n| n.to_s.rjust(3)}.join(',')}
	#gets
	y+=dy
	x+=dx
	end while mat[y+dy][x+dx]==-1
	if(dx==-1 && dy==0) 
		dy=-1
		dx=0
	elsif(dx==0 && dy==-1) 
		dy=0
		dx=1
	elsif(dx==1 && dy==0) 
		dy=1
		dx=0
	elsif(dx==0 && dy==1) 
		dy=0
		dx=-1
	end
end 
mat[desty][destx]=inc

#puts mat.collect{|x| x.to_a.collect{|n| n.to_s.rjust(3)}.join(',')}

ans=[]
s.times{|i| ans<<mat[i][i]}
puts "ans to question 38th is #{ans.reduce(0,:+)}"