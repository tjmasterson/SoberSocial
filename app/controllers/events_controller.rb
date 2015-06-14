class EventsController < ApplicationController
  include EventsLocations
  include EventsByRadius

  def index
    @locations = []
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

  def create
  end

  def update
  end

  def destroy
  end

end