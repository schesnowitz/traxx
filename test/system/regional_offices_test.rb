require "application_system_test_case"

class RegionalOfficesTest < ApplicationSystemTestCase
  setup do
    @regional_office = regional_offices(:one)
  end

  test "visiting the index" do
    visit regional_offices_url
    assert_selector "h1", text: "Regional Offices"
  end

  test "creating a Regional office" do
    visit regional_offices_url
    click_on "New Regional Office"

    fill_in "Address Description", with: @regional_office.address_description
    fill_in "City", with: @regional_office.city
    fill_in "Email", with: @regional_office.email
    fill_in "Fax", with: @regional_office.fax
    fill_in "Notes", with: @regional_office.notes
    fill_in "Phone", with: @regional_office.phone
    fill_in "Postal", with: @regional_office.postal
    fill_in "State", with: @regional_office.state
    fill_in "Street", with: @regional_office.street
    fill_in "Three Pl", with: @regional_office.three_pl_id
    click_on "Create Regional office"

    assert_text "Regional office was successfully created"
    click_on "Back"
  end

  test "updating a Regional office" do
    visit regional_offices_url
    click_on "Edit", match: :first

    fill_in "Address Description", with: @regional_office.address_description
    fill_in "City", with: @regional_office.city
    fill_in "Email", with: @regional_office.email
    fill_in "Fax", with: @regional_office.fax
    fill_in "Notes", with: @regional_office.notes
    fill_in "Phone", with: @regional_office.phone
    fill_in "Postal", with: @regional_office.postal
    fill_in "State", with: @regional_office.state
    fill_in "Street", with: @regional_office.street
    fill_in "Three Pl", with: @regional_office.three_pl_id
    click_on "Update Regional office"

    assert_text "Regional office was successfully updated"
    click_on "Back"
  end

  test "destroying a Regional office" do
    visit regional_offices_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Regional office was successfully destroyed"
  end
end
