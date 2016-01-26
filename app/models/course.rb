class Course < ActiveRecord::Base
  has_many :registration_rooms
  has_many :students, :through => :registration_rooms
  belongs_to :professor
  belongs_to :class_room
end
