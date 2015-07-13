class EventsController < ApplicationController
  include EventsByRadius

  def index
    @event = Event.new
    ip = request.remote_ip
    @user_location = Geokit::Geocoders::MultiGeocoder.geocode("184.154.83.119")#hardcoded ip address for development
    @events_search = Event.text_search(params[:query])
    @events = search_radius(@user_location) & @events_search
    @locations = @events.to_json
  end

  def show
    @event = Event.find(params[:id])
    render :show
  end

  def new
  end

  def join_event
    @event = Event.find(params[:id])
    if current_user.event_guest_lists.create(id: @event.id)
      render :show
    else
      puts "this did not work"
      redirect_to :root
    end
  end

  def create
    if current_user.created_events.create(event_params)
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
    def event_params
      params.require(:event).permit(:title, :description, :address, :start_time, :end_time, :max_people)
    end
end