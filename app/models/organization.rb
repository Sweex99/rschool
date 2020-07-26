class Organization < ApplicationRecord
  has_many :admins
  has_many :class_rooms
  has_many :teachers
  has_many :students
  
end
