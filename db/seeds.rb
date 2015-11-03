# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
 require 'faker'
 
 # Create Wikis
 50.times do
   Wiki.create!(
     title:  Faker::Lorem.sentence,
     body:   Faker::Lorem.paragraph,
     private: true
   )
 end
 wikis = Wiki.all
puts "Seed finished"
puts "#{Wiki.count} wikis created"

 # Create an admin user
 admin = User.new(
   name:     'Admin User',
   email:    'admin@example.com',
   password: 'password',
   role:     'admin'
 )
 admin.skip_confirmation!
 admin.save!

# Create a premium user
premium = User.new(
  name: 'Premium User',
  email: 'premium@example.com',
  password: 'password',
  role: 'premium'
  )
premium.skip_confirmation!
premium.save!
# Create a basic free user

standard = User.new(
  name: 'Standard User',
  email: 'standard@example.com',
  password: 'password',
  role: 'standard'
  )
standard.skip_confirmation!
standard.save!