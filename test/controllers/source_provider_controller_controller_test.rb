require 'test_helper'

class SourceProviderControllerControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get source_provider_controller_index_url
    assert_response :success
  end

  test "should get show" do
    get source_provider_controller_show_url
    assert_response :success
  end

end
