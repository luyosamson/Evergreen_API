# README

This README would normally document whatever steps are necessary to get the
application up and running.

Things you may want to cover:

* Ruby version

* System dependencies

* Configuration

* Database creation

* Database initialization

* How to run the test suite

* Services (job queues, cache servers, search engines, etc.)

* Deployment instructions

* ...






                +-------------+
                |    Order    |
                +-------------+
                | id          |
                | user_id     |
                | product_id  |
                | quantity    |
                | price       |
                | created_at  |
                | updated_at  |
                +-------------+
                       |
                       |
                       |
                +-------------+
                |     User    |
                +-------------+
                | id          |
                | name        |
                | email       |
                | password    |
                | created_at  |
                | updated_at  |
                +-------------+
                       |
                       |
                       |
                +-------------+
                |   Product   |
                +-------------+
                | id          |
                | name        |
                | description |
                | seller_id   |
                | price       |
                | created_at  |
                | updated_at  |
                +-------------+
                       |
                       |
                       |
                +-------------+
                |   Seller    |
                +-------------+
                | id          |
                | name        |
                | email       |
                | created_at  |
                | updated_at  |
                +-------------+
                       |
                       |
                       |
                +-------------+
                |   Profile   |
                +-------------+
                | id          |
                | user_id     |
                | address     |
                | phone       |
                | created_at  |
                | updated_at  |
                +-------------+
                
The relationships are as follows:

An order is associated with one user, and a user can have many orders (one-to-many relationship).
An order is associated with one product, and a product can be in many orders (one-to-many relationship).
A product is associated with one seller, and a seller can have many products (one-to-many relationship).
A user can have one profile, and a profile is associated with one user (one-to-one relationship).