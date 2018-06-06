require 'test_helper'

class StartupControllerTest < ActionDispatch::IntegrationTest
  test "should get registration" do
    get startup_registration_url
    assert_response :success
  end

end
