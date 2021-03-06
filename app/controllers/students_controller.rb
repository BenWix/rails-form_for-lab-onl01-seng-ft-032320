require 'pry'

class StudentsController < ApplicationController
    def index 
        @students = Student.all
    end
    
    def show 
        @student = Student.find_by_id(params[:id])
    end 

    def new
   
    end

    def create 
        @student = Student.create(params.require(:student).permit(:first_name, :last_name))
        redirect_to student_path(@student)
    end 
    
    
    def edit 
        @student = Student.find_by_id(params[:id])
    end 
    
    def update 
        # binding.pry
        @student = Student.find_by_id(params[:id])
        @student = Student.update(params.require(:student).permit(:first_name, :last_name))
        redirect_to student_path(@student)
    end
end