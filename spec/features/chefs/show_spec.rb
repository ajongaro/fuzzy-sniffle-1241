require 'rails_helper'

RSpec.describe 'The Chef Show Page', type: :feature do
  let!(:chef1) { Chef.create!(name: "Antonio") }
  let!(:chef2) { Chef.create!(name: "Mario") }

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

  describe 'when I visit a chefs show page' do
    it 'shows the name of that chef' do
      visit chef_path(chef1)  

      expect(page).to have_content(chef1.name)
      expect(page).to_not have_content(chef2.name)
    end
    
    it 'shows the name of that chef' do
      visit chef_path(chef1)  

      within("#dishes") do
        expect(page).to have_content(dish1.name)
        expect(page).to have_content(dish2.name)
        expect(page).to have_content(dish3.name)
      end
    end

    it 'has a form to add an existing dish to that chef' do
      visit chef_path(chef1)  

      within("#dishes") do
        expect(page).to have_content(dish1.name)
        expect(page).to have_content(dish2.name)
        expect(page).to have_content(dish3.name)
        expect(page).to_not have_content(dish4.name)
      end

      within("#add-dish") do
        expect(page).to have_field("Dish")
        fill_in("Dish", with: dish4.id )
        click_button("Add Dish")
      end

      expect(current_path).to eq(chef_path(chef1))

      within("#dishes") do
        expect(page).to have_content(dish1.name)
        expect(page).to have_content(dish2.name)
        expect(page).to have_content(dish3.name)
        expect(page).to have_content(dish4.name)
      end
    end

    it 'has a link to view a list of all ingredients that this chef uses' do
      visit chef_path(chef1)  

      expect(page).to have_link("All Ingredients")
      click_link("All Ingredients")
      expect(current_path).to eq(chef_ingredients_path(chef1))
    end
  end
end