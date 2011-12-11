class WorkoutType < ActiveRecord::Base
  has_many :workout_items
end
