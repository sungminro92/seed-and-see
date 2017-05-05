require 'test_helper'

class GardenPlantsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get garden_plants_index_url
    assert_response :success
  end

  test "should get edit" do
    get garden_plants_edit_url
    assert_response :success
  end

  test "should get update" do
    get garden_plants_update_url
    assert_response :success
  end

  test "should get delete" do
    get garden_plants_delete_url
    assert_response :success
  end

end
