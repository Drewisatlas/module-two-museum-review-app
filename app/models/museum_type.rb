class MuseumType < ApplicationRecord
  has_many :museums
  has_many :reviews, through: :museums
  has_many :users, through: :reviews
  has_many :user_types, through: :reviews
end
