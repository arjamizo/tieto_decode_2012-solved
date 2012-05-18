tab=(1234..5678).to_a.collect{|n| n.to_s(16)}.join('')
digits=tab.scan(/[0-9]/).collect{|d| d.to_i}.reduce(:+)
asciicodes=tab.scan(/[a-z]/).collect{|c| c.ord}.reduce(:+)

puts "#{digits} and #{asciicodes}"