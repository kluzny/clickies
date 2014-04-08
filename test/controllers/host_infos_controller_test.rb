require 'test_helper'

class HostInfosControllerTest < ActionController::TestCase
  setup do
    @host_info = host_infos(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:host_infos)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create host_info" do
    assert_difference('HostInfo.count') do
      post :create, host_info: { blacklisted: @host_info.blacklisted, blacklisted_on: @host_info.blacklisted_on, checked_at: @host_info.checked_at, clicky_id: @host_info.clicky_id, domain: @host_info.domain, ip: @host_info.ip, ping: @host_info.ping, status: @host_info.status }
    end

    assert_redirected_to host_info_path(assigns(:host_info))
  end

  test "should show host_info" do
    get :show, id: @host_info
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @host_info
    assert_response :success
  end

  test "should update host_info" do
    patch :update, id: @host_info, host_info: { blacklisted: @host_info.blacklisted, blacklisted_on: @host_info.blacklisted_on, checked_at: @host_info.checked_at, clicky_id: @host_info.clicky_id, domain: @host_info.domain, ip: @host_info.ip, ping: @host_info.ping, status: @host_info.status }
    assert_redirected_to host_info_path(assigns(:host_info))
  end

  test "should destroy host_info" do
    assert_difference('HostInfo.count', -1) do
      delete :destroy, id: @host_info
    end

    assert_redirected_to host_infos_path
  end
end
