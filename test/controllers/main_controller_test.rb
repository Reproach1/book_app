require "test_helper"

class MainControllerTest < ActionDispatch::IntegrationTest
  test "should get home" do
    get main_home_url
    assert_response :success
  end

  test "should get add_book" do
    get main_add_book_url
    assert_response :success
  end

  test "should get update_book" do
    get main_update_book_url
    assert_response :success
  end

  test "should get details" do
    get main_details_url
    assert_response :success
  end

  test "should get delete_book" do
    get main_delete_book_url
    assert_response :success
  end
end
