class Event < ActiveRecord::Base
  belongs_to :creator, class_name: "User"
  has_many :event_guest_lists
  has_many :guests, through: :event_guest_lists, source: :user
  has_many :categories
end
