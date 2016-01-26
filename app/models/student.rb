class Student < ActiveRecord::Base
  has_many :registration_rooms
  has_many :courses, :through => :registration_rooms
end
