class CreateWorkouts < ActiveRecord::Migration
  def change
    create_table :workouts do |t|
      t.string :title
      t.date :date
      t.integer :time_limit

      t.timestamps
    end
  end
end
