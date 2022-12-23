require "test_helper"

class IndexControllerTest < ActionDispatch::IntegrationTest
  test "should get home" do
    get index_home_url
    assert_response :success
  end

  test "should get test" do
    get index_test_url
    assert_response :success
  end
end
