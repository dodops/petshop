FactoryGirl.define do
  factory :dog do
    castrated true
    gender "female"
    birth_date "2010-03-17"
    name Faker::Cat.name
    last_visit "2017-03-17"

    association :breed, factory: :breed
    association :owner, factory: :owner
  end

  factory :invalid_dog, parent: :dog do
    castrated nil
    gender nil
    birth_date nil
    name nil
    last_visit nil
  end
end
