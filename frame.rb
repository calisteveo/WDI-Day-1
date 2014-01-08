puts "Give me a sentence."
phrase = gets.chomp.split

arr = phrase.map {|x| x.length}
arr_max = arr.max {|x,y| x <=> y}
puts "**"+"*"*arr_max + "**"

phrase.each do |x|
	if x.length < arr_max
		puts "* " + x + " "*(arr_max-x.length)+ " *"
	else puts "* " + x + " *"
	end
end

puts "**"+"*"*arr_max + "**"