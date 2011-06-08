class Event < ActiveRecord::Base
  
  has_event_calendar

  has_attached_file :image
  
  validates_attachment_presence :image
  validates_attachment_size :image, :less_than => 5.megabytes
  validates_attachment_content_type :image, :content_type => ['image/jpeg', 'image/png']

end
