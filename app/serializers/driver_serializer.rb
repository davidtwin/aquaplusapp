class DriverSerializer < ActiveModel::Serializer
  attributes :id, :driver_account_number, :driver_name, :reg_number
  has_one :delivery_notes
end
