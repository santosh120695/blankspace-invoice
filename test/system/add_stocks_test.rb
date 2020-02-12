require "application_system_test_case"

class AddStocksTest < ApplicationSystemTestCase
  setup do
    @add_stock = add_stocks(:one)
  end

  test "visiting the index" do
    visit add_stocks_url
    assert_selector "h1", text: "Add Stocks"
  end

  test "creating a Add stock" do
    visit add_stocks_url
    click_on "New Add Stock"

    fill_in "Product", with: @add_stock.product_id
    fill_in "Quantity", with: @add_stock.quantity
    click_on "Create Add stock"

    assert_text "Add stock was successfully created"
    click_on "Back"
  end

  test "updating a Add stock" do
    visit add_stocks_url
    click_on "Edit", match: :first

    fill_in "Product", with: @add_stock.product_id
    fill_in "Quantity", with: @add_stock.quantity
    click_on "Update Add stock"

    assert_text "Add stock was successfully updated"
    click_on "Back"
  end

  test "destroying a Add stock" do
    visit add_stocks_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Add stock was successfully destroyed"
  end
end
