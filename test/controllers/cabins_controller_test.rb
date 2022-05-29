require 'test_helper'

class CabinsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get cabins_index_url
    assert_response :success
  end

end
