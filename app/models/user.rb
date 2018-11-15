class User < ApplicationRecord
  has_many :reviews
  has_many :museums, through: :reviews
  has_many :user_types, through: :reviews

  has_secure_password
  validates :username, presence: true
  validates :username, uniqueness: true
  validates :first_name, presence: true
  validates :last_name, presence: true
  validates :age, presence: true
  validates :email, presence: true
  validates :email, uniqueness: true

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

  def review_writer
    if self.username[-1] == "s"
      "#{self.username}' Reviews"
    else
      "#{self.username}'s Reviews"
    end
  end
end
