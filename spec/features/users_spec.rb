require 'spec_helper'

describe 'users', type: :feature do
  before do
    @museum_type = MuseumType.create(name: "Art Museum")
    @museum = Museum.create({name: "My Museum", city: "New York", street_address: "101 Broadway", state: "NY", zip_code: "55555", museum_type: @museum_type})
    @user = User.create({username: "jennyjean", first_name: "Jenny", last_name: "I.", age: 39, email: "jenny@gmail.com", password: "password"})
    @user_type = UserType.create(name: "Explorer", dropdown: "I like to explore")
    @review = Review.create(museum: @museum, user: @user, title: "Loved it!", rating: 5, review: "I absolutely loved it.", user_type: @user_type)
  end

  it "should display a username" do
    visit user_path(@user)
    expect(page).to have_text(@user.username)
  end

  it "should show the user's reviews" do
    visit user_path(@user)
    expect(page).to have_text(@review.title)
  end

  it "should link to the user's reviews" do
    visit user_path(@user)
    expect(page).to have_link(@review.title, href: review_path(@review))
  end


end
