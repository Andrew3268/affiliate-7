require 'test_helper'

class ComingSoonControllerTest < ActionController::TestCase
  test "should get coming_soon" do
    get :coming_soon
    assert_response :success
  end

end
