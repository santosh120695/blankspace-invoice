require 'test_helper'

class AddStocksControllerTest < ActionDispatch::IntegrationTest
  setup do
    @add_stock = add_stocks(:one)
  end

  test "should get index" do
    get add_stocks_url
    assert_response :success
  end

  test "should get new" do
    get new_add_stock_url
    assert_response :success
  end

  test "should create add_stock" do
    assert_difference('AddStock.count') do
      post add_stocks_url, params: { add_stock: { product_id: @add_stock.product_id, quantity: @add_stock.quantity } }
    end

    assert_redirected_to add_stock_url(AddStock.last)
  end

  test "should show add_stock" do
    get add_stock_url(@add_stock)
    assert_response :success
  end

  test "should get edit" do
    get edit_add_stock_url(@add_stock)
    assert_response :success
  end

  test "should update add_stock" do
    patch add_stock_url(@add_stock), params: { add_stock: { product_id: @add_stock.product_id, quantity: @add_stock.quantity } }
    assert_redirected_to add_stock_url(@add_stock)
  end

  test "should destroy add_stock" do
    assert_difference('AddStock.count', -1) do
      delete add_stock_url(@add_stock)
    end

    assert_redirected_to add_stocks_url
  end
end
