module EventsLocations
  extend ActiveSupport::Concern

  included do
    helper_method :package_for_map
  end

  def package_for_map(events)
    @locations = []
    events.each do |event|
      @locations << [event.lat, event.lng, event.title, event.description,
                     event.max_people, event.num_people_attending, event.address]
    end
  end
end