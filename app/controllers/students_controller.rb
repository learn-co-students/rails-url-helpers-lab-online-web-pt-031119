class StudentsController < ApplicationController
  before_action :set_student, only: :show
  
  def index
    @students = Student.all
  end

  def show
    if @student.active == true
      @student_status = "active"
    else
      @student_status = "inactive"
    end
  end

  def activate
    @student = Student.find(params[:id])
    if @student.active == false
      @student.active = true
      @student.save
      redirect_to action: "show"
    else
      @student.active = false
      @student.save
      redirect_to action: "show"
    end
  end

  private

    def set_student
      @student = Student.find(params[:id])
    end
end