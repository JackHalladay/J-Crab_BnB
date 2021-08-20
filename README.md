# J-Crab_BnB - Claw a stay with us!

# User stories

As a user
So that people can book my space
I would like to be able to add it

As a user
So that I can see spaces that are available
I would like to be able to view spaces

As a user
To try and book a stay
I would like to request a booking

Other
As a user
So that people know information about my space
I would like to be able to add a description and price


# Description 
This is the week 7 project. The task was to design an AirBnB clone: MakersBnB. Our goal was to create a product that satisfied the above user stories. Our final product had the following specification:

1. Users can sign up to MakersBnB
2. Users can log in/log out to MakersBnB
3. Users can create one or more listings on MakersBnB -  listings include a property name, description
4. Users can view listings on MakersBnB
5. Users can request a listing on MakersBnB 

# Making the databases

1. psql
2. CREATE DATABASE bnb;
3. \c bnb
4. run sql 01
5. run sql 02 
6. run sql 03
7. run sql 04
8. run sql 05

6. repeat step 2 to 8 but replaces bnb with bnb_test

# Setup

To run this app in your local environment you will have to create two databases. One for testing, one to trial the app in development mode. You can set this up using PSQL as follows:

1. Open a terminal
2. Enter psql into the command line
3. Enter CREATE DATABASE bnb_test; to create the test database
4. Enter CREATE DATABASE bnb; to create the development database
5. Enter \q to quit

Once the databases have been created you may set up the app as follows:

1. Fork this repo
2. Clone your forked repo to a folder in your computer
3. Run bundle install 
4. Run rspec to perform the tests

To check out the app in dev environment:
1. Run rackup to launch a local server
2. In your preferred browser, navigate to localhost:9292


# Technologies 
1. Sinatra: Ruby Framework
2. Rspec/Capybara: For unit and feature testing
3. Sinatra-Flash: For displaying notices/errors to users
4. BCrypt: For user password encryption
5. PostgreSQL: to store and manage databases 


# Challenges

Initally we had some challenges with learning and applying new tech tools such as HTML and making it
work efficiently with Ruby. Also, we occassionally came across syntax issues when accidentally using reserved words (such as 'user' in PostgreSQL) however we managed to resolve this by avoiding using these words. One thing that we could've done differently is creating the database design upfront in order to avoid more changes later and keeping it concise.


