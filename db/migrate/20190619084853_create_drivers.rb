class CreateDrivers < ActiveRecord::Migration[5.2]
  def change
    create_table :drivers do |t|
      t.references :delivery_notes, foreign_key: true
      t.string :driver_account_number
      t.string :driver_name
      t.string :reg_number

      t.timestamps
    end
  end
end
