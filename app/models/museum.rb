class Museum < ApplicationRecord
  belongs_to :museum_type
  has_many :reviews
  has_many :users, through: :reviews

  def most_recent_reviews
    self.reviews.order("created_at").last(3)
  end

  def ratings_average
    ratings = self.reviews.collect do |review|
      review.rating
    end
    average = ratings.inject { |sum, el| sum + el }.to_f / ratings.size
    average.round(1)
  end
end
