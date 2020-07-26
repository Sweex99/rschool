class CreateMarks < ActiveRecord::Migration[6.0]
  def change
    create_table :marks do |t|
      t.integer :subject_id
      t.integer :number
      t.integer :user_id

      t.timestamps
    end
  end
end
