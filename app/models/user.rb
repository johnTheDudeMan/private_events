class User < ActiveRecord::Base
  has_many :events, foreign_key: :creator_id
  has_many :invites, foreign_key: :attendee_id
  has_many :attended_events, through: :invites, source: :event


  # def upcoming_events
  #   self.attended_events.where("event_date > ?", Time.zone.now)
  # end

  # def past_events
  #   self.attended_events.where("event_date < ?", Time.zone.now)
  # end

end
