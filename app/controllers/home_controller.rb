class HomeController < ApplicationController
  # before_filter :authenticate_user!
  def index
    @ip = request.remote_ip
    @user_location = Geokit::Geocoders::MultiGeocoder.geocode("184.154.83.119")
    @events = Event.within(0.5, :origin => @user_location.ll)
    @locations = []
    @events.each { |event| @locations << [event.lat, event.lng, event.title,
                                          event.description, event.max_people,
                                          event.num_people_attending] }
  end

end

