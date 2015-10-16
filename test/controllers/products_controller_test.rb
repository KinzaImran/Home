require 'test_helper'

class ProductsControllerTest < ActionController::TestCase
  setup do
    @product = products(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:products)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create product" do
    assert_difference('Product.count') do
      post :create, product: { category_id: @product.category_id, closing_date: @product.closing_date, description: @product.description, initial_price: @product.initial_price, opening_date: @product.opening_date, product_name: @product.product_name, selling_price: @product.selling_price, subcategory_id: @product.subcategory_id }
    end

    assert_redirected_to product_path(assigns(:product))
  end

  test "should show product" do
    get :show, id: @product
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @product
    assert_response :success
  end

  test "should update product" do
    patch :update, id: @product, product: { category_id: @product.category_id, closing_date: @product.closing_date, description: @product.description, initial_price: @product.initial_price, opening_date: @product.opening_date, product_name: @product.product_name, selling_price: @product.selling_price, subcategory_id: @product.subcategory_id }
    assert_redirected_to product_path(assigns(:product))
  end

  test "should destroy product" do
    assert_difference('Product.count', -1) do
      delete :destroy, id: @product
    end

    assert_redirected_to products_path
  end
end