require "application_system_test_case"

class VapeProductsTest < ApplicationSystemTestCase
  setup do
    @vape_product = vape_products(:one)
  end

  test "visiting the index" do
    visit vape_products_url
    assert_selector "h1", text: "Vape products"
  end

  test "should create vape product" do
    visit vape_products_url
    click_on "New vape product"

    fill_in "Category", with: @vape_product.category
    fill_in "Desc", with: @vape_product.desc
    fill_in "Name", with: @vape_product.name
    fill_in "Price", with: @vape_product.price
    click_on "Create Vape product"

    assert_text "Vape product was successfully created"
    click_on "Back"
  end

  test "should update Vape product" do
    visit vape_product_url(@vape_product)
    click_on "Edit this vape product", match: :first

    fill_in "Category", with: @vape_product.category
    fill_in "Desc", with: @vape_product.desc
    fill_in "Name", with: @vape_product.name
    fill_in "Price", with: @vape_product.price
    click_on "Update Vape product"

    assert_text "Vape product was successfully updated"
    click_on "Back"
  end

  test "should destroy Vape product" do
    visit vape_product_url(@vape_product)
    click_on "Destroy this vape product", match: :first

    assert_text "Vape product was successfully destroyed"
  end
end
