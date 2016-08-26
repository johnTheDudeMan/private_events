class EventsController < ApplicationController

  def index
    @events = Event.all
  end

  def show
    @event = Event.find(params[:id])
  end

  def new
  end

  def create
    event = Event.new(location: params[:event][:location], creator_id: params[:event][:user_id], event_date: params[:event][:event_date])
    if event.save
      event.invites.create(attendee_id: params[:event][:user_id])
      redirect_to event_path(event)
    else
      redirect_to user_path(current_user)
    end
  end

end
