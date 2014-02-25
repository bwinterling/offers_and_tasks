class Api::V1::OffersController < ApplicationController

  def index
    @offers = Offer.where('expiration >= ?', DateTime.now)
    render :json => @offers.to_json(:include => [:tasks])
  end

end
