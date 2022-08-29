class StudentsController < ApplicationController
    def index
        students = Student.all
        
        render json: students,  status: 200
    end

    def grades
           students = Student.order(grade: :desc)
           render json: students, status: 200     
    end

    def highest_grade
        students = Student.order(grade: :desc).first
        render json: students, status: 200
    end
end