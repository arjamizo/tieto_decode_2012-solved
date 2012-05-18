res=[]
(10**6).times{|n|
puts n if n%1000000==0

res<<n if (n%3==1 && n%4==2 && n%5==3 && n%6==4 && n%7==5 && n%8==6 && n%9==7 && n.to_s.count('7')>=1) 

}
puts res
puts res.length