require 'test_helper'

class MenuItemOptionsControllerTest < ActionController::TestCase
  setup do
    @menu_item_option = menu_item_options(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:menu_item_options)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create menu_item_option" do
    assert_difference('MenuItemOption.count') do
      post :create, menu_item_option: { code: @menu_item_option.code, description: @menu_item_option.description, name: @menu_item_option.name }
    end

    assert_redirected_to menu_item_option_path(assigns(:menu_item_option))
  end

  test "should show menu_item_option" do
    get :show, id: @menu_item_option
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @menu_item_option
    assert_response :success
  end

  test "should update menu_item_option" do
    patch :update, id: @menu_item_option, menu_item_option: { code: @menu_item_option.code, description: @menu_item_option.description, name: @menu_item_option.name }
    assert_redirected_to menu_item_option_path(assigns(:menu_item_option))
  end

  test "should destroy menu_item_option" do
    assert_difference('MenuItemOption.count', -1) do
      delete :destroy, id: @menu_item_option
    end

    assert_redirected_to menu_item_options_path
  end
end
