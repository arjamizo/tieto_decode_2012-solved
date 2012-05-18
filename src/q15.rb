possible=0
def grasshopper left, lastjump #gh=grasshopper
	if (left==0) then
	#possible=possible+1 
	puts 1
	elsif

	(lastjump..10).each { |j| 
		grasshopper(left-j, j)
	}
	
	end
end

def grasshopper2 left, lastjump
	
end

grasshopper2 50, 2
puts possible