require 'spec_helper'

describe "Offers API" do
  describe "GET /api/v1/offers" do
    it "returns the offers" do
      FactoryGirl.create_list(:offer, 10)

      get "/api/v1/offers", {}, {"Accept" => "application/json"}
      # verify response succesful
      expect(response.status).to eq 200
      body = JSON.parse(response.body)
      # verify the correct number of offers are returned.
      offer_count = Offer.all.length
      expect(body.length).to eq(offer_count)
    end

    it "returns the tasks for the offers" do
      FactoryGirl.create_list(:offer, 10)

      get "/api/v1/offers", {}, {"Accept" => "application/json"}
      # verify response succesful
      expect(response.status).to eq 200
      body = JSON.parse(response.body)
      # verify an array of tasks are returned
      body.each do |offer|
        expect(offer['tasks']).to be_kind_of(Array)
      end
    end
  end
end
