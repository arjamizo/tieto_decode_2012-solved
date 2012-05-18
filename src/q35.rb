#src: http://stackoverflow.com/questions/7101314/rotate-a-set-of-object-coordinates
Point = Struct.new(:x,:y) do
  def self.to_proc
    lambda{ |x| self.new *x }
  end

  def rotate( degrees, origin=Point.new(0,0) )
    radians = degrees * Math::PI/180
    x2 = x-origin.x; y2 = y-origin.y
    cos = Math.cos(radians); sin = Math.sin(radians)
    self.class.new(
      x2*cos - y2*sin + origin.x, 
      x2*sin + y2*cos + origin.y 
    )
  end

  def inspect
    "<%.1f,%.1f>" % [x,y]
  end
end

pt=Point.new(4,2)
i=0
repeat=1000000000000000007%4
for i in 1..repeat
pt=pt.rotate(90)
pt.x+=3
pt.y+=2
i+=1
puts "#{pt}, i=#{i}"
gets
end