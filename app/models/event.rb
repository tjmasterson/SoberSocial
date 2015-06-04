class Event < ActiveRecord::Base

  belongs_to :creator, class_name: "User"
  belongs_to :category
  has_many :event_guest_lists
  has_many :guests, through: :event_guest_lists, source: :user


end
