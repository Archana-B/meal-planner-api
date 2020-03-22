class Recipe < ApplicationRecord
    has_and_belongs_to_many :ingredients

    enum meal_type: [:breakfast, :lunch, :dinner]

    validates :meal_type, inclusion: { in: meal_types.keys }

    def self.fetch(required_meal_type)
        if required_meal_type.blank?
            Recipe.all
        else
            raise StandardError.new I18n.t 'invalid_meal_type' unless meal_types.keys.include?(required_meal_type)
            Recipe.where(meal_type: required_meal_type)
        end
    end
end
