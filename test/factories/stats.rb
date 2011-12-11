# Read about factories at http://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :stat do
    workout_id 1
    workout_type_id 1
    user_id 1
    reps 1
    weight 1
  end
end
