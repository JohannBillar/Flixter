require 'test_helper'

class LessonsControllerTest < ActionController::TestCase

  test "lesson show page" do
  	lesson = Lesson.create(:title => "test title", :subtitle => "subtitline the test lesson.")
  	get :show, :id => lesson.id 
  	assert_response :success
  end
  
  # test "lesson show page not found" do
  # 	get :show, :id => "OMG"
  # 	assert_response :not_found
  # end

end
