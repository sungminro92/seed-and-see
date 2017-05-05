require 'test_helper'

class GardenControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get garden_index_url
    assert_response :success
  end

  test "should get edit" do
    get garden_edit_url
    assert_response :success
  end

  test "should get update" do
    get garden_update_url
    assert_response :success
  end

  test "should get destroy" do
    get garden_destroy_url
    assert_response :success
  end

end
