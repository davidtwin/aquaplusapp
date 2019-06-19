class CreateProducts < ActiveRecord::Migration[5.2]
  def change
    create_table :products do |t|
      t.string :product_account_number
      t.string :product_type
      t.string :price
      t.string :deposit
      t.string :nominal_code

      t.timestamps
    end
  end
end
