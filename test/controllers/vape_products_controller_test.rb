require "test_helper"

class VapeProductsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @vape_product = vape_products(:one)
  end

  test "should get index" do
    get vape_products_url
    assert_response :success
  end

  test "should get new" do
    get new_vape_product_url
    assert_response :success
  end

  test "should create vape_product" do
    assert_difference("VapeProduct.count") do
      post vape_products_url, params: { vape_product: { category: @vape_product.category, desc: @vape_product.desc, name: @vape_product.name, price: @vape_product.price } }
    end

    assert_redirected_to vape_product_url(VapeProduct.last)
  end

  test "should show vape_product" do
    get vape_product_url(@vape_product)
    assert_response :success
  end

  test "should get edit" do
    get edit_vape_product_url(@vape_product)
    assert_response :success
  end

  test "should update vape_product" do
    patch vape_product_url(@vape_product), params: { vape_product: { category: @vape_product.category, desc: @vape_product.desc, name: @vape_product.name, price: @vape_product.price } }
    assert_redirected_to vape_product_url(@vape_product)
  end

  test "should destroy vape_product" do
    assert_difference("VapeProduct.count", -1) do
      delete vape_product_url(@vape_product)
    end

    assert_redirected_to vape_products_url
  end
end
