require 'rails_helper'

RSpec.describe HealthController, type: :controller do
    it "returns health end point message" do
        get :info
        expect(response).to have_http_status(:success)
        json_respone = JSON.parse(response.body)
        expect(json_respone['message']).to eq("Application is up and running")
    end
end
