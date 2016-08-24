# Private Events

This is a exercise project from [The Odin Project](http://www.theodinproject.com/ruby-on-rails/associations?ref=lnav) that allows users to create events and then manage user signups. Users can create events and send invitations. A user can attend many events.

-Users-
name:string
email:string

-Events-
creator:foreign_key

has_many :attendees

-Invites-
event_id
invitee_id
invitor_id
