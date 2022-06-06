class StudentsController < ApplicationController

  def index
    render json: params[:name] ? Student.by_name(params[:name]) : Student.all 
  end
  
  def show
    render json: Student.find(params[:id])
  end

end
