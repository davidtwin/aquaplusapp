class DeliveryNote < ApplicationRecord
  belongs_to :water
  belongs_to :customer
end
