puts 'Cleaning the db...'
Park.destroy_all

puts "Creating a park..."
Park.create!(
  name: 'Jurassic Park',
  banner_url: 'https://assets-prd.ignimgs.com/2023/03/17/jurassic-park-movies-in-order-2-1679065335857.jpg'
)
puts "... created #{Park.count} parks."
