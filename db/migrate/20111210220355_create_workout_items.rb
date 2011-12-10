class CreateWorkoutItems < ActiveRecord::Migration
  def change
    create_table :workout_items do |t|
      t.integer :workout_id
      t.integer :workout_type_id
      t.integer :reps
      t.integer :weight

      t.timestamps
    end
  end
end
