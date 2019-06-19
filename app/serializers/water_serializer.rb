class WaterSerializer < ActiveModel::Serializer
  attributes :id, :address1, :address2, :address3, :city, :postcode, :day
  has_one :customer
end
