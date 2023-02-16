puts "Deleting player/gym/game/signedup_player data..."
Gym.destroy_all
Player.destroy_all
Game.destroy_all
Signedup_player.destroy_all

puts "🌱 Seeding spices..."
puts "Adding Gyms"
memorial_park = Gym.create(
    gym_name: "Memorial Park",
    address:"1401 Olympic Blvd, Santa Monica, CA 90404",
    gym_phone_number: 3104588237,
    open_gym_hours: "M 4-7PM, TH 4-7PM"
)
bancroft_school = Gym.create(
    gym_name: "Bancroft School",
    address: "929 N Las Palmas Ave, Los Angeles, CA 90038",
    gym_phone_number: 3239933400,
    open_gym_hours: "TU 5-7PM"
)
hollywood_ymca = Gym.create(
    gym_name: "Hollywood YMCA",
    address: "1553 Schrader Blvd, Los Angeles, CA 90028",
    gym_phone_number: 3234674161,
    open_gym_hours: "No regular times. See game times"
)

puts "Adding Players"
jensen = Player.create(
    player_name: "Jensen Miers",
    player_email: "jensenmiers@gmail.com",
    player_phone_number: 3109998980
)
mj = Player.create(
    player_name: "Michael Jordan",
    player_email: "michaeljordan@gmail.com",
    player_phone_number: 3106662323
)
shaq = Player.create(
    player_name: "Shaq",
    player_email: "shaq@gmail.com",
    player_phone_number: 3104443434
)
kobe = Player.create(
    player_name: "Kobe",
    player_email: "kobe@gmail.com",
    player_phone_number: 3108882424
)

puts "Adding Games"
saturday_am = Game.create(
    game_start: '2023-02-18 08:00:00',
    game_end: '2023-02-18 10:00:00',
    capacity: 10,
)
sunday_am = Game.create(
    game_start: '2023-02-19 10:00:00',
    game_end: '2023-02-19 12:00:00',
    capacity: 10
)

puts "Adding Signed Up Players"
team_for_sat_am = Signedup_player.create(
    player: jensen,
    game: saturday_am
)


# Seed your database here

puts "✅ Done seeding!"
