FactoryGirl.define do
  factory :breed do
    name "MyString"
  end

  factory :invalid_breed, parent: :breed do
    name nil
  end
end
