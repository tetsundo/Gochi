require 'test_helper'

class GochiesControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get gochies_index_url
    assert_response :success
  end

  test "should get new" do
    get gochies_new_url
    assert_response :success
  end

  test "should get complete" do
    get gochies_complete_url
    assert_response :success
  end

  test "should get show" do
    get gochies_show_url
    assert_response :success
  end

end
