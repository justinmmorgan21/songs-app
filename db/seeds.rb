# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end

Song.create(title: "Sitting by the dock of the bay", album: "The Dock of the Bay", artist: "Otis Redding", year:1968)

Song.create(
  title: "Achy Breaky Heart", 
  album: "Some Gave All", 
  artist: "Billy Ray Cyrus", 
  year:1995
)

Song.create(
  title: "What a Wonderful World", 
  album: "What a Wonderful World", 
  artist: "Louis Armstrong", 
  year:1967
)