class StudentsController < ApplicationController

    def index
        students = Student.all
        render json: students
    end

    def grades

        students = Student.all.order(grade: :desc)
        render json: students, only: [:first_name, :last_name, :grade]
    end
end
