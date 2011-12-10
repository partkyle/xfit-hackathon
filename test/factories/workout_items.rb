# Read about factories at http://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :workout_item do
    workout_type_id 1
    reps 1
    weight 1
  end
end
