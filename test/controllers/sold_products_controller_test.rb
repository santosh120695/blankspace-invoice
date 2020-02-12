require 'test_helper'

class SoldProductsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @sold_product = sold_products(:one)
  end

  test "should get index" do
    get sold_products_url
    assert_response :success
  end

  test "should get new" do
    get new_sold_product_url
    assert_response :success
  end

  test "should create sold_product" do
    assert_difference('SoldProduct.count') do
      post sold_products_url, params: { sold_product: { invoice_id: @sold_product.invoice_id, product_id: @sold_product.product_id, sold_price: @sold_product.sold_price, sold_quantity: @sold_product.sold_quantity } }
    end

    assert_redirected_to sold_product_url(SoldProduct.last)
  end

  test "should show sold_product" do
    get sold_product_url(@sold_product)
    assert_response :success
  end

  test "should get edit" do
    get edit_sold_product_url(@sold_product)
    assert_response :success
  end

  test "should update sold_product" do
    patch sold_product_url(@sold_product), params: { sold_product: { invoice_id: @sold_product.invoice_id, product_id: @sold_product.product_id, sold_price: @sold_product.sold_price, sold_quantity: @sold_product.sold_quantity } }
    assert_redirected_to sold_product_url(@sold_product)
  end

  test "should destroy sold_product" do
    assert_difference('SoldProduct.count', -1) do
      delete sold_product_url(@sold_product)
    end

    assert_redirected_to sold_products_url
  end
end
