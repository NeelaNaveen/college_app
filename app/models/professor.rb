class Professor < ActiveRecord::Base
  belongs_to :department
  has_many :courses
end
