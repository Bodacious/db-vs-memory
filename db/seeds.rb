N_USERS = 100
User.insert_all(N_USERS.times.map {
  {
    name: Faker::Name.name,
    email: Faker::Internet.email,
    dominant_hand: rand <= 0.8 ? 'right' : 'left'
  }
})