class Api::V1::OffersController < ApplicationController

  def index
    @offers = Offer.all
    render :json => @offers.to_json(:include => [:tasks])
  end

end
