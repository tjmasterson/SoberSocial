class HomeController < ApplicationController
  include EventsLocations
  include EventsByRadius

  def index
    @event = Event.new
    ip = request.remote_ip
    @user_location = Geokit::Geocoders::MultiGeocoder.geocode("184.154.83.119")#hardcoded ip address for development
    @events = events_by_radius(@user_location)
    package_for_map(@events)
  end

end
