require 'set'
rates=[2,6,4,3,8,7,5,9,6,5,9,6]
effects=[
[[2,-1],[5,-3]],
[[3,+1],[9,-1]],
[[8,+2],[6,-2]],
[[5,+1],[3,+4]],
[[1,+2],[2,-4]],
[[7,-2],[3,-1]],
[[9,+2],[8,-1]],
[[6,-3],[5,-4]],
[[9,-1],[4,+3]],
[[3,+3],[10,-1]],
[[7,-2],[2,+3]],
[[1,+2],[7,+1]]
]

max=0
maxcnt=0

(0..11).each{|i|
	(0..11).each{|j|
		next if i>=j
		(0..11).each{|k|
			next if i>=k or j>=k
			s=Set.new([i,j,k])
			ranking=rates[i]+rates[j]+rates[k];
			e=effects[i]+effects[j]+effects[k]
			puts "#{s.to_a.to_s} #{e.to_s}"
			#puts e.to_s if !e.empty?
			e.each{|x| ranking+=x[1] if s.to_a.index(x[0])!=nil}
			if max<ranking then
			max=ranking
			maxcnt=1
			elsif max==ranking
			maxcnt+=1
			end
		}
	}
}
puts max
puts maxcnt