class EventsController < ApplicationController
  include ActiveModel::ForbiddenAttributesProtection

  before_filter :set_event, only: [:show, :edit, :update, :destroy]

  def show
  end

  def edit
    @event.start_date == @event.end_date && @event.one_day == true
  end

  def update
    if @event.update_attributes(event_params)
      redirect_to @event, notice: 'Event was successfully updated.'
    else
      Rails.logger.info(@event.errors.inspect)
      render :action => 'edit', alert: 'Could not save event.'
    end
  end

  def destroy
  end

  def create
    @timeline = Timeline.find(params[:timeline_id])
    @event = Event.new(event_params)

    if @timeline.present?
      if @event.save
        @timeline.events << @event
        redirect_to @timeline, notice: 'Event was successfully created.'
      else
        redirect_to @timeline, alert: 'Could not create action. Please check for errors or try again.'
      end
    else
      render action: 'new', alert: 'Could not create action. Please check for errors.'
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_event
      @event = Event.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def event_params
      params.require(:event).permit(:name, :description, :start_date, :end_date, :one_day)
    end
end
