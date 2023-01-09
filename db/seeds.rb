# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

  chef1 = Chef.create!(name: "Antonio")
  chef2 = Chef.create!(name: "Mario")
  dish1 = Dish.create!(name: "Pasta", description: "Very tasty", chef: chef1)
  dish2 = Dish.create!(name: "Fettuccini", description: "Yum", chef: chef1)
  dish3 = Dish.create!(name: "Meatballs", description: "Yum Yum!", chef: chef1)
  dish4 = Dish.create!(name: "Pizza", description: "Yummmy", chef: chef2)
  dish5 = Dish.create!(name: "Garlic Bread", description: "Delicious.", chef: chef2)
  ingredient1 = Ingredient.create!(name: "Tomato", calories: 100 )
  ingredient2 = Ingredient.create!(name: "Flour", calories: 200 )
  ingredient3 = Ingredient.create!(name: "Pork", calories: 600 )
  ingredient4 = Ingredient.create!(name: "Basil", calories: 400 )
  ingredient5 = Ingredient.create!(name: "Water", calories: 0 )
  dish_ingredient1 = DishIngredient.create!(dish: dish1, ingredient: ingredient1)
  dish_ingredient2 = DishIngredient.create!(dish: dish1, ingredient: ingredient2)
  dish_ingredient3 = DishIngredient.create!(dish: dish2, ingredient: ingredient3)
  dish_ingredient4 = DishIngredient.create!(dish: dish2, ingredient: ingredient4)
  dish_ingredient5 = DishIngredient.create!(dish: dish3, ingredient: ingredient5)
  dish_ingredient6 = DishIngredient.create!(dish: dish3, ingredient: ingredient1)
  dish_ingredient7 = DishIngredient.create!(dish: dish4, ingredient: ingredient2)
  dish_ingredient8 = DishIngredient.create!(dish: dish4, ingredient: ingredient3)
  dish_ingredient9 = DishIngredient.create!(dish: dish5, ingredient: ingredient4)
  dish_ingredient10 = DishIngredient.create!(dish: dish5, ingredient: ingredient5)
