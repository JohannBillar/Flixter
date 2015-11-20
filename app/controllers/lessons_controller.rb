class LessonsController < ApplicationController
	
	def show
		# if current_lesson.blank?
		# 	render :text => "Not found", :status => :not_found
		# end
	end

	private
	helper_method :current_lesson
	def current_lesson
		@current_lesson ||= Lesson.find(params[:id])
	end

end
