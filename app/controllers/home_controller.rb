class HomeController < ApplicationController
  # before_filter :authenticate_user!
  def index
    @ip = request.remote_ip
    @location = Geokit::Geocoders::MultiGeocoder.geocode("184.154.83.119")
    @event = Event.first
    @events = Event.all
  end

end

