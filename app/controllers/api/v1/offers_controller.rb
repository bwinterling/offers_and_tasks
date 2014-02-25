class Api::V1::OffersController < ApplicationController

  def index
    @offers = Offer.where('expiration >= ?', DateTime.now)
    render json: @offers, root: false
  end

end
