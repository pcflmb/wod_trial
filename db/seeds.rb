# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

u = User.new(name: 'Max')
u.save

30.times do |n|
  name  = Faker::Name.first_name + ' ' + Faker::Name.last_name
  u = User.new(name: name)
  u.save
end

20.times do |n|
  user = User.find(rand(30)+1)
  content = Faker::Lorem.paragraph(4)
  p = Post.new(user: user, content: content)
  p.save
end