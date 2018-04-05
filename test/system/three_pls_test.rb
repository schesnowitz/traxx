require "application_system_test_case"

class ThreePlsTest < ApplicationSystemTestCase
  setup do
    @three_pl = three_pls(:one)
  end

  test "visiting the index" do
    visit three_pls_url
    assert_selector "h1", text: "Three Pls"
  end

  test "creating a Three pl" do
    visit three_pls_url
    click_on "New Three Pl"

    fill_in "City", with: @three_pl.city
    fill_in "Contact Name", with: @three_pl.contact_name
    fill_in "Dot", with: @three_pl.dot
    fill_in "Email", with: @three_pl.email
    fill_in "Fax", with: @three_pl.fax
    fill_in "Mc", with: @three_pl.mc
    fill_in "Name", with: @three_pl.name
    fill_in "Notes", with: @three_pl.notes
    fill_in "Phone", with: @three_pl.phone
    fill_in "Postal Code", with: @three_pl.postal_code
    fill_in "State", with: @three_pl.state
    fill_in "Street", with: @three_pl.street
    fill_in "Use Main Address", with: @three_pl.use_main_address
    fill_in "Website", with: @three_pl.website
    click_on "Create Three pl"

    assert_text "Three pl was successfully created"
    click_on "Back"
  end

  test "updating a Three pl" do
    visit three_pls_url
    click_on "Edit", match: :first

    fill_in "City", with: @three_pl.city
    fill_in "Contact Name", with: @three_pl.contact_name
    fill_in "Dot", with: @three_pl.dot
    fill_in "Email", with: @three_pl.email
    fill_in "Fax", with: @three_pl.fax
    fill_in "Mc", with: @three_pl.mc
    fill_in "Name", with: @three_pl.name
    fill_in "Notes", with: @three_pl.notes
    fill_in "Phone", with: @three_pl.phone
    fill_in "Postal Code", with: @three_pl.postal_code
    fill_in "State", with: @three_pl.state
    fill_in "Street", with: @three_pl.street
    fill_in "Use Main Address", with: @three_pl.use_main_address
    fill_in "Website", with: @three_pl.website
    click_on "Update Three pl"

    assert_text "Three pl was successfully updated"
    click_on "Back"
  end

  test "destroying a Three pl" do
    visit three_pls_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Three pl was successfully destroyed"
  end
end
