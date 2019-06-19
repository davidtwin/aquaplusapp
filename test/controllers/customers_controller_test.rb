require 'test_helper'

class CustomersControllerTest < ActionDispatch::IntegrationTest
  setup do
    @customer = customers(:one)
  end

  test "should get index" do
    get customers_url, as: :json
    assert_response :success
  end

  test "should create customer" do
    assert_difference('Customer.count') do
      post customers_url, params: { customer: { account_name: @customer.account_name, address1: @customer.address1, address2: @customer.address2, address3: @customer.address3, city: @customer.city, company_name: @customer.company_name, confirmation_code: @customer.confirmation_code, date_time_joined: @customer.date_time_joined, email_address: @customer.email_address, first_name: @customer.first_name, mobile_number: @customer.mobile_number, postcode: @customer.postcode, surname_name: @customer.surname_name, telephone_number: @customer.telephone_number } }, as: :json
    end

    assert_response 201
  end

  test "should show customer" do
    get customer_url(@customer), as: :json
    assert_response :success
  end

  test "should update customer" do
    patch customer_url(@customer), params: { customer: { account_name: @customer.account_name, address1: @customer.address1, address2: @customer.address2, address3: @customer.address3, city: @customer.city, company_name: @customer.company_name, confirmation_code: @customer.confirmation_code, date_time_joined: @customer.date_time_joined, email_address: @customer.email_address, first_name: @customer.first_name, mobile_number: @customer.mobile_number, postcode: @customer.postcode, surname_name: @customer.surname_name, telephone_number: @customer.telephone_number } }, as: :json
    assert_response 200
  end

  test "should destroy customer" do
    assert_difference('Customer.count', -1) do
      delete customer_url(@customer), as: :json
    end

    assert_response 204
  end
end
