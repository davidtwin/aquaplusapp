class CreateWaters < ActiveRecord::Migration[5.2]
  def change
    create_table :waters do |t|
      t.references :customer, foreign_key: true
      t.string :address1
      t.string :address2
      t.string :address3
      t.string :city
      t.string :postcode
      t.string :day

      t.timestamps
    end
  end
end
