# Superheroes-API
This is a RESTful API built with Ruby on Rails for managing heros and their powers.

## Author 
Ruth Moraa

## Date Created
March 27th, 2023

##  Technologies Used

1. Ruby ---2.7.0
2. Ruby on Rails
3. Active Record
4. Postman

## Entity Relationship Diagram
![superheroes-api](https://dbdiagram.io/d/64217c345758ac5f17246b9a)

## API Endpoints

### Heroes

1. GET /heroes: Returns a list of all heroes in the database.
2. GET /heroes/:id: Returns details for a specific hero, including a list of its associated powers.


### Powers

*1. GET /powers:* Returns a list of all powers in the database.
*2. GET /powers/:id: Returns details for a specific power. 
*3. PATCH /powers/:id: Updates an existing `Power`

### Hero_powers

*1. POST /hero_powers:* Creates a new `HeroPower` that is associated with an
existing `Power` and `Hero`


The API utilizes the following models

1. Heroes
2. Powers
3. Hero_powers

## Set Up

To set up this project locally, follow these steps:

1. Clone this repository to your local machine using git clone https://github.com/moraaruth/superhero
2. cd into the project directory
3. Run `bundle install` command to install all necessary gems
4. Run `rails db:migrate` command to create the database tables
5. Run `rails db:seed` command to populate the database with sample data
6. Start the server with `rails server` command
7. Use Postman to make requests to the API endpoints

