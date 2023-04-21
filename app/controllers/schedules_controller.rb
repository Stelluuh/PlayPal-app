class SchedulesController < ApplicationController

    def index
        render json: Schedule.all
    end

    def show
        schedule = find_schedule
        render json: schedule
    end

    def create
        schedule = Schedule.create(schedule_params)
        render json: schedule, status: :created
    end

    private

    def schedule_params
        params.permit(:date, :time_of_day, :activity_id, :user_id)
    end

end
