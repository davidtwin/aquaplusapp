require 'test_helper'

class InvoicesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @invoice = invoices(:one)
  end

  test "should get index" do
    get invoices_url, as: :json
    assert_response :success
  end

  test "should create invoice" do
    assert_difference('Invoice.count') do
      post invoices_url, params: { invoice: { account_name: @invoice.account_name, customer_id: @invoice.customer_id, delivery_note: @invoice.delivery_note, delivery_note_id: @invoice.delivery_note_id, invoice_number: @invoice.invoice_number, total_gross: @invoice.total_gross, total_net: @invoice.total_net, vat: @invoice.vat } }, as: :json
    end

    assert_response 201
  end

  test "should show invoice" do
    get invoice_url(@invoice), as: :json
    assert_response :success
  end

  test "should update invoice" do
    patch invoice_url(@invoice), params: { invoice: { account_name: @invoice.account_name, customer_id: @invoice.customer_id, delivery_note: @invoice.delivery_note, delivery_note_id: @invoice.delivery_note_id, invoice_number: @invoice.invoice_number, total_gross: @invoice.total_gross, total_net: @invoice.total_net, vat: @invoice.vat } }, as: :json
    assert_response 200
  end

  test "should destroy invoice" do
    assert_difference('Invoice.count', -1) do
      delete invoice_url(@invoice), as: :json
    end

    assert_response 204
  end
end
