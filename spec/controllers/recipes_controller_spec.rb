require 'rails_helper'

RSpec.describe RecipesController, type: :controller do
    describe "GET #index" do
        it "returns entire recipe list when meal type is not specified" do
            get :index
            expect(response).to have_http_status(:success)
            json_respone = JSON.parse(response.body)
            expect(json_respone.count).to equal(4)
        end

        it "returns restricted recipe list when meal type is specified" do
            get :index, {:params => {:meal_type => 'breakfast'}}
            expect(response).to have_http_status(:success)
            json_respone = JSON.parse(response.body)
            expect(json_respone.count).to equal(2)
        end

        it "returns error message when is passed as param" do
            get :index, {:params => {:meal_type => 'brunch'}}
            expect(response).to have_http_status(400)
            json_respone = JSON.parse(response.body)
            expect(json_respone['error']).to eq(I18n.t 'invalid_meal_type')
        end
    end
end
