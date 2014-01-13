class Shelter_clients

	attr_accessor :cli_name, :cli_age, :children, :num_pets

	def initialize(cli_name, cli_age, num_pets, children = [])
		@cli_name = cli_name
		@cli_age = cli_age
		@children = children
		@num_pets = num_pets
	end

	shelter_clients = Array.new

	def new_client
	  puts "Enter client info:"
  	  print "name:"; @cli_name = gets.chomp
  	  print "age:"; @cli_age = gets.chomp
  	  print "# of children:"; @children = gets.chomp
  	  print "# of pets:"; @num_pets = gets.chomp
  	  shelter_clients[] << Shelter_clients.new[@cli_name, @cli_age, @children,
  	    @num_pets]
  	  puts "Added client: #{@cli_name}."
  	end

end


