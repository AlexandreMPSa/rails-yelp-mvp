class Restaurant < ApplicationRecord
  validates :name, :address, :category, presence: true
  # validates :category, acceptance: {accept: "chinese", "italian", "japanese", "french", "belgian"}
  validates :category, inclusion: { in: %w(chinese italian japanese french belgian) }
  has_many :reviews, dependent: :destroy
end
