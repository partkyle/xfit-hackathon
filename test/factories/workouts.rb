# Read about factories at http://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :workout do
    title "MyString"
    date "2011-12-10"
    time_limit 1
  end
end
