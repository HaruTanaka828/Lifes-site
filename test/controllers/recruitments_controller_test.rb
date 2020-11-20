require 'test_helper'

class RecruitmentsControllerTest < ActionDispatch::IntegrationTest
  test "should get new" do
    get recruitments_new_url
    assert_response :success
  end

end
