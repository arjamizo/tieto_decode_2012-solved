
#http://snippets.dzone.com/posts/show/2161
class Array; def sum; inject( nil ) { |sum,x| sum ? sum+x : x }; end; end

#http://stackoverflow.com/questions/3398159/all-divisors-of-a-given-number
def divisors_of(num)
    (1..(num-1)).collect { |n| n if (num%n) == 0}.compact
end

def check_rules_forq19 n
	number=divisors_of(n).sum
	return n==divisors_of(number).sum
end

m=0;
#puts divisors_of(200).to_s
f=File.new("q19autoans.txt","a+")
puts "podaj od jakiego przedzialu zaczac 0..250k"
wczytane=gets.to_i/4
wczytane=276004
f.puts (wczytane..250*1000).to_a.keep_if{|n| 
n*=4; if m==1000 then puts n; m=0; end; m+=1; 
res=check_rules_forq19 n; 
if res then f.puts ">#{n}"; f.flush end; 
res; 
}.length
f.close();