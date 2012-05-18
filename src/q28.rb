def adj n
f=n.to_s(2).split('').collect!{|j|j.to_i}
s=Array.new(f)
f.pop
s.shift
res=f.each_with_index.collect{|e,i| f[i]*s[i]}
res.reduce(:+) #sum
end

adjs=(2..10**5).to_a.each_with_index.collect{|n,i| 
r=adj n
#puts "#{n}=>adj n=#{r}"
r
}

puts "average is #{1.0*adjs.reduce(:+)/adjs.length}"
puts "number of adj==4 is #{adjs.count(4)}"