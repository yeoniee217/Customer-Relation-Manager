class Customer < ApplicationRecord
  validates :full_name, :email, presence: true
  validates :email, uniqueness: true
end
