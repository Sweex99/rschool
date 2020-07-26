class CreateClassRooms < ActiveRecord::Migration[6.0]
  def change
    create_table :class_rooms do |t|
      t.string :title
      t.string :description
      t.integer :organization_id

      t.timestamps
    end
  end
end
