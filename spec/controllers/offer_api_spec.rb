require 'spec_helper'

describe "Offers API" do
  describe "GET /api/v1/offers" do
    it "returns the offers" do
      FactoryGirl.create_list(:offer, 10)
      offer_count = Offer.all.length

      get "/api/v1/offers", {}, {"Accept" => "application/json"}

      expect(response.status).to eq 200

      body = JSON.parse(response.body)

      expect(body['offers'].length).to eq(offer_count) # verify the correct number of offers are returned.
    end

    it "returns the tasks for the offers"
  end
end
