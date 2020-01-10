class StudentsController < ApplicationController
  before_action :set_student, only: :show

  def index
    @students = Student.all
  end

  def activate_student
    if self.active == false
      self.active = true
    elsif self.active == true
      self.active = false
    end
    
    
  end

  def show
    @student = Student.find(params[:id])
  end

  private

    def set_student
      @student = Student.find(params[:id])
    end
end
