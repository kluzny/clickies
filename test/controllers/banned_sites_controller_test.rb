require 'test_helper'

class BannedSitesControllerTest < ActionController::TestCase
  setup do
    @banned_site = banned_sites(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:banned_sites)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create banned_site" do
    assert_difference('BannedSite.count') do
      post :create, banned_site: { banned_on: @banned_site.banned_on, domain: @banned_site.domain, reason: @banned_site.reason }
    end

    assert_redirected_to banned_site_path(assigns(:banned_site))
  end

  test "should show banned_site" do
    get :show, id: @banned_site
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @banned_site
    assert_response :success
  end

  test "should update banned_site" do
    patch :update, id: @banned_site, banned_site: { banned_on: @banned_site.banned_on, domain: @banned_site.domain, reason: @banned_site.reason }
    assert_redirected_to banned_site_path(assigns(:banned_site))
  end

  test "should destroy banned_site" do
    assert_difference('BannedSite.count', -1) do
      delete :destroy, id: @banned_site
    end

    assert_redirected_to banned_sites_path
  end
end
