puts "Enter a sentence to reverse."

str = gets.chomp

for i in 0..(s.length/2-1)
	temp = s[i]
	s[i] = s[-i-1]
	s[-i-1] = temp
end

puts s