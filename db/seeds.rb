# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

users = User.create([
  { email: 'test@test.com', firstname: 'Mike', lastname: 'Gudyrin', password: '123456', password_confirmation: '123456' },
  { email: 'test2@test.com', firstname: 'Bob', lastname: 'Armstrong', password: 'qwe123', password_confirmation: 'qwe123' }
])

projects = Project.create([
  { title: 'Test project for Juicymo', user_id: User.first.id },
  { title: 'Blogpost for recent CVE', user_id: User.first.id },
  { title: 'Defensive wall against Covid zombies', user_id: User.last.id },
  { title: 'New BIO cocaine plantation', user_id: User.last.id },
  { title: 'Better e-shop for cocaine', user_id: User.last.id }
])

tasks = Task.create([
  { title: 'Datamodel for Juicymo project', description: 'Migrations abd associations', is_done: true, user_id: User.first.id },
  { title: 'Finish Juicymo project', description: 'Should be done untill Sunday', is_done: false, user_id: User.first.id },
  { title: 'Contracts', description: "Logistics for 'sugar' farm", is_done: false, user_id: User.last.id }
])

tags = Tag.create([
  { title: '#juicymo', user_id: User.first.id },
  { title: '#hacking', user_id: User.first.id },
  { title: '#complete', user_id: User.first.id },
  { title: '#covid', user_id: User.last.id },
  { title: '#sugar', user_id: User.last.id },
  { title: '#todo', user_id: User.last.id }
])
