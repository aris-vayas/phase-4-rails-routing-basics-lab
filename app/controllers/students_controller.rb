class StudentsController < ApplicationController
    def index
      student = Student.all
      render json: student
    end
    def grades
        
            
        student_ordered= Student.all.order(grade: :desc )
        render json: student_ordered
    end
    def highest_grade
        smartest =Student.all.order(grade: :desc).first
        render json: smartest
    end

end
