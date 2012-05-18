nrs="574, 7114, 37, 53216, 9326, 706, 4205, 91124, 65720, 34, 21413, 89, 29, 4080, 01234, 69, 90, 1300, 13, 85, 17723, 1193, 40883, 3177, 75228, 0925, 07545, 3741, 32021, 5509, 28, 63, 49, 2894, 89683, 254, 5923, 673, 7271, 65, 249, 65932, 14123, 3309, 27, 165, 62, 89393, 5231, 47693, 977, 9614, 24557, 6547, 13613, 23, 909, 35353, 29232, 33, 39194, 181, 765, 382, 19, 08, 65, 77778, 44, 999, 0551, 8146, 6479, 95292, 22, 54706, 967, 0082, 484, 44, 83391, 6373, 76, 8689, 6792, 5162, 36, 85, 5485, 676, 016, 33, 03435, 01502, 24, 140, 7428, 93391, 1967, 7134"

nrs=nrs.scan(/[0-9]+/)

def nrVal n
rplcs=[5,3,1,7,0,2,9,8,4,6]
ans=0
n.to_s.reverse.split('').each_with_index{|e,i| 
ans+=(rplcs.index(e.to_i)+1)*(11**i);
}
ans
end

sorted=nrs.sort{|a,b| nrVal(a)<=>nrVal(b)}
puts sorted
puts "47th element is #{sorted[47-1]}"

#def decNr m
#	@rplcs.index(m.to_i)
#end
#def encNr m
#	@rplcs[m.to_i]
#end
#
##puts nrs.to_s
#decoded=nrs.collect{|n| n.to_s.gsub(/[0-9]/){|m| decNr m}.to_i}
#decoded.sort!
#puts decoded.to_s
#encoded=decoded.collect{|n| n.to_s.gsub(/[0-9]/){|m| encNr m}.to_i}
#puts encoded[47-1]