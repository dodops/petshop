FactoryGirl.define do
  factory :owner do
    phone "MyString"
    name Faker::GameOfThrones.character
  end

  factory :invalid_owner, parent: :owner do
    phone nil
    name nil
  end
end
