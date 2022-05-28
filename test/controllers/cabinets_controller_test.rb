require 'test_helper'

class CabinetsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get cabinets_index_url
    assert_response :success
  end

end
