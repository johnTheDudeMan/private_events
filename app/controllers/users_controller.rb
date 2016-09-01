class UsersController < ApplicationController

  def new
    @user = User.new
  end

  def show
    @user = User.find(params[:id])
    @upcoming_events = @user.events.upcoming_events
    @past_events = @user.events.past_events
  end

  def create
    @user = User.create(name: params[:user][:name])
    log_in @user
    redirect_to @user
  end

end
