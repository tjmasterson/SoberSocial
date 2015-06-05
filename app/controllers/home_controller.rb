class HomeController < ApplicationController
  # before_filter :authenticate_user!
  def index
    @ip = request.remote_ip
    @user_location = Geokit::Geocoders::MultiGeocoder.geocode("184.154.83.119")
    @events = Event.within(4, :origin => @user_location.ll)
    @locations = []
    @events.each { |event| @locations << [event.lat, event.lng, event.title] }
  end

end

