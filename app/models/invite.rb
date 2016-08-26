class Invite < ActiveRecord::Base
  belongs_to :event
  belongs_to :attendee, class_name: "User"
  validates :attendee_id, presence: true

end
