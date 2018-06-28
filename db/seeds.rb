Admin.create!(
  email: "ngoc@gmail.com",
  password: "12345678",
  password_confirmation: "12345678"
)

10.times do |n|
  League.create!(
    name: "#{Faker::Football.competition}#{n+1}"
  )
end

30.times do |n|
  Team.create!(
    name: "#{Faker::WorldCup.team}#{n+1}"
  )
end

20.times do |n|
  id = Faker::Number.between(1, 10)
  team_2 = Faker::Number.between(1, 30)
  point = Faker::Number.between(0, 5)
  Match.create!(
    league_id: id,
    team_id_1: id,
    team_id_2: team_2,
    point_team_1: point,
    point_team_2: point,
    live: 0,
    name: "#{Faker::WorldCup.group}#{n+1}",
    start_time: DateTime.strptime("09/01/2009 17:00", "%m/%d/%Y %H:%M"),
    end_time: DateTime.strptime("09/01/2009 18:30", "%m/%d/%Y %H:%M")
  )
end

20.times do |n|
  id = Faker::Number.between(1, 10)
  team_2 = Faker::Number.between(1, 30)
  point = Faker::Number.between(0, 5)
  Match.create!(
    league_id: id,
    team_id_1: id,
    team_id_2: team_2,
    live: 0,
    name: "#{Faker::WorldCup.group}#{n+1}",
    start_time: DateTime.strptime("08/28/2018 17:00", "%m/%d/%Y %H:%M")
  )
end

User.create!(
  name: "Ngoc Quang",
  email: "testofngoc@gmail.com",
  address: "Truong Yen Chuong My Ha Noi",
  phone_number: 1131231231,
  password: "12345678",
  password_confirmation: "12345678",
  is_admin: true
)
