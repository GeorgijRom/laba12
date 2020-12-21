require './test/test_helper'

class UsersFlowTest < ActionDispatch::IntegrationTest
  test "registrate and enter" do
    post "/users/register", params: { user: { name: "Anfisa", password: "123" } }
    assert_redirected_to("/")
    post "/users/login", params: {name: "Anfisa", password: "123"}
    assert_redirected_to("/laba12/input")
    get '/laba12/view', params: {happy_numbers_quantity: 7}
    assert_response :success
  end

  test "can't do math without login" do    
    get "/laba12/input"
    assert_redirected_to("/")
  end  
end