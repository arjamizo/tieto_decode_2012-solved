RNG=[5,7,11,13]
def isfine n
	RNG.each{|p| res=n.modulo(n); return false if res; res}
end
puts (1000..1000000).to_a.count{|x| 
	res=RNG.collect{|y| x.modulo(y)}.to_a
	if res.count(0)==RNG.length
	puts "#{x}=>#{res}" 
	true
	elsif
	false
	end
}

#13:55