class TeachersController < ApplicationController
rescue_from ActiveRecord::RecordNotFound, with: :render_not_found_response

    def index 
        render json: Teacher.all
    end

    def show 
        teacher = Teacher.find(params[:id])
        render json: teacher
    end

    private 

    def render_not_found_response
        render json: {error: "Teacher not found"}, status: :not_found
    end
end
