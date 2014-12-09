require 'test_helper'

class NeightborhoodsControllerTest < ActionController::TestCase
  setup do
    @neightborhood = neightborhoods(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:neightborhoods)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create neightborhood" do
    assert_difference('Neightborhood.count') do
      post :create, neightborhood: { city_id: @neightborhood.city_id, name: @neightborhood.name }
    end

    assert_redirected_to neightborhood_path(assigns(:neightborhood))
  end

  test "should show neightborhood" do
    get :show, id: @neightborhood
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @neightborhood
    assert_response :success
  end

  test "should update neightborhood" do
    patch :update, id: @neightborhood, neightborhood: { city_id: @neightborhood.city_id, name: @neightborhood.name }
    assert_redirected_to neightborhood_path(assigns(:neightborhood))
  end

  test "should destroy neightborhood" do
    assert_difference('Neightborhood.count', -1) do
      delete :destroy, id: @neightborhood
    end

    assert_redirected_to neightborhoods_path
  end
end
