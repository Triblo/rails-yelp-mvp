class Restaurant < ApplicationRecord
  has_many :reviews, dependent: :destroy

  validates :name, :address, :category, :phone_number, presence: true
  validates :name, :address, :category, length: { minimum: 2 }
  validates :phone_number, length: { minimum: 10 }
  validates :category, inclusion: { in: ["chinese", "italian", "japanese", "french", "belgian"] }
end
