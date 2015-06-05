class HomeController < ApplicationController
  # before_filter :authenticate_user!
  def index
    @ip = request.remote_ip
    @location = Geokit::Geocoders::MultiGeocoder.geocode("184.154.83.119")
    puts ">>>>>>>>>>>>>>>>>>#{@location.ll}"
    @events = Event.within(4, :origin => @location.ll)
    @locations = []
    @events.each do |event|
      @locations << [event.lat, event.lng]
    end
    @event = Event.first
  end

end

