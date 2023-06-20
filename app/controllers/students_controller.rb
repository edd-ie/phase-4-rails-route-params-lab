class StudentsController < ApplicationController

  def index
    students = if params[:name]
                  Student.name_search(params[:name])
                else
                  Student.all
                end
    # students = Student.all
    render json: students
  end

  def select_student
    student = Student.find(params[:id])
    render json:student
  end

end
