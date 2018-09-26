class StudentsController < ApplicationController

  # Currently migrated students DB begins at ID 9
  def index
    @students = Student.all
  end

  def show
    @student = Student.find(params[:id])
  end

  def new
    @student = Student.new
  end

  def create
    @student = Student.create(student_params(:student_first_name, :student_last_name))
    redirect_to "/students/#{@student.id}"
  end

  def update
    @student = Student.find(params[:id])
    @student.update(student_params(:student_first_name, :student_last_name))
  end

  def edit
    @student = Student.find(params[:id])
  end

private

  def student_params(*args)
    params.require(:student).permit(*args)
  end
end
