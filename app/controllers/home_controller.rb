class HomeController < ApplicationController
  def index
    @event = Event.first
  end
end