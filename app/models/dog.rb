class Dog < ApplicationRecord
  include Filterable

  belongs_to :breed
  belongs_to :owner

  enum gender: [:male, :female]

  validates :gender, presence: true
  validates :castrated, presence: true
  validates :name, presence: true
  validates :breed, presence: true, associated: true
  validates :owner, presence: true, associated: true

  delegate :name, to: :owner, prefix: true
  delegate :name, to: :breed, prefix: true

  scope :by_breed, -> (breed) { where breed_id: breed }
  scope :by_owner, -> (owner) { where owner_id: owner }
  scope :by_gender, -> (gender) { where gender: gender }

  def self.search(query = nil)
    return all unless query.present?

    sql = [:name, :onwer_name].join(' ILIKE :query OR ') << ' ILIKE :query'
    where(sql, query: "%#{query}%")
  end
end
