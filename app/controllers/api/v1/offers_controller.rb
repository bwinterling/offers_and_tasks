class Api::V1::OffersController < ApplicationController

  def index
    @offers = Offer.where('expiration >= ?', DateTime.now)
    # render :json => @offers.to_json(:include => [:tasks])
    render json: @offers, root: false
  end

end
