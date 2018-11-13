class User < ApplicationRecord
  has_many :reviews
  has_many :museums, through: :reviews
  has_many :user_types, through: :reviews

  has_secure_password
  validates :username, uniqueness: true

  def percentages_by_museum_type(museum_type)
    my_reviews = self.reviews.select do |review|
      review.museum.museum_type.name == museum_type
    end
    num = my_reviews.size.to_f / self.reviews.size
    "#{(num * 100).round(2)}%"
  end

  def average_ratings
    my_ratings = self.reviews.collect do |review|
      review.rating
    end
    my_averages = my_ratings.inject { |sum, el| sum + el }
    my_averages.to_f / my_ratings. size
  end
end
