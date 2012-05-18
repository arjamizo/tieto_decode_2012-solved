
#http://snippets.dzone.com/posts/show/2161
class Array; def sum; inject( nil ) { |sum,x| sum ? sum+x : x }; end; end
def nth n
	rng=(0..6).to_a
	t=rng*(n/rng.length+1)
	t[0..n-1].sum
end
start=11
puts start+nth(450*146+423)