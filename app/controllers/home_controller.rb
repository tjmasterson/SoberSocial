class HomeController < ApplicationController
  before_filter :authenticate_user!
  def index
    @event = Event.first
  end
end
