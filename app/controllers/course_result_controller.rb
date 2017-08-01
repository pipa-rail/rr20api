class CourseResultController < ApplicationController
  before_action :get_current_course, only: [:show, :history]

  def show
  end

  def history
    render json: @last_courses
  end

  private
  # Use callbacks to share common setup or constraints between actions.
  def get_current_course
    @last_courses = CourseResult.all
  end
end
