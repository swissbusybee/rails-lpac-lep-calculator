class StudentsController < ApplicationController
  def index
    @students = Student.all
    @student = Student.new
  end

  def new
    @student = Student.new
  end

  def create
    @student = Student.new(student_params)
  end

  private

  def student_params
    params.require(:student).permit(:school_year, :school_grade, :lep_indicator_code)
  end
end
