# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :review do
    description "MyText"
    Restaurant nil
  end
end
