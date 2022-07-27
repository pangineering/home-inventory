require "application_system_test_case"

class BuyListsTest < ApplicationSystemTestCase
  setup do
    @buy_list = buy_lists(:one)
  end

  test "visiting the index" do
    visit buy_lists_url
    assert_selector "h1", text: "Buy lists"
  end

  test "should create buy list" do
    visit buy_lists_url
    click_on "New buy list"

    fill_in "Date", with: @buy_list.date
    fill_in "List", with: @buy_list.list
    fill_in "Location", with: @buy_list.location
    fill_in "Shopping", with: @buy_list.shopping_id
    check "Status" if @buy_list.status
    fill_in "Total", with: @buy_list.total
    click_on "Create Buy list"

    assert_text "Buy list was successfully created"
    click_on "Back"
  end

  test "should update Buy list" do
    visit buy_list_url(@buy_list)
    click_on "Edit this buy list", match: :first

    fill_in "Date", with: @buy_list.date
    fill_in "List", with: @buy_list.list
    fill_in "Location", with: @buy_list.location
    fill_in "Shopping", with: @buy_list.shopping_id
    check "Status" if @buy_list.status
    fill_in "Total", with: @buy_list.total
    click_on "Update Buy list"

    assert_text "Buy list was successfully updated"
    click_on "Back"
  end

  test "should destroy Buy list" do
    visit buy_list_url(@buy_list)
    click_on "Destroy this buy list", match: :first

    assert_text "Buy list was successfully destroyed"
  end
end
