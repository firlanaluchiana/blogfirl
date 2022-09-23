# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

User.create(email: "luchi@gmail.com", password: "password", password_confirmation: "password", name: "Firlana Luchiana", confirmation_token: "tzrEy2E-Z2d7tQ2XP4E9", confirmed_at: Time.now, confirmation_sent_at: Time.now)

Post.create(title: "Anything", body:"free", user_id: User.first.id)
