puts 'Cleaning the db...'
Park.destroy_all

puts "Creating a park..."
jp = Park.create!(
  name: 'Jurassic Park',
  banner_url: 'https://assets-prd.ignimgs.com/2023/03/17/jurassic-park-movies-in-order-2-1679065335857.jpg'
)
puts "... created #{Park.count} parks."

puts "Creating dinosaurs..."
Dinosaur.create!(
  name: 'Little Foot',
  image_url: 'https://static.wikia.nocookie.net/landbeforetime/images/5/5a/Littlefoot_X.png',
  park: jp
)

Dinosaur.create!(
  name: 'Spike',
  image_url: 'https://images-wixmp-ed30a86b8c4ca887773594c2.wixmp.com/f/905d008d-e774-4f04-8d1b-6aac3ef243c4/de1hu1f-25cbe331-05fa-4ad3-85cf-2b7b8f09defb.png?token=eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJzdWIiOiJ1cm46YXBwOjdlMGQxODg5ODIyNjQzNzNhNWYwZDQxNWVhMGQyNmUwIiwiaXNzIjoidXJuOmFwcDo3ZTBkMTg4OTgyMjY0MzczYTVmMGQ0MTVlYTBkMjZlMCIsIm9iaiI6W1t7InBhdGgiOiJcL2ZcLzkwNWQwMDhkLWU3NzQtNGYwNC04ZDFiLTZhYWMzZWYyNDNjNFwvZGUxaHUxZi0yNWNiZTMzMS0wNWZhLTRhZDMtODVjZi0yYjdiOGYwOWRlZmIucG5nIn1dXSwiYXVkIjpbInVybjpzZXJ2aWNlOmZpbGUuZG93bmxvYWQiXX0.I0T8kV8t-FAILnA5porv4TrClA4sKlTIuvSHUIePYfY',
  park: jp
)

Dinosaur.create!(
  name: 'Barney',
  image_url: 'https://www.usmagazine.com/wp-content/uploads/2023/07/Barney-Movie-Everything-to-Know.jpg',
  park: jp
)

Dinosaur.create!(
  name: 'Yoshi',
  image_url: 'https://play.nintendo.com/images/profile-mk-yoshi.babe07bc.7fdea5d658b63e27.png',
  park: jp
)

Dinosaur.create!(
  name: 'Big Bird',
  image_url: 'https://i.scdn.co/image/ab6761610000e5eb2ea205d226d38b8d9f926b14',
  park: jp
)
puts "... created #{Dinosaur.count} dinosaurs."

puts "Creating hobbies..."
10.times do
  Hobby.create!(
    name: Faker::Hobby.unique.activity
  )
end
puts "...  created #{Hobby.count} hobbies."
