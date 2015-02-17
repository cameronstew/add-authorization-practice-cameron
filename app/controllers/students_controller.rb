class StudentsController < ApplicationController

  before_filter :authorize, only: [:index, :show]
  def index
      @students = Student.all
  end

  def show
    @student = Student.find(params[:id])
  end

end
