require 'rails_helper'

RSpec.describe "Flights", type: :request do
    describe "GET /index" do
        it "get success for valid params" do
            get "/flights?source=Pune&destination=Delhi&travel_date=15-03-2024"
            expect(response.status).to eq(200)
        end
    end
end