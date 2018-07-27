Game.create!
User.create(email: "host@example.com", username: "host", password: "password", is_host: true)
host = Host.create(user: User.first)
Place.create(host: host)

10.times do |n|
  User.create(email: "user-#{n}@example.com", username: "user-#{n}", password: "password", is_host: false)
end

challenge = Challenge.create(challenger: User.clients.first, challenged: User.clients.last, place: Place.last, game: Game.last)

challenge.users << [challenge.challenger, challenge.challenged]
