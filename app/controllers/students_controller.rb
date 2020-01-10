class StudentsController < ApplicationController
  before_action :set_student, only: :show
  after_initialize :init

  def index
    @students = Student.all
  end

  def init
    self.active = false if self.active.nil?
  end

  def show
    @student = Student.find(params[:id])
  end

  private

    def set_student
      @student = Student.find(params[:id])
    end
end
