require "test_helper"

class BabiesControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get babies_index_url
    assert_response :success
  end

  test "should get create" do
    get babies_create_url
    assert_response :success
  end

  test "should get update" do
    get babies_update_url
    assert_response :success
  end

  test "should get delete" do
    get babies_delete_url
    assert_response :success
  end
end
