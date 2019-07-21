class StudentsController < ApplicationController
  before_action :set_student, only: [:show, :activate]
  
  def index
    @students = Student.all
  end

  def show
    if @student.active == false
      @status = "This student is currently inactive."
    elsif @student.active == true
      @status = "This student is currently active."
    end 
  end

  def activate
    @student.active = !@student.active 
    @student.save
    redirect_to @student 
  end 

  private

    def set_student
      @student = Student.find(params[:id])
    end
end