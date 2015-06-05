class HomeController < ApplicationController
  before_filter :authenticate_user!

  def index
    @ip = request.remote_ip
    @location = Geokit::Geocoders::MultiGeocoder.geocode("155.12.15.31")
    puts "<<<<<<<<<<#{@location}>>>>>>>>>>"
    @event = Event.first
  end
end