require './shelter_clients'
require './shelter_animals'


class Shelter

	attr_accessor :name, :address

	def initailize(name, address)
		name = name
		address = address
	end

	def display_client
	  shelter_clients.each do |c|
	  	print "#{c} "
	end

	def display_animals
	  shelter_animals.each do |a|
	    print "#{a} "
	end

end