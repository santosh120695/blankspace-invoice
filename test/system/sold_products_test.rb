require "application_system_test_case"

class SoldProductsTest < ApplicationSystemTestCase
  setup do
    @sold_product = sold_products(:one)
  end

  test "visiting the index" do
    visit sold_products_url
    assert_selector "h1", text: "Sold Products"
  end

  test "creating a Sold product" do
    visit sold_products_url
    click_on "New Sold Product"

    fill_in "Invoice", with: @sold_product.invoice_id
    fill_in "Product", with: @sold_product.product_id
    fill_in "Sold price", with: @sold_product.sold_price
    fill_in "Sold quantity", with: @sold_product.sold_quantity
    click_on "Create Sold product"

    assert_text "Sold product was successfully created"
    click_on "Back"
  end

  test "updating a Sold product" do
    visit sold_products_url
    click_on "Edit", match: :first

    fill_in "Invoice", with: @sold_product.invoice_id
    fill_in "Product", with: @sold_product.product_id
    fill_in "Sold price", with: @sold_product.sold_price
    fill_in "Sold quantity", with: @sold_product.sold_quantity
    click_on "Update Sold product"

    assert_text "Sold product was successfully updated"
    click_on "Back"
  end

  test "destroying a Sold product" do
    visit sold_products_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Sold product was successfully destroyed"
  end
end
