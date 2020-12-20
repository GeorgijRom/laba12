require 'test_helper'

class laba12ControllerTest < ActionDispatch::IntegrationTest
  test "should get input" do
    get laba12_input_url
    assert_response :success
  end

  test "should get view" do
    get laba12_view_url
    assert_response :success
  end
  test "" do
  end
end
