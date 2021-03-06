class CoursesController < ApplicationController
  def index
    @courses = Course.all
  end

  def show
    @course = current_course
  end

  private

  helper_method :current_course
  def current_course
    @current_course ||= Course.find(params[:id])
  end

end
