class Role < ApplicationRecord
  belongs_to :user
  belongs_to :class_room
end
