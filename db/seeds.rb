# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

User.create([
  {name: "Foo",
  email: "Foo@gmail.com",
  password: "password",
  location: "San Francisco"},
  {name: "Tex",
  email: "tex@gmail.com",
  password: "password",
  location: "Austin"},
  {name: "Pierre",
  email: "pierre@gmail.com",
  password: "password",
  location: "Aix-en-Provence"},
  {name: "Meathead",
  email: "meat.head@gmail.com",
  password: "password",
  location: "Brooklyn"},
  ])

Equipment.create([
  {user_id: 1,
  typ: 'bass',
  make: 'Kay',
  info: 'Rotocore strings, K&K Bass Master  Rockabilly pickup'},
  {user_id: 1,
  typ: 'head',
  make: 'Fender',
  info: 'TB1200'},
  {user_id: 1,
  typ: 'cab',
  make: 'Fender',
  info: '8x10'},
  {user_id: 2,
  typ: 'bass',
  make: 'Strunal',
  info: '50/1'},
  {user_id: 3,
  typ: 'bass',
  make: 'Engelhardt',
  info: 'painted black with house paint'},
  {user_id: 4,
  typ: 'head',
  make: 'Ashdown',
  info: 'MAG300'},
  {user_id: 4,
  typ: 'cab',
  make: 'Ashdown',
  info: '4x8'},
  ])
