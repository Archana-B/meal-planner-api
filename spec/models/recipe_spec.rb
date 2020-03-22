require 'rails_helper'

RSpec.describe Recipe, type: :model do

    describe "validations" do
        it "accepts only valid meal types" do
            expect{ Recipe.new(name: 'new recipe', meal_type: 'brunch') }.to raise_error(ArgumentError)
        end
    end

    describe "fetch method" do
        it "should return all the recipes if meal type is blank" do
            recipes = Recipe.fetch('')
            expect(recipes.count).to equal(4)
        end

        it "should return specific recipes if meal type is mentioned" do
            recipes = Recipe.fetch('lunch')
            expect(recipes.count).to equal(1)
        end

        it "should raise error if wrong meal type is mentioned" do
            expect{ Recipe.fetch('brunch') }.to raise_error.with_message(I18n.t 'invalid_meal_type')
        end
    end 
end
