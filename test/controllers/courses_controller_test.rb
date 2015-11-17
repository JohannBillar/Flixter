require 'test_helper'

class CoursesControllerTest < ActionController::TestCase
	
	test "sign-in user" do
    user = FactoryGirl.create(:user)
    sign_in user
    assert_response :success
  end

  test "index" do
	  FactoryGirl.create(:course)
	  get :index
	  assert_response :success
	end

end
