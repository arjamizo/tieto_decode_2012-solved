def frac n 
(2..n).to_a.reduce(1, :*)
end

@fracs=[]
(0..9).to_a.take_while{|n| a=frac n; @fracs<<a if a<=10**9}

def allSubsets set
	combs=2**set.length
	subsets=[]
	for i in (0..combs) do
		subset=[]
		0.upto(set.length-1){|j| subset<<set[j] if i&(1<<j)!=0}
		subsets<<subset
	end
	subsets
end

#possibleSums=allSubsets(fracs).collect{|n| n.reduce(:+)}.to_a.compact.sort
#puts possibleSums
#gets
def isCuriousNumber n
	n.to_s.split('').collect!{|i| @fracs[i.to_i]}.reduce(:+)==n
end


def allNonDecreasingSequences len
	
end

ans=[]
f=File.new("q29ansers.txt", "a+");
cnt=-1
ans=for n in 53600000..10**8 do
isc=isCuriousNumber n
cnt+=1
if cnt==100000
cnt=0
puts ">"+n.to_s
end
if isc then
ans<<n 
f.puts n
f.flush
puts n
end
end
f.close();

puts ans.to_s
puts ans.length