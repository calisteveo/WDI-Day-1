class Shelter_animals

	attr_accessor :animal_name, :animal_age, :gender, :species, :toys

	def initialize(animal_name, animal_age, gender, species, toys = [])
	  @animal_name = animal_name
	  @animal_age = animal_age
	  @gender = gender
	  @species = species
	  @toys = toys
	end
	
	shelter_animals = Array.new

 	def new_animal
	  puts "Enter animal info:"
  	  print "Name:"; @animal_name = gets.chomp
  	  print "Age:"; @animal_age = gets.chomp
  	  print "Gender:"; @gender = gets.chomp
  	  print "Species:"; @species = gets.chomp
  	  print "Toys:"; @toys = gets.chomp
  	  shelter_animals[] << Shelter_animals.new(@animal_name, @animal_age,
  		@gender, @species, @toys = [])
  	  puts = "Added animal #{@animal_name}."
  	end

end
