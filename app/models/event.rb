class Event < ApplicationRecord
	validates_presence_of :name
  belongs_to :catagory, :optional => true
  has_many :attendees -> { where(["created_at > ?", Time.now - 7.day]).order("id DESC") }
           , :dependent => :destroy #複數
  has_one :location, :dependent => :destroy #單數
  has_many :event_groupships
  has_many :groups, :through => :event_groupships
end

