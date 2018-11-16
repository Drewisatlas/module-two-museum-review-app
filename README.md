# README

## Module 2 Project

### Project Requirements:
1. You should have least five models. 
2. There should be at least twenty methods total in your models. These are to be used to better extract data from your tables.
3. No APIs until you get approval from an instructor.
4. Specs - there should be at least 10 specs in your project (five per person).
5. An analytics page - The main learning goal of this is to get you to write some interesting activerecord queries.

**No JavaScript. Stay focused on Rails for this project **

### Project Task Guidelines
- Come up with idea, model out domain.
- Add model tests, start building out basic features. Have some functionality built out by the end of the day.
- Iterate on the features that you built yesterday. Go from a 'skateboard' version to a scooter or a bicycle. It doesnt' have to be perfect, but it should be working.
- Start styling/ cleaning up issues.
- Issue cleanup and final demos.

# MUSEE
### Share Your Meseum Experience With Others 
##### By: Andrew Rivera and Jenny Ingram

MUSEE is a website that allows users to read and write reviews for museums.

### User Functionality
1. Anyone that visits the site can read reviews for museums.
2. Anyone can create a User Profile
3. Users can write reviews and rate museums.
4. Admins for the website can view sitewide analytics.
5. Users can be given permission to view analytics for a specific museum (if they work for the museum).

### Reviews
1. A review and rating belongs to a specific museum, and user.
2. Reviews also collect information to determine what brought a visitor to a specific museum, and assigns the a specific user type.

### Mueseums
1. Museums have information about the location, and a museum type.
2. A museums show page will show an average rating for the museum, snippets of the 3 most recent reviews and a link to a portion of the site that shows all reviews.
3. There is search functionality to search for museums by city.

### Analytics
1. There are two separate anayltics pages: Analytics for the entirety of the site, and analytics for each museum.
2. Users do not have access to the analytics page unless they are a website admin, or granted permission to view analytics for a specific museum. 

#### Analytics Include:
+ Total reviews written (for the site, and for each museum)
+ Reviews written each month
+ Average age of reviewer
+ Percentage of user types submitting reviews
+ Average rating for museums
+ Average rating by user type for museums
+ Most recent bad reviews
+ The email addresses for users that have written a review with a rating of less than 3 (scale is 1 to 5).
+ Keyword search for all of the reviews for a particular museum
