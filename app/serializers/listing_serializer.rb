class ListingSerializer < ActiveModel::Serializer


  attributes :listing_id,:location,:jignesh


  def jignesh
    "Custom key with something - #{object.location}"
  end

  # def dollar
  #   #number_to_currency(object.listing_id)

  #   object.listing_id
  # end
end
