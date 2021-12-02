class MeetingsController < ApplicationController
rescue_from ActiveRecord::RecordNotFound, with: :render_not_found_response

    def index 
        if params[:teacher_id]
            teacher = Teacher.find(params[:teacher_id])
            student = Student.find(params[:student_id])
            # create custom model method to find meeting --> meetings = Meeting.where ... teacher_id && student_id ... etc.
            # also, order meetings by date
          else
            meetings = Meeting.all
          end
          render json: meetings
    end

    def create 
        meeting = Meeting.new(meeting_params)
        if meeting.save 
            render json: meeting, status: :created 
        else 
            render json: {errors: meeting.errors.full_messages}, status: :unprocessable_entity 
        end
    end

    def update 
        meeting = find_meeting 
        meeting.update(meeting_params)
        render json: meeting, status: :accepted
    end

    def destroy
        meeting = find_meeting 
        meeting.destroy 
        render json: {}, status: :no_content
    end

    private 

    def render_not_found_response
        render json: {error: "Meeting not found"}, status: :not_found
    end

    def find_meeting 
        Meeting.find(params[:id])
    end

    def meeting_params
        params.permit(:student_id, :teacher_id, :duration, :notes, :date)
    end

end
