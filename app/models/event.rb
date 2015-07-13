class Event < ActiveRecord::Base
  acts_as_mappable :auto_geocode => {:field => :address}

  require 'tod'
  serialize :start_time, Tod::TimeOfDay
  serialize :end_time, Tod::TimeOfDay

  belongs_to :creator, class_name: "User", foreign_key: :user_id
  belongs_to :category
  has_many :event_guest_lists
  has_many :guests, through: :event_guest_lists, source: :user

  include PgSearch
  pg_search_scope :search,
    :against => {:title => 'A', :description => 'B', :address => 'C'},
    :using => {
      :tsearch => {prefix: true, any_word: true, dictionary: "english"},
      :trigram => {threshold: 1}
    },
    :associated_against => {:creator => :name, :category => :title}

  def self.text_search(query)
    if query.present?
      search(query)
    else
      scoped
    end
  end

  def date_format(date)
   date.strftime("%d/%m/%Y %I:%M %p")
  end

end
