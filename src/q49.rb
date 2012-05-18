class Fixnum 
	#natural dividors from 1 to self
	def dvs
	dvs=[]
		for i in (1..self)
			dvs<<i if self%i==0
		end
	dvs
	end
end

ansfor=[999, 23314, 100200, 678343, 1000000]
puts ansfor.collect{|n| n.dvs.length%2==1?"open":"closed"}