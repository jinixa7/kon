require 'test_helper'

class JobapiControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get jobapi_index_url
    assert_response :success
  end

end
