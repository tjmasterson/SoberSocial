class EventsController < ApplicationController
  include EventsLocations
  include EventsByRadius

  def index
    @event = Event.new
    ip = request.remote_ip
    @user_location = Geokit::Geocoders::MultiGeocoder.geocode("184.154.83.119")#hardcoded ip address for development
    @events_search = Event.text_search(params[:query])
    @events = events_by_radius(@user_location) & @events_search
    package_for_map(@events)
  end

  def show
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