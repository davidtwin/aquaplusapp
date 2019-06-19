class CreateInvoices < ActiveRecord::Migration[5.2]
  def change
    create_table :invoices do |t|
      t.references :customer, foreign_key: true
      t.references :delivery_note, foreign_key: true
      t.string :invoice_number
      t.string :delivery_note
      t.string :account_name
      t.string :total_net
      t.string :vat
      t.string :total_gross

      t.timestamps
    end
  end
end
