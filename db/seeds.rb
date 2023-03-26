# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
# Seed heroes
# Seed heroes
10.times do
    Hero.create(name: Faker::Superhero.name, super_name: Faker::Superhero.descriptor)
  end
  
  # Seed powers
  10.times do
    Power.create(name: Faker::Superhero.power, description: Faker::Lorem.paragraph_by_chars(number: 100, supplemental: false))
  end
  
  # Seed hero_powers
  Hero.all.each do |hero|
    Power.all.sample(3).each do |power|
      HeroPower.create(hero: hero, power: power, strength: ['Strong', 'Weak', 'Average'].sample)
    end
  end
  
  
