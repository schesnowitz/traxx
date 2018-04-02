require "application_system_test_case"

class TerminalsTest < ApplicationSystemTestCase
  setup do
    @terminal = terminals(:one)
  end

  test "visiting the index" do
    visit terminals_url
    assert_selector "h1", text: "Terminals"
  end

  test "creating a Terminal" do
    visit terminals_url
    click_on "New Terminal"

    fill_in "App Setting", with: @terminal.app_setting_id
    fill_in "City", with: @terminal.city
    fill_in "Name", with: @terminal.name
    fill_in "State", with: @terminal.state
    fill_in "Street", with: @terminal.street
    fill_in "Telephone", with: @terminal.telephone
    fill_in "Zip", with: @terminal.zip
    click_on "Create Terminal"

    assert_text "Terminal was successfully created"
    click_on "Back"
  end

  test "updating a Terminal" do
    visit terminals_url
    click_on "Edit", match: :first

    fill_in "App Setting", with: @terminal.app_setting_id
    fill_in "City", with: @terminal.city
    fill_in "Name", with: @terminal.name
    fill_in "State", with: @terminal.state
    fill_in "Street", with: @terminal.street
    fill_in "Telephone", with: @terminal.telephone
    fill_in "Zip", with: @terminal.zip
    click_on "Update Terminal"

    assert_text "Terminal was successfully updated"
    click_on "Back"
  end

  test "destroying a Terminal" do
    visit terminals_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Terminal was successfully destroyed"
  end
end
