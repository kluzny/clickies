require 'test_helper'

class ClickiesControllerTest < ActionController::TestCase
  setup do
    @clicky = clickies(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:clickies)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create clicky" do
    assert_difference('Clicky.count') do
      post :create, clicky: { banned_site_id: @clicky.banned_site_id, clicky_id: @clicky.clicky_id, page_info_id: @clicky.page_info_id, url: @clicky.url }
    end

    assert_redirected_to clicky_path(assigns(:clicky))
  end

  test "should show clicky" do
    get :show, id: @clicky
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @clicky
    assert_response :success
  end

  test "should update clicky" do
    patch :update, id: @clicky, clicky: { banned_site_id: @clicky.banned_site_id, clicky_id: @clicky.clicky_id, page_info_id: @clicky.page_info_id, url: @clicky.url }
    assert_redirected_to clicky_path(assigns(:clicky))
  end

  test "should destroy clicky" do
    assert_difference('Clicky.count', -1) do
      delete :destroy, id: @clicky
    end

    assert_redirected_to clickies_path
  end
end
