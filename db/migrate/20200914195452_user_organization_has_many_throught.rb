class UserOrganizationHasManyThrought < ActiveRecord::Migration[6.0]
  def change
    create_table :organization_roles do |t|
      t.belongs_to :user
      t.belongs_to :organization
      t.string :role

      t.timestamps
    end
  end
end
