FactoryGirl.define do
  factory :race do
    name "MyString"
  end

  factory :invalid_race, parent: :race do
    name nil
  end
end
