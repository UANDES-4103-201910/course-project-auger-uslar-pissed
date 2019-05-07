require "application_system_test_case"

class AdminZonesTest < ApplicationSystemTestCase
  setup do
    @admin_zone = admin_zones(:one)
  end

  test "visiting the index" do
    visit admin_zones_url
    assert_selector "h1", text: "Admin Zones"
  end

  test "creating a Admin zone" do
    visit admin_zones_url
    click_on "New Admin Zone"

    fill_in "User", with: @admin_zone.user_id
    fill_in "Zone", with: @admin_zone.zone_id
    click_on "Create Admin zone"

    assert_text "Admin zone was successfully created"
    click_on "Back"
  end

  test "updating a Admin zone" do
    visit admin_zones_url
    click_on "Edit", match: :first

    fill_in "User", with: @admin_zone.user_id
    fill_in "Zone", with: @admin_zone.zone_id
    click_on "Update Admin zone"

    assert_text "Admin zone was successfully updated"
    click_on "Back"
  end

  test "destroying a Admin zone" do
    visit admin_zones_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Admin zone was successfully destroyed"
  end
end
