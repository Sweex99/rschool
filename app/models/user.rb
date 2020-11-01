class User < ApplicationRecord
  ADMIN    = 'admin'.freeze
  TEACHER  = 'teacher'.freeze
  STUDENT  = 'student'.freeze

  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  has_many :roles
  has_many :class_rooms, through: :roles, after_add: :set_class_room_role
  has_many :organization_roles
  has_many :organizations, through: :organization_roles, after_add: :set_org_role

  def full_name
    "#{self.first_name} #{self.last_name}"
  end

  protected

  def set_class_room_role(class_room)
    class_room_role = class_room.roles.first
    class_room_role.update_columns(role: ADMIN)
  end

  def set_org_role(organization)
    new_organization = organization.organization_roles.first
    new_organization.update_columns(role: ADMIN)
  end
end
