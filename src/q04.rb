rng=0..10
class Cloud
	def initialize(x,y,dx,dy)
	@x,@y,@dx,@dy=x,y,dx,dy
	end
	def position cycle
		return [(@x+@dx*cycle)%360,(@y+@dy*cycle)%360]
	end
end

@clds=[Cloud.new(0,1,1,-1),Cloud.new(0,0,1,1),Cloud.new(358,0,3,1),Cloud.new(1,1,0,-1),Cloud.new(2,2,-1,-2)]


def frame cycle
	@clds.collect{|c| c.position(cycle)}
end
#0..10000.each{|x|
#	frame(x)
#}
sum=0
rng.each{|i|
	f=frame(i)
	unique=f.uniq
	puts unique.to_s
	sum+=(f-unique).uniq.length
}
puts sum