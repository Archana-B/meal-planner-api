ingredient_list = [
    "Urad dhal",
    "Peanuts",
    "Toor dhal",
    "Rice",
    "Tomato",
    "Onion",
    "Wheat"
]

ingredient_list.each do |name|
    Ingredient.create(name: name)
end

Recipe.create(name: "Idly", meal_type: "breakfast", ingredient_ids: [1, 4])
Recipe.create(name: "Peanut Chutney", meal_type: "breakfast", ingredient_ids: [2])
Recipe.create(name: "Tomato Rice", meal_type: "lunch", ingredient_ids: [4, 5, 6])
Recipe.create(name: "Roti", meal_type: "dinner", ingredient_ids: [7])
