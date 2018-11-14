require 'rails_helper'

describe "museums", type: :feature do
  before do
    @museum_type = MuseumType.create(name: "Art Museum")
    @museum = Museum.create({name: "My Museum", city: "New York", street_address: "101 Broadway", state: "NY", zip_code: "55555", museum_type: @museum_type})
    @user = User.create({username: "jennyjean", first_name: "Jenny", last_name: "I.", age: 39, email: "jenny@gmail.com", password: "password"})
    @user_type = UserType.create(name: "Explorer", dropdown: "I like to explore")
    @review = Review.create(museum: @museum, user: @user, title: "Loved it!", rating: 5, review: "I absolutely loved it.", user_type: @user_type)
  end

  it "should display a museum's name" do
    visit museum_path(@museum)
    expect(page).to have_text(@museum.name)
  end

  it "should display a museum's average rating" do
    visit museum_path(@museum)
    expect(page).to have_text(@museum.ratings_average)
  end

  it "should include links to a museum's most recent reviews" do
    visit museum_path(@museum)
    expect(page).to have_link(@review.title, href: review_path(@review))
  end

  it "should include links to reviewers' user pages" do
    visit museum_path(@museum)
    expect(page).to have_link(@review.user.username, href: user_path(@review.user))
  end

end
