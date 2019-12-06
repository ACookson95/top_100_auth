# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

10.times do
  billboard = Billboard.create( 
    name: Faker::Creature::Animal.name
  )
  10.times do
    artist = Artist.create( 
      name: Faker::Music.band,
      genre: Faker::Music.genre,
    )
    20.times do
      Song.create( 
        name: Faker::Book.title,
        genre: Faker::Music.genre,
        artist_id: artist.id
        # billboard_id: billboards.sample.id
      )
    end
  end
end

puts "Finished Seeding"
