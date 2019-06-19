class CreateCustomers < ActiveRecord::Migration[5.2]
  def change
    create_table :customers do |t|
      t.string :account_name
      t.string :company_name
      t.string :first_name
      t.string :surname_name
      t.string :address1
      t.string :address2
      t.string :address3
      t.string :city
      t.string :postcode
      t.string :telephone_number
      t.string :mobile_number
      t.string :email_address
      t.string :confirmation_code
      t.string :date_time_joined

      t.timestamps
    end
  end
end
