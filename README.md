# Name: Minion_Adlister
![](https://github.com/gonzalez-banker-joiner-mescall/job-lister/blob/finish-adlister/LandingPage.mov)
## Description:
    1) Visitors of our website will be greeted at our landing page by a minion containing a message explaining the site along with some easter eggs contained further down the page.
           1) Landing page (Home) will have the options to:
               1) Register
               2) Login
               3) View ads
               4) Subscribe 
       2) Website can register a new user
           1) If user selects to NOT be a villian during the registration process they will NOT be able to create ads
       3) Website redirects user to login page after registration is submitted
       4) After logging in, user is taken to his/her profile page.
       5) Profile page has options to:
           1) Edit Profile
               1) Edit Profile has options to:
                   1) Update Username
                   2) Update Bio
                   3) Update Password
                   4) Supervillain or Henchman option
                   5) Upon submitting profile update, the site will redirect the user back to their profile page
           2) Create Ad
               1) Create Ad has options to:
                   1) Create a title for thier ad
                   2) Choose from multiple categories
                   3) Involve a description of said ad
                   4) Upon submitting create ad, the site will redirect the user to the ad page which will consist of all the subsequent ads as well as the ad that was just created
           3) View all ads created by the user
               1) View ad has option(s) to:
                   1) Update the selected ad
                       1) Update title
                       2) Update description
                       3) Save
                           1) Upon submitting save, the user will be redirected back to their profile
                       4) Delete
                           1) Upon submitting delete, the user will be prompted with a 'safety check' to ensure they want to delete said ad
                               1) After clicking ok on the prompt, user will be redirected to their profile page
       6) User can traverse between:
           1) Profile page
           2) Home page
           3) Ad page
       7) While logged in and viewing ads:
           1) User can bookmark ads
           2) View ads by category
           4) Clear filter
           5) View individual ad page
               1) Save option
               2) Go Back option
       8) After logout is submitted, user will be redirected to login page
       9) For users who are not logged in
           1) Can view ads but not:
               1) Create ads
               2) Bookmark ads
               3) Save ads
    
## Technologies
1) Tomcat
2) HTML
3) CSS
4) JS
5) Java
6) JSTL
7) Mysql
8) InteliJ
 

# Finish The Adlister by the Numbers
1) Ad show page
   1) Create a page that shows the information about an individual ad. This page should show all the information about that ad, as well as the information about the user that posted the ad.

   2) Your ads index page should contain links to each individual ad page.

   3) You should have one page that displays the information for any arbitrary ad. Consider passing the id of the ad as a parameter in the GET request to this page.

2) Search
   1) Implement functionality that allows users to search through the ads in your database.

3) Show user's ads on their profile page
   1) When a user visits their profile page, they should see all of the ads they have created.

4) Ensure usernames are unique
   1) Change your database schema to enforce that values in the username column of the user table are unique. Make sure a new account cannot be created with an existing username.

5) Clean up the code
    1) You'll notice there is some duplicated code in our ads DAO and our users DAO. How could you create an abstraction for this?

6) Dynamic navbar
    1) Wouldn't it be nice if our navbar showed different links depending on if a user was logged in or out?

7) Allow users to update and delete ads
    1) You will need to make some changes to the frontend so that users can discover this functionality, as well as implement the backend logic necessary to update your database.

8) Allow users to update their profile information

9) Validate data
    1) Ensure that the data we get from our users is valid before saving it to the database. Consider creating some classes related to validation.

10) Error messages
    1) Isn't it frustrating when a site won't let you submit a form but won't tell you why? Implement functionality to display error messages to users if they do something wrong, for example, if they try to register but their passwords don't match, or if they try to create a ad without a title.
    2) Consider storing error messages temporarily in the session and having a messages.jsp partial to handle this.

11) Sticky Forms
    1) When a submission is rejected because one or more of our validation constraints fails, we should still see the old values in the form for creating an ad, the users' input should not be erased.

12) Allow an Ad to have many categories
    1) Create a categories table and implement all the backend logic necessary to tie a category to an ad. This should be a many to many relationship (an ad can have many categories, and a category can have many ads associated with it).
    2) In addition, allow users to search through ads by category.

13) Intended Redirects
    1) When a user is redirected to the login page, after a successful login, they should be sent back to the page they were trying to visit, as opposed to the default, the profile page.
