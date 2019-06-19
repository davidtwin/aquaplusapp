require 'test_helper'

class WatersControllerTest < ActionDispatch::IntegrationTest
  setup do
    @water = waters(:one)
  end

  test "should get index" do
    get waters_url, as: :json
    assert_response :success
  end

  test "should create water" do
    assert_difference('Water.count') do
      post waters_url, params: { water: { address1: @water.address1, address2: @water.address2, address3: @water.address3, city: @water.city, customer_id: @water.customer_id, day: @water.day, postcode: @water.postcode } }, as: :json
    end

    assert_response 201
  end

  test "should show water" do
    get water_url(@water), as: :json
    assert_response :success
  end

  test "should update water" do
    patch water_url(@water), params: { water: { address1: @water.address1, address2: @water.address2, address3: @water.address3, city: @water.city, customer_id: @water.customer_id, day: @water.day, postcode: @water.postcode } }, as: :json
    assert_response 200
  end

  test "should destroy water" do
    assert_difference('Water.count', -1) do
      delete water_url(@water), as: :json
    end

    assert_response 204
  end
end
