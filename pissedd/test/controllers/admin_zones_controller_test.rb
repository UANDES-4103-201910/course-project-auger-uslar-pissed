require 'test_helper'

class AdminZonesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @admin_zone = admin_zones(:one)
  end

  test "should get index" do
    get admin_zones_url
    assert_response :success
  end

  test "should get new" do
    get new_admin_zone_url
    assert_response :success
  end

  test "should create admin_zone" do
    assert_difference('AdminZone.count') do
      post admin_zones_url, params: { admin_zone: { user_id: @admin_zone.user_id, zone_id: @admin_zone.zone_id } }
    end

    assert_redirected_to admin_zone_url(AdminZone.last)
  end

  test "should show admin_zone" do
    get admin_zone_url(@admin_zone)
    assert_response :success
  end

  test "should get edit" do
    get edit_admin_zone_url(@admin_zone)
    assert_response :success
  end

  test "should update admin_zone" do
    patch admin_zone_url(@admin_zone), params: { admin_zone: { user_id: @admin_zone.user_id, zone_id: @admin_zone.zone_id } }
    assert_redirected_to admin_zone_url(@admin_zone)
  end

  test "should destroy admin_zone" do
    assert_difference('AdminZone.count', -1) do
      delete admin_zone_url(@admin_zone)
    end

    assert_redirected_to admin_zones_url
  end
end
