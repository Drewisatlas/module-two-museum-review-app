class UserType < ApplicationRecord
  has_many :reviews
  has_many :users, through: :reviews
  has_many :museums, through: :reviews
  has_many :museum_types, through: :museums
end
