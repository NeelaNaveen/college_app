class Department < ActiveRecord::Base
  has_many :professors
end
