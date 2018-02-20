class User < ApplicationRecord
  has_secure_password

  has_many :character_pages

  validates :name, presence: true
  validates :email, presence: true, uniqueness: true
end
