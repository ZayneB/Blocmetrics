# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
require 'faker'

#Create RegisteredApplications

10.times do 
  RegisteredApplication.create!(
  name: Faker::App.name,
  url: Faker::Internet.url
   )
  end 

  registeredapplications = RegisteredApplication.all


  puts "Seeds finished"
  puts "#{RegisteredApplication.count} registeredapplications created"