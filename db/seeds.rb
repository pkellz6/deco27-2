# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
Admin.create email: 'patrick@dvlper.com', password: '1234567890'

Category.create(name: "Porcelains")
Category.create(name: "Doors")
Category.create(name: "Walls")
Category.create(name: "Hardwood Floors")
Category.create(name: "Stairs")
