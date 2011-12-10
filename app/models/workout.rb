class Workout < ActiveRecord::Base
  has_many :workout_items
  validates_presence_of :title, :date, :time_limit

  accepts_nested_attributes_for :workout_items, :allow_destroy => true
end
