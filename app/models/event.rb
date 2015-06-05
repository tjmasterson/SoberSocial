class Event < ActiveRecord::Base
  acts_as_mappable :auto_geocode => {:field => :address}

  belongs_to :creator, class_name: "User", foreign_key: :user_id
  belongs_to :category
  has_many :event_guest_lists
  has_many :guests, through: :event_guest_lists, source: :user

end
