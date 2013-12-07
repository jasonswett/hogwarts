class StudentsController < ApplicationController
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
    @student = Student.new(params[:student].merge(house_id: House.random_id))

    if @student.save
      redirect_to action: 'index'
    else
      render action: 'new'
    end
  end
end
