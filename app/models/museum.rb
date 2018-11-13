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

  def average_age_of_reviewer
    ages = self.reviews.collect do |review|
      review.user.age
    end
    average_age = ages.inject { |sum, el| sum + el } / ages.size
  end

  def percentage_by_user_type(user_type)
    all_of_user_type = self.reviews.select do |review|
      review.user_type.name == user_type
    end
    num = (all_of_user_type.size.to_f / self.reviews.size)
    "#{(num * 100).round(2)}%"
  end
end
