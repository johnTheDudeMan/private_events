class InvitesController < ApplicationController

  def create
    event = Event.find(params[:event_id])
    if user = User.find_by(name: params[:invite][:user_name])
      event.invites.create(attendee_id: user.id)
      redirect_to event_path(event.id)
    else
      flash[:danger] = "User does not exist"
      redirect_to event_path(event.id)
    end
  end
end
