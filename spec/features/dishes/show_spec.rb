require 'rails_helper'

RSpec.describe "The Dish Show page", type: :feature do
  let!(:chef1) { Chef.create!(name: "Antonio") }
  let!(:chef2) { Chef.create!(name: "Antonio") }

  let!(:dish1) { Dish.create!(name: "Pasta", description: "Very tasty", chef: chef1) }
  let!(:dish2) { Dish.create!(name: "Fettuccini", description: "Yum", chef: chef1) }
  let!(:dish3) { Dish.create!(name: "Meatballs", description: "Yum Yum!", chef: chef1) }
  let!(:dish4) { Dish.create!(name: "Pizza", description: "Yummmy", chef: chef2) }
  let!(:dish5) { Dish.create!(name: "Garlic Bread", description: "Delicious.", chef: chef2) }

  let!(:ingredient1) { Ingredient.create!(name: "Tomato", calories: 100 ) }
  let!(:ingredient2) { Ingredient.create!(name: "Flour", calories: 200 ) }
  let!(:ingredient3) { Ingredient.create!(name: "Pork", calories: 600 ) }
  let!(:ingredient4) { Ingredient.create!(name: "Basil", calories: 400 ) }
  let!(:ingredient5) { Ingredient.create!(name: "Water", calories: 0 ) }

  let!(:dish_ingredient1) { DishIngredient.create!(dish: dish1, ingredient: ingredient1) }
  let!(:dish_ingredient2) { DishIngredient.create!(dish: dish1, ingredient: ingredient2) }
  let!(:dish_ingredient3) { DishIngredient.create!(dish: dish2, ingredient: ingredient3) }
  let!(:dish_ingredient4) { DishIngredient.create!(dish: dish2, ingredient: ingredient4) }
  let!(:dish_ingredient5) { DishIngredient.create!(dish: dish3, ingredient: ingredient5) }
  let!(:dish_ingredient6) { DishIngredient.create!(dish: dish3, ingredient: ingredient1) }
  let!(:dish_ingredient7) { DishIngredient.create!(dish: dish4, ingredient: ingredient2) }
  let!(:dish_ingredient8) { DishIngredient.create!(dish: dish4, ingredient: ingredient3) }
  let!(:dish_ingredient9) { DishIngredient.create!(dish: dish5, ingredient: ingredient4) }
  let!(:dish_ingredient10) { DishIngredient.create!(dish: dish5, ingredient: ingredient5) }

  describe 'when I visit the dishs show page' do
    it 'shows a dish name and description' do
      
    end
  end
end