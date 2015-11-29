class LessonsController < ApplicationController
	before_action :authenticate_user!
	before_action :confirm_user_enrollment, :only => [:show]
	
	def show
	end

	private

	def confirm_user_enrollment
		this_course = current_lesson.section.course
		if !current_user.enrolled_in?(this_course)
      redirect_to course_path(this_course), :alert => 'Please enroll to see lessons'
    end	
  end

  helper_method :current_lesson
  def current_lesson
    @current_lesson ||= Lesson.find(params[:id])
  end

end
