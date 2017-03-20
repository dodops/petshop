require 'csv'

namespace :db do
  desc 'Create Owners, Breeds and 1.000 Dogs to populate and test the application'
  task populate: :environment do
    # Generate Dogs Breeds
    puts 'Creating Dog Breeds....(may take a while)'
    CSV.foreach('racas.csv', headers: true) do |row|
      ActiveRecord::Base.transaction do
        Breed.create!(row.to_hash)
      end
    end

    # Generate Owners
    puts 'Creating Owners....(may take a while)'
    300.times do
      ActiveRecord::Base.transaction do
        Owner.create!(name: Faker::Name.unique.name, phone: Faker::PhoneNumber.unique.cell_phone)
      end
    end

    # Generate Dogs
    puts 'Creating 1000 Dogs....(may take a while)'
    1000.times do
      ActiveRecord::Base.transaction do
        Dog.create!(name: Faker::Cat.name,
                    gender: %w(male female).sample,
                    castrated: [true, false].sample,
                    last_visit: rand(1.year).seconds.ago,
                    birth_date: rand(5.years..10.years).seconds.ago,
                    owner: Owner.order('RANDOM()').first,
                    breed: Breed.order('RANDOM()').first)
      end
    end
  end
end
