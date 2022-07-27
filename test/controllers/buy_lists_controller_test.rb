require "test_helper"

class BuyListsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @buy_list = buy_lists(:one)
  end

  test "should get index" do
    get buy_lists_url
    assert_response :success
  end

  test "should get new" do
    get new_buy_list_url
    assert_response :success
  end

  test "should create buy_list" do
    assert_difference("BuyList.count") do
      post buy_lists_url, params: { buy_list: { date: @buy_list.date, list: @buy_list.list, location: @buy_list.location, shopping_id: @buy_list.shopping_id, status: @buy_list.status, total: @buy_list.total } }
    end

    assert_redirected_to buy_list_url(BuyList.last)
  end

  test "should show buy_list" do
    get buy_list_url(@buy_list)
    assert_response :success
  end

  test "should get edit" do
    get edit_buy_list_url(@buy_list)
    assert_response :success
  end

  test "should update buy_list" do
    patch buy_list_url(@buy_list), params: { buy_list: { date: @buy_list.date, list: @buy_list.list, location: @buy_list.location, shopping_id: @buy_list.shopping_id, status: @buy_list.status, total: @buy_list.total } }
    assert_redirected_to buy_list_url(@buy_list)
  end

  test "should destroy buy_list" do
    assert_difference("BuyList.count", -1) do
      delete buy_list_url(@buy_list)
    end

    assert_redirected_to buy_lists_url
  end
end
