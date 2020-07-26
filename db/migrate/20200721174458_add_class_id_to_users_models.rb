class AddClassIdToUsersModels < ActiveRecord::Migration[6.0]
  def change
    add_column :users, :class_room_id, :integer
  end
end
