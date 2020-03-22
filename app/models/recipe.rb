class Recipe < ApplicationRecord
    has_and_belongs_to_many :ingredients

    enum meal_type: [:breakfast, :lunch, :dinner]
end
