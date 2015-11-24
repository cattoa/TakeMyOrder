require 'test_helper'

class WaitronsControllerTest < ActionController::TestCase
  setup do
    @waitron = waitrons(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:waitrons)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create waitron" do
    assert_difference('Waitron.count') do
      post :create, waitron: { logon: @waitron.logon, mobile: @waitron.mobile, name: @waitron.name, surname: @waitron.surname }
    end

    assert_redirected_to waitron_path(assigns(:waitron))
  end

  test "should show waitron" do
    get :show, id: @waitron
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @waitron
    assert_response :success
  end

  test "should update waitron" do
    patch :update, id: @waitron, waitron: { logon: @waitron.logon, mobile: @waitron.mobile, name: @waitron.name, surname: @waitron.surname }
    assert_redirected_to waitron_path(assigns(:waitron))
  end

  test "should destroy waitron" do
    assert_difference('Waitron.count', -1) do
      delete :destroy, id: @waitron
    end

    assert_redirected_to waitrons_path
  end
end
