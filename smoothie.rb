# Write a function called blend.
# It should take all the smoothie ingredients (not the measurements) and chop up and mix all the characters
# and output a mixed string of characters
# Be sure to remove the spaces, as we don't want any air bubbles in our smoothie!

smoothie_ingredients = {
  'flax seeds' => '1 tbsp',
  'chia seeds' => '1 tbsp',
  'coconut flakes' => '1 tbsp',
  'spirulina' => '1 tsp',
  'pumpkin seeds' => '1 tbsp',
  'oatmeal' => '1/4 cup',
  'coco powder' => '1 tbsp',
  'peanut butter' => '1 tbsp',
  'almonds' => '1/4 cup',
  'walnuts' => '1/4 cup',
  'spinach' => '1/4 cup',
  'greek yogurt' => '1/4 cup',
  'nutrional yeast' => '1 tbsp',
  'brussel sprouts' => '1/4 cup',
  'asparagus' => '1/4 cup',
  'kale' => '1/4 cup',
  'brocoli rabe' => '1/4 cup',
  'blue berries' => '1/4 cup',
  'chopped banana' => '1/2 cup',
  'straw berries' => '1/4 cup',
  'mango' => '1/4 cup',
  'hemp milk' => '1 cup'
}

def blend(smoothie_ingredients)
  ingredients = smoothie_ingredients.keys
  combined_ingredients = ""
  ingredients.each { |ingredient| combined_ingredients += ingredient}
  ingredient_array = combined_ingredients.chars 
  ingredient_array.delete(" ")
  ingredient_array.shuffle!
  puts ingredient_array.join
end

blend(smoothie_ingredients)

# create a class called Blender
# It should have a method that takes an array of ingredients and returns a mixed string of characters.
# Give the blender an on and off switch and only allow the blender to function when it's on.
# FOR SAFETY'S SAKE When you create a new blender by default it should be off.
# Blend the the smoothie array
on_off = {
	"question" => "Would you like to blend? Y/N?",
	"N" => "Blender off.",
	"Y" => "Commencing blending."
}

class Blender
  
  def initialize(on_off)
    @on_off = on_off
  end

  def prompt(question, options)
  	puts question
  	puts "#{options}"
  	res = gets.chomp
  end

  def prompt_n_chomp(question, options)
   	res = prompt(question, options)

    until res.include?("Y")
      puts "Blender off."
      res = prompt(question, options)
    end
    res
  end

  def get_options(curr_blend_stats)
    curr_blend_stats.keys.select { |x| x != "question"}
  end

  def blend(smoothie_ingredients)
    ingredients = @smoothie_ingredients.keys
    combined_ingredients = ""
    ingredients.each { |ingredient| combined_ingredients += ingredient}
    ingredient_array = combined_ingredients.chars 
    ingredient_array.delete(" ")
    ingredient_array.shuffle!
    puts ingredient_array.join
  end
end

my_blender = Blender.new
my_blender.blend(smoothie_ingredients)