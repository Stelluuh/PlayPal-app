class ActivitiesController < ApplicationController

    def index #shows all activities
        render json: Activity.all
    end

   def show #shows a single activity
      activity = find_activity
      render json: activity
   end

   def update #updates an activity
      activity = find_activity
      activity.update(activity_params)
      render json: activity
   end

   def destroy #deletes an activity
      activity = find_activity
      activity.destroy
      head :no_content
   end

   private

   def find_activity
        Activity.find(params[:id])
   end

   def activity_params
      params.permit(:name, :description, :age_range, :duration)
   end

end
