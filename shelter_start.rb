#require 'pry'
require './shelter_clients'
require './shelter_animals'
require './shelter'

shelter = Shelter.new("Happi Tails", "82 Slobber Ln")

def menu 
  puts '1 : Adopt animal'
  puts '2 : Add client'
  puts '3 : Add animal'
  puts '4 : Show clients'
  puts '5 : Show available animals'
  puts "q : Quit\n\n"
  print '--> '
  res = gets.chomp
end
menu

while res != 'q' 
  if res == "1"  #Adopt animal        
  	puts "List of available animals:\n #{shelter_animals}" 
  	puts "Select client's new animal:"                      
  	requested_animal = gets.chomp          
  	shelter_animals.delete_if {|i| i == requested_animal}
  	puts "#{requested_animal} has been adopted."
  elsif res == "2"   #Add client
  	new_client
    shelter.shelter_clients << Shelter_clients.new(@cli_name, @cli_age, 
      @children, @num_pets)
  elsif res == "3"    #Add animal
  	new_animal
  	shelter.shelter_animals << Shelter_animals.new(@animal_name, @animal_age,
  		@gender, @species, @toys)
  	puts "Added animal #{shelter.shelter_animals.last.animal_name}"
  elsif res == "4"  #show clients
  	puts "List of Happi Tails clients:\n #{shelter_clients}"
  elsif res == "5"   #show available animals
  	puts "List of available animals:\n #{shelter_animals}"
  else
  	puts "I don't understand ..."
  end
end