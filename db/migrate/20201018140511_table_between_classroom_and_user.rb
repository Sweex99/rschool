class TableBetweenClassroomAndUser < ActiveRecord::Migration[6.0]
  def change
    create_table :roles do |t|
      t.belongs_to :user
      t.belongs_to :class_room
      t.string :role

      t.timestamps
    end
  end
end
