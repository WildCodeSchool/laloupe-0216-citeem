# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
Eye.delete_all
User.delete_all

blue_eyes = Eye.create(color: "bleus")
brown_eyes = Eye.create(color: "marrons")
hazelnut_eyes = Eye.create(color: "noisettes")
grey_eyes = Eye.create(color: "gris")
black_eyes = Eye.create(color: "noirs")
green_eyes = Eye.create(color: "verts")

richard = User.create(nickname: "Richard", birthday: DateTime.new(1981,03,11), height: 180, email: "richard@wcs.fr", password: "12345678", eye_id: brown_eyes.id)
melanie = User.create(nickname: "Mélanie", birthday: DateTime.new(1992,12,07), height: 180, email: "melanie@wcs.fr", password: "12345678", eye_id: brown_eyes.id)
benjamin = User.create(nickname: "Benjamin", birthday: DateTime.new(1989,01,24), height: 180, email: "benjamin@wcs.fr", password: "12345678", eye_id: blue_eyes.id)
valentin = User.create(nickname: "Valentin", birthday: DateTime.new(1995,03,24), height: 180, email: "valentin@wcs.fr", password: "12345678", eye_id: hazelnut_eyes.id)
suzy = User.create(nickname: "Suzy", birthday: DateTime.new(1981,03,11), height: 180, email: "suzy@wcs.fr", password: "12345678", eye_id: brown_eyes.id)
