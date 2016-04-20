# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

#Product.destroy_all
#User.destroy_all

boris 	= User.create!(email: "boris@lewagon.org", password: "testtest")
seb 	= User.create!(email: "seb@lewagon.org",  password: "testtest")

kudoz = Product.create!(user: boris, name: "Kudoz",   url: "http://getkudoz.com", tagline:"Tinder for job search",       category:"tech")
Product.create!(user: boris, name: "uSlide",  url: "http://uslide.com",   tagline:"Youtube sucks for education", category:"education")
Product.create!(user: seb, name: "Medpics", url: "http://medpics.com",  tagline:"Share your diagnostics",      category:"tech")
le_wagon = Product.create!(user: seb, name: "Le Wagon", url: "http://lewagon.com",  tagline:"We bring tech skills",      category:"education")

# Upvotes?
#Upvotes.create!(user: ?, product: ?)
# or
kudoz.upvotes.create! user: boris
kudoz.upvotes.create! user: seb

le_wagon.upvotes.create! user: seb