class CreateStats < ActiveRecord::Migration
  def change
    create_table :stats do |t|
      t.integer :workout_id
      t.integer :workout_type_id
      t.integer :user_id
      t.integer :reps
      t.integer :weight

      t.timestamps
    end
  end
end
