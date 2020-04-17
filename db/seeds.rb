# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
# 9.times do |i|
#   Recipy.create(
#       name: "Recipe #{i + 1}",
#       ingredients: '227g tub clotted cream, 25g butter, 1 tsp cornflour,100g parmesan, grated nutmeg, 250g fresh fettuccine or tagliatelle, snipped chives or chopped parsley to serve (optional)',
#       instruction: 'In a medium saucepan, stir the clotted cream, butter, and cornflour over a low-ish heat and bring to a low simmer. Turn off the heat and keep warm.'
#   )
# end
#
#

require 'rest-client'

def get_ingredients(array)
  str = ""
  array.each { |ingredient|
    str += ingredient + ', '
  }
  return str
end


url = "https://api.edamam.com/search?q=chicken&app_id=5450b050&app_key=ac2e72385e7797261036b103e523fbd6&from=0&to=15";
recipes = RestClient.get(url)
recipe_array = JSON.parse(recipes)['hits']

recipe_array.each do |recipe_obj|
  recipe = recipe_obj['recipe']
  Recipy.create(
      name: recipe['label'],
      ingredients: get_ingredients(recipe['ingredientLines']),
      instruction: recipe['url'],
      image: recipe['image'],
      calories: recipe['calories']
  )
end

