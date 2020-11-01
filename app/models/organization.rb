class Organization < ApplicationRecord
  has_many :organization_roles
  has_many :users, through: :organization_roles
end
