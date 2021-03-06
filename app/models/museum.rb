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

  def ratings_average_by_user_type_id(id)
    sorted_reviews = self.reviews.select {|review| review.user_type_id == id}
    sorted_ratings = sorted_reviews.map {|review| review.rating}
    average = sorted_ratings.inject {|sum, el| sum + el }.to_f / sorted_reviews.size
    average.round(1)
  end

  def bad_reviews
    bad_reviews = self.reviews.select do |review|
      review.rating < 3
    end.last(5)
  end

  def contact_sad_reviewers
    self.bad_reviews.collect do |review|
      review.user.email
    end
  end

  def reviews_by_month(month)
    self.reviews.select {|review| review.monthitized == month}
  end

  def self.search_by_city(search)
    if search
      museum = Museum.all.select {|museum| museum.city.downcase == search.downcase}
      if museum.empty?
        return nil
      else
        Museum.all.select {|museum| museum.city.downcase == search.downcase}
      end
    else
      Museum.all
    end
  end

  def keyword_locator(keyword)
    self.reviews.select {|review| review.review.downcase.include?(keyword.downcase) || review.title.downcase.include?(keyword.downcase)}
  end
end
