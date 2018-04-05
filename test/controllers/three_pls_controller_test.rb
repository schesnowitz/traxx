require 'test_helper'

class ThreePlsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @three_pl = three_pls(:one)
  end

  test "should get index" do
    get three_pls_url
    assert_response :success
  end

  test "should get new" do
    get new_three_pl_url
    assert_response :success
  end

  test "should create three_pl" do
    assert_difference('ThreePl.count') do
      post three_pls_url, params: { three_pl: { city: @three_pl.city, contact_name: @three_pl.contact_name, dot: @three_pl.dot, email: @three_pl.email, fax: @three_pl.fax, mc: @three_pl.mc, name: @three_pl.name, notes: @three_pl.notes, phone: @three_pl.phone, postal_code: @three_pl.postal_code, state: @three_pl.state, street: @three_pl.street, use_main_address: @three_pl.use_main_address, website: @three_pl.website } }
    end

    assert_redirected_to three_pl_url(ThreePl.last)
  end

  test "should show three_pl" do
    get three_pl_url(@three_pl)
    assert_response :success
  end

  test "should get edit" do
    get edit_three_pl_url(@three_pl)
    assert_response :success
  end

  test "should update three_pl" do
    patch three_pl_url(@three_pl), params: { three_pl: { city: @three_pl.city, contact_name: @three_pl.contact_name, dot: @three_pl.dot, email: @three_pl.email, fax: @three_pl.fax, mc: @three_pl.mc, name: @three_pl.name, notes: @three_pl.notes, phone: @three_pl.phone, postal_code: @three_pl.postal_code, state: @three_pl.state, street: @three_pl.street, use_main_address: @three_pl.use_main_address, website: @three_pl.website } }
    assert_redirected_to three_pl_url(@three_pl)
  end

  test "should destroy three_pl" do
    assert_difference('ThreePl.count', -1) do
      delete three_pl_url(@three_pl)
    end

    assert_redirected_to three_pls_url
  end
end
