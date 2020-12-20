require 'test_helper'

class UsersFlowTest < ActionDispatch::IntegrationTest
  # test "the truth" do
  #   assert true
  # end
  test "registrate and enter" do
    get "/"
    click_link "Registration"
    assert_select "h1", "Welcome#index"
  end

  test "can't do math without login" do
    get "/laba12/input"
    assert_select '.menu a[href=?]', 'http://localhost:3000/users/registration',
      { :count => 1, :text => 'Registration' }
  end  
end