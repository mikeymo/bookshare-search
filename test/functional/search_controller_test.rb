require 'test_helper'

class SearchControllerTest < ActionController::TestCase
  test "should get basic" do
    get :basic
    assert_response :success
  end

end
