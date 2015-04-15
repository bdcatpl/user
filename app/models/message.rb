class Message < ActiveRecord::Base
  # attr_accessible :title, :body
#attr_accessible :project, :title, :start_date, :end_date, :start_time, :end_time, :minute_taker, :attendee, :place, :about_meeting, :topic, :type_o, :note, :owner
#validates_length_of :project, :within => 1..255

# validates_presence_of :title
#validates_length_of :title, :within => 1..255

#validates_presence_of :place
#validates_length_of :place, :within => 1..255

#validates :minute_taker, format: { with: /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\z/i, on: :create, message: "Cannot be blank"} 
                                 
#validates_uniqueness_of :minute_taker

#validates :attendee, format: { with: /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\z/i, on: :create,:message => "Cannot be blank" } 
#validates_uniqueness_of :attendee

#validates_presence_of :about_meeting
#validates_length_of :about_meeting, :within => 1..255

#validates_presence_of :topic
#validates_length_of :topic, :within => 1..255

#validates_presence_of :note
#validates_length_of :note, :within => 1..255


#validates_presence_of :owner
#validates_length_of :owner, :within => 1..255


end
