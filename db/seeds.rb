# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
  movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings 1" }])
  Character.create(name: "Luke", movie: movies.first)

    movies = Movie.create([{ name: "Pulp Fiction" }, { name: "Lord of the Rings 2" }])
  Character.create(name: "Emma", movie: movies.first)

    movies = Movie.create([{ name: "Coco" }, { name: "Lord of the Rings 3" }])
  Character.create(name: "Drew", movie: movies.first)

  Restaurant.create(
    name:
    address:

  )

