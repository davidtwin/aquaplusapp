class CustomerSerializer < ActiveModel::Serializer
  attributes :id, :account_name, :company_name, :first_name, :surname_name, :address1, :address2, :address3, :city, :postcode, :telephone_number, :mobile_number, :email_address, :confirmation_code, :date_time_joined
end
