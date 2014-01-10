# Create a Person class. A person will have a stomach and allergies
# Create a method that allows the person to eat and add arrays of food to their stomachs
# If a food array contains a known allergy reject the food.

# require 'pry'

class Person

attr_accessor :allergies, :name

  def initialize(stomach, allergies, name)
  	@stomach = stomach
  	@allergies = allergies
  	@name = name
  end

  food = { "pizza" => ["cheese", "gluten", "tomatoes"], 
           "pan_seared_scallops" => ["scallops", "lemons", "pasta", "olive oil"],
           "water" => ["h", "h", "o"] }

  def eat(food)
    food.each_value {|value| puts value}
    #stomach_contents = ""
    #food_items = ingredients.join(",")
    #stomach_contents = ""
    #food_items.each { |food_items| stomach_contents << food_items}
    #puts stomach_contents
  end
  eat(food) 

end

 person1 = Person.new("@stomach", "gluten", "Chris")

#   person2 = Person.new("@stomach", "scallops", "Beth")

class AllergyAlert < Allergen; end 

  def upchuck()
    if Chris.stomach_contents.include?="gluten"
      stomach_contents == nil
    end
  end

begin  
  raise AllergyAlert.new("Something was eaten that shouldn't have been!")
rescue AllergyAlert => x
  puts "BARF! #{x}"     
end

# Create a Person named Chris. Chris is allergic to gluten.
# Create a Person named Beth. Beth is allergic to scallops.
# Feed them the following foods
 

 
# When a person attempts to eat a food they are allergic to, raise a custom exception
# For example:  AllergyError
 
 
# Bonus: When a person attempts to eat a food they are allergic to,
#        ... remove ALL the food from the person's stomach before raising the exception