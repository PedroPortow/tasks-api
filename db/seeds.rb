# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

StatusMapping.create(status: 1, text: "Not started")
StatusMapping.create(status: 2, text: "Started")
StatusMapping.create(status: 3, text: "Finished")

PriorityMapping.create(priority: 1, text: "Low")
PriorityMapping.create(priority: 2, text: "Medium")
PriorityMapping.create(priority: 3, text: "High")


