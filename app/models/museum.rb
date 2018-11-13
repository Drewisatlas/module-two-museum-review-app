class Museum < ApplicationRecord
  belongs_to :museum_type
  has_many :reviews
  has_many :users, through: :reviews

  def most_recent_reviews
    self.reviews.order("created_at").last(3)
  end

  def get_ratings
    self.reviews.collect {|review| review.rating}
  end

  def ratings_average
    ratings = self.get_ratings
    average = ratings.inject { |sum, el| sum + el }.to_f / ratings.size
    average.round(1)
  end


  def ratings_average_by_user_type_id(id)
    sorted_reviews = self.reviews.select {|review| review.user_id_type == type}
    sorted_ratings = sorted_reviews.get_ratings
    average = sorted_ratings.inject {|sum, el| sum + el }.to_f / sorted_reviews.size
    average.round(1)
  end
A
end
