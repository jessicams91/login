= README
This is a solution for an user authentication problem developed by Jessica Moura de Sousa

* Ruby     version: 2.2.4
* Rails    version: 4.2.6
* Postgres version: 0.15

== System dependencies
* Ruby and Rails on version listed here or higher
* You must have Postgres database installed in order to run this application.

== Gems Used
* Rspec
  For testing on this application
* FactoryGirl and Capybara
  Testing support and seeds population

== Configuration
Run the following command:

  bundle install

== Database Creation
After the configuration, you can create the database with the following command:

  rake db:setup

== How To Run Tests
To perform test, you need run the rails test command as below:

  rspec

== Deployment Instructions
To deploy the application on your localhost run the following command after all steps above:

  rails s

== Usage
If you did all the configuration and creation steps correctly, when you deploy the application, it should be running at: http://localhost:3000

* User log in
  You can login with email and password, here are the users in the seed:
  user1@email.com, user2@email.com, user3@email.com, user4@email.com and user5@email.com
  all have the password '12345678'

* User blocked
  If there are more than 5 tries for the same email with wrong passwords, the user will be blocked, and can no longer login
  example on seeds: blocked@email.com password: '12345678'
