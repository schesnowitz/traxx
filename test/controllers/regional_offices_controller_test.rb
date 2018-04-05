require 'test_helper'

class RegionalOfficesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @regional_office = regional_offices(:one)
  end

  test "should get index" do
    get regional_offices_url
    assert_response :success
  end

  test "should get new" do
    get new_regional_office_url
    assert_response :success
  end

  test "should create regional_office" do
    assert_difference('RegionalOffice.count') do
      post regional_offices_url, params: { regional_office: { address_description: @regional_office.address_description, city: @regional_office.city, email: @regional_office.email, fax: @regional_office.fax, notes: @regional_office.notes, phone: @regional_office.phone, postal: @regional_office.postal, state: @regional_office.state, street: @regional_office.street, three_pl_id: @regional_office.three_pl_id } }
    end

    assert_redirected_to regional_office_url(RegionalOffice.last)
  end

  test "should show regional_office" do
    get regional_office_url(@regional_office)
    assert_response :success
  end

  test "should get edit" do
    get edit_regional_office_url(@regional_office)
    assert_response :success
  end

  test "should update regional_office" do
    patch regional_office_url(@regional_office), params: { regional_office: { address_description: @regional_office.address_description, city: @regional_office.city, email: @regional_office.email, fax: @regional_office.fax, notes: @regional_office.notes, phone: @regional_office.phone, postal: @regional_office.postal, state: @regional_office.state, street: @regional_office.street, three_pl_id: @regional_office.three_pl_id } }
    assert_redirected_to regional_office_url(@regional_office)
  end

  test "should destroy regional_office" do
    assert_difference('RegionalOffice.count', -1) do
      delete regional_office_url(@regional_office)
    end

    assert_redirected_to regional_offices_url
  end
end
