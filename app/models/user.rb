class User < ApplicationRecord
  has_many :reviews
  has_many :museums, through: :reviews
  has_many :user_types, through: :reviews

  validates :username, uniqueness: true
end
