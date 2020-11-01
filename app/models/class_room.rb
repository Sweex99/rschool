class ClassRoom < ApplicationRecord
  has_many :roles
  has_many :users, through: :roles
  belongs_to :organization, optional: true
end