class OfferSerializer < ActiveModel::Serializer
  attributes :id, :description, :pp_exp, :image_url, :name, :terms
  has_many :tasks

  def pp_exp
    "Expires on #{exp_day} at #{exp_time}."
  end

  def exp_day
    object.expiration.strftime("%Y-%d-%m")
  end

  def exp_time
    object.expiration.strftime("%l:%M %p")
  end

end
