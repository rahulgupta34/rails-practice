require "application_system_test_case"

class Admin::AdminsTest < ApplicationSystemTestCase
  setup do
    @admin_admin = admin_admins(:one)
  end

  test "visiting the index" do
    visit admin_admins_url
    assert_selector "h1", text: "Admins"
  end

  test "should create admin" do
    visit admin_admins_url
    click_on "New admin"

    fill_in "Email", with: @admin_admin.email
    fill_in "First name", with: @admin_admin.first_name
    fill_in "Last name", with: @admin_admin.last_name
    click_on "Create Admin"

    assert_text "Admin was successfully created"
    click_on "Back"
  end

  test "should update Admin" do
    visit admin_admin_url(@admin_admin)
    click_on "Edit this admin", match: :first

    fill_in "Email", with: @admin_admin.email
    fill_in "First name", with: @admin_admin.first_name
    fill_in "Last name", with: @admin_admin.last_name
    click_on "Update Admin"

    assert_text "Admin was successfully updated"
    click_on "Back"
  end

  test "should destroy Admin" do
    visit admin_admin_url(@admin_admin)
    click_on "Destroy this admin", match: :first

    assert_text "Admin was successfully destroyed"
  end
end
