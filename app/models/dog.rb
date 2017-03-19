class Dog < ApplicationRecord
  belongs_to :breed
  belongs_to :owner

  enum gender: [:male, :female]

  validates :gender, presence: true
  validates :name, presence: true
  validates :breed, presence: true, associated: true
  validates :owner, presence: true, associated: true

  delegate :name, to: :owner, prefix: true
  delegate :name, to: :breed, prefix: true
  delegate :phone, to: :owner, prefix: true

  scope :by_breed, -> (breed) { where breed_id: breed }
  scope :by_owner, -> (owner) { where owner_id: owner }
  scope :by_gender, -> (gender) { where gender: gender }
  scope :neutering_state, -> (state) { where castrated: state }

  def self.search(query = nil)
    return all unless query.present?

    joins(:owner).where('dogs.name ILIKE :query OR owners.name ILIKE :query', query: "%#{query}%")
  end
end
