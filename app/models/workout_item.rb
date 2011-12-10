class WorkoutItem < ActiveRecord::Base
  belongs_to :workout
  validates_presence_of :reps
end
