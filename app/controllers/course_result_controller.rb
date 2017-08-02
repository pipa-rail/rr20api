class CourseResultController < ApplicationController
  before_action :get_current_course, only: [:show, :history]

  def show
    render json: @last_courses.last
  end

  def history
    render json: @last_courses.last(2)
  end

  private
  # Use callbacks to share common setup or constraints between actions.
  def get_current_course
    @last_courses = CourseResult
  end
end
