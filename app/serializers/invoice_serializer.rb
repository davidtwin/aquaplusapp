class InvoiceSerializer < ActiveModel::Serializer
  attributes :id, :invoice_number, :delivery_note, :account_name, :total_net, :vat, :total_gross
  has_one :customer
  has_one :delivery_note
end
