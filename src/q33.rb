inp=<<DOC
		24
	      64 58
             13 27 97
            46 23 73 29
           93 86 12 67 91
          14 3 16  7  3 24
        53 69 14 19 48 59 46
       14 79 55 38 69 44 16 19
      25 10 58 67 14 32 28 9  7
     2 74 65 83 27 16 22 77 59 10
DOC
map=<<MAP
                   00  
	         01  02  
	       03  04  05  
	     06  07  08  09  
           10  11  12  13  14  
         15  16  17  18  19  20  
       21  22  23  24  25  26  27  
     28  29  30  31  32  33  34  35  
   36  37  38  39  40  41  42  43  44  
 45  46  47  48  49  50  51  52  53  54
MAP
t=inp.scan(/[0-9]+/)

adjs=[]

for h in (1..9) do
	s=(1..h-1).to_a.reduce(0,:+)
	for x in 1..h
	adjs<<[s+x-1, s+x+h-1, t[s+x+h-1].to_i]
	adjs<<[s+x-1, s+x+h, t[s+x+h].to_i]
	#puts "[#{s+x-1},#{s+x+h-1},#{t[s+x+h-1]}],"
	#puts "[#{s+x-1},#{s+x+h},#{t[s+x+h]}],"
	end
end

puts adjs.collect{|x| "#{x[0]} #{x[1]} #{x[2]}" }#.gsub('],', "],\n")
gets

#src z q18.rb
#script source: 
#http://snippets.dzone.com/posts/show/7331
#needed to delete some lines in add_edge, because graph has to be directed
class Graph

	# Constructor

	def initialize
		@g = {}	 # the graph // {node => { edge1 => weight, edge2 => weight}, node2 => ...
		@nodes = Array.new		 
		@INFINITY = 1 << 64 	 
	end
		
	def add_edge(s,t,w) 		# s= source, t= target, w= weight
		if (not @g.has_key?(s))	 
			@g[s] = {t=>w}		 
		else
			@g[s][t] = w         
		end
		if (not @nodes.include?(s))	
			@nodes << s
		end
		if (not @nodes.include?(t))
			@nodes << t
		end	
	end
	
	# based of wikipedia's pseudocode: http://en.wikipedia.org/wiki/Dijkstra's_algorithm
	
	def dijkstra(s)
		@d = {}
		@prev = {}

		@nodes.each do |i|
			@d[i] = @INFINITY
			@prev[i] = -1
		end	

		@d[s] = 0
		q = @nodes.compact
		while (q.size > 0)
			u = nil;
			q.each do |min|
				if (not u) or (@d[min] and @d[min] < @d[u])
					u = min
				end
			end
			if (@d[u] == @INFINITY)
				break
			end
			q = q - [u]
			@g[u].keys.each do |v|
				alt = @d[u] + @g[u][v]
				if (alt < @d[v])
					@d[v] = alt
					@prev[v]  = u
				end
			end
		end
	end
	
	# To print the full shortest route to a node
	
	def print_path(dest)
		if @prev[dest] != -1
			print_path @prev[dest]
		end
		print ">#{dest}"
	end
	
	# Gets all shortests paths using dijkstra
	
	def shortest_paths(s)
		@source = s
		dijkstra s
		puts "Source: #{@source}"
		@nodes.each do |dest|
			puts "\nTarget: #{dest}"
			print_path dest
			if @d[dest] != @INFINITY
				puts "\nDistance: #{@d[dest]}"
			else
				puts "\nNO PATH"
			end
		end
	end
end

	gr = Graph.new
	adjs.each{|x| 
		gr.add_edge(x[0],x[1],x[2])
		#puts x.to_s
	}
#gets
	gr.shortest_paths(0)