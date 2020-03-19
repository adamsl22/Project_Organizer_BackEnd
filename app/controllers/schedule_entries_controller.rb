class ScheduleEntriesController < ApplicationController

    def create
        render json: ScheduleEntry.create(schedule_entry_params)
    end

    def update
        schedule_entry = ScheduleEntry.find(params[:id])
        render json: schedule_entry.update(schedule_entry_params)
    end

    def delete
        schedule_entry = ScheduleEntry.find(params[:id])
        schedule_entry.delete
    end

    private

    def schedule_entry_params(*args)
        params.require(:schedule_entry).permit(*args)
    end

end
