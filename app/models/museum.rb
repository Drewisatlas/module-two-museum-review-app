class Museum < ApplicationRecord
  belongs_to :museum_type
  has_many :reviews
  has_many :users, through: :reviews
end
