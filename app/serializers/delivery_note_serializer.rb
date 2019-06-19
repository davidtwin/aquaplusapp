class DeliveryNoteSerializer < ActiveModel::Serializer
  attributes :id, :delivery_number, :item, :quantity, :purchase_order, :date_ordered, :date_due, :date_delivered, :time_delivered, :notes, :driver, :signature_strip, :payment
  has_one :water
  has_one :customer
end
