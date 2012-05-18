inp="Computer programming is the iterative process of writing or editing source code. Editing source code involves testing, analyzing, and refining, and sometimes coordinating with other programmers on a jointly developed program.\n"+
"A person who practices this skill is referred to as a computer programmer, software developer or coder. The sometimes lengthy process of computer programming is usually referred to as software development.\n"+
"The term software engineering is becoming popular as the process is seen as an engineering discipline.\n"
tab=inp.split(/[ ,.\n]+/)
res={}
tab.collect{|w| 
sum=w.split('').collect{|c| c.ord}.reduce(:+) 
res[w]=sum
}
puts res.inject(Hash.new(0)) {|hash, word| hash[word.to_a[1]]+=1; hash}.sort.keep_if{|x| x[1]>1}.to_s