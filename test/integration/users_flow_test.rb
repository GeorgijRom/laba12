require './test/test_helper'

class UsersFlowTest < ActionDispatch::IntegrationTest
  # test "the truth" do
  #   assert true
  # end
  test "registrate and enter" do
    post "/users/registration", params: {name: "Anfisa", password: "123"}
    assert_response :success
    post "/users/login", params: {name: "Anfisa", password: "123"}
    assert_response :success
    get '/laba12/view.json', params: {happy_numbers_quantity: 7}
    assert_response :success
  end

 # test "can't do math without login" do
 #   get "/laba12/input"
 #   assert_select '.menu a[href=?]', 'http://localhost:3000/users/registration',
 #     { :count => 1, :text => 'Registration' }
 # end  
end