class Event < ActiveRecord::Base
  belongs_to :creator, class_name: "User"
  has_many :invites, dependent: :destroy
  has_many :attendees, through: :invites
  scope :upcoming_events, -> { where("event_date > ?", Time.zone.now) }
  scope :past_events, -> { where("event_date < ?", Time.zone.now) }
  validates :location, :event_date, :creator_id, presence: true

end
