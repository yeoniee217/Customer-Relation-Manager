class Customer < ApplicationRecord
  validates :full_name, presence: true
  validates :notes, length: { maximum: 300 }
  validates :email, uniqueness: true

  has_one_attached :image
end
