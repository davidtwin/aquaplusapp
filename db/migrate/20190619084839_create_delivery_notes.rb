class CreateDeliveryNotes < ActiveRecord::Migration[5.2]
  def change
    create_table :delivery_notes do |t|
      t.references :water, foreign_key: true
      t.references :customer, foreign_key: true
      t.string :delivery_number
      t.string :item
      t.string :quantity
      t.string :purchase_order
      t.string :date_ordered
      t.string :date_due
      t.string :date_delivered
      t.string :time_delivered
      t.string :notes
      t.string :driver
      t.string :signature_strip
      t.string :payment

      t.timestamps
    end
  end
end
