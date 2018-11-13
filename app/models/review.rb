class Review < ApplicationRecord
  belongs_to :museum
  belongs_to :user
  belongs_to :user_type

  def shorten_review
    self.review[0..20]+"..."
  end

  def self.average_age_of_reviewer
    ages = self.all.collect do |review|
      review.user.age
    end
    average_age = ages.inject { |sum, el| sum + el } / ages.size
  end

  def self.percentage_by_user_type(user_type)
    all_of_user_type = self.all.select do |review|
      review.user_type.name == user_type
    end
    num = (all_of_user_type.size.to_f / self.all.size)
    "#{(num * 100).round(2)}%"
  end

  def monthitized
    self.created_at.month
  end

  def self.reviews_by_month(month)
    self.select {|review| review.monthitized == month}
  end

  def self.keyword_locator(keyword)
    self.select {|review| review.review.include?(keyword) || review.title.include?(keyword) }
  end

  def self.total_reviews
    self.count
  end
end
