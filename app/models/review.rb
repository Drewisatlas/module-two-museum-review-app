class Review < ApplicationRecord
  belongs_to :museum
  belongs_to :user
  belongs_to :user_type

  def shorten_review
    self.review[0..20]+"..."
  end
end
