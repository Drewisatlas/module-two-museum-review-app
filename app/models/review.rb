class Review < ApplicationRecord
  belongs_to :museum
  belongs_to :user
  belongs_to :user_type
end
