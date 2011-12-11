class WorkoutItem < ActiveRecord::Base
  belongs_to :workout
  belongs_to :workout_type
  validates_presence_of :reps
end
