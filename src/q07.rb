q='a'
(1..9999).each{|x|
q=case q 
when 'a' then x%2==0?'b':'c'
when 'b' then x%3==0?'f':'d'
when 'c' then x%7==0?'e':'a'
when 'd' then x%4==0?'a':'e'
when 'e' then x%5==0?'f':'b'
when 'f' then x%6==0?'c':'d'
end
}
puts q