module EventsByRadius
  extend ActiveSupport::Concern

  included do
    helper_method :events_by_radius
  end

  def events_by_radius(user_location)
    Event.within(0.5, :origin => user_location.ll)
  end

  def search_radius(user_location)
    Event.within(5, :origin => user_location.ll)
  end
end