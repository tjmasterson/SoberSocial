class EventsController < ApplicationController

  def index
    @search_results = Event.text_search(params[:query])
  end

  def show
  end

  def new
  end

  def create
    if current_user.created_events.create(event_parmas)
      redirect_to :root
    else
      puts "this did not work"
      #some kind of notification
    end
  end

  def update
  end

  def destroy
  end

  private
    def event_parmas
      params.require(:event).permit(:title, :description, :address, :start_time, :max_num_people)
    end

end