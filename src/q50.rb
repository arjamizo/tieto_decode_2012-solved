#http://ruby-doc.org/core-1.9.3/Enumerator.html#method-i-with_index
fib = Enumerator.new do |y|
  a = 1
  b=1
  loop do
    y << a
    a, b = b, a + b
  end
end

#http://ruby-doc.org/core-1.9.3/Enumerator.html#method-i-with_index
trib = Enumerator.new do |y|
  a,b,c=1,1,2
  loop do
    y << a
    a, b, c = b, c, a+b+c
  end
end

f=fib.take(40)
t=trib.take(40)
puts (0..40-1).collect{|n| f[n].gcd(t[n])}.to_s