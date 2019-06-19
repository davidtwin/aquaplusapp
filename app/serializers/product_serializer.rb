class ProductSerializer < ActiveModel::Serializer
  attributes :id, :product_account_number, :product_type, :price, :deposit, :nominal_code
end
