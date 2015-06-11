class EventsController < ApplicationController

  def index
    @events = Event.text_search(params[:query])
  end

  def show
  end

  def new
  end

  def create
  end

  def update
  end

  def destroy
  end

end