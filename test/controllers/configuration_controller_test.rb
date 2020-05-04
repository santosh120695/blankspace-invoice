require 'test_helper'

class ConfigurationControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get configuration_index_url
    assert_response :success
  end

  test "should get update" do
    get configuration_update_url
    assert_response :success
  end

end
