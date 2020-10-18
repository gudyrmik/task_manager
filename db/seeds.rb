User.create([
  { email: 'test@test.com', firstname: 'Mike', lastname: 'Gudyrin', password: '123456', password_confirmation: '123456' }
])

User.first.projects.create([
  { title: 'Test project for Juicymo', position: 0},
  { title: 'Blogpost for recent CVE', position: 1 },
  { title: 'Defensive wall against Covid zombies', position: 2 },
  { title: 'New BIO cocaine plantation', position: 3 },
  { title: 'Better e-shop for cocaine', position: 4 }
])

Project.first.tasks.create([
  { title: 'Datamodel for Juicymo project', description: 'Migrations and associations', is_done: true, user: User.first },
  { title: 'Finish Juicymo project', description: 'Should be done untill Sunday', is_done: false, user: User.first },
  { title: 'Contracts', description: "Logistics for Freddy", is_done: false, user: User.first },
  { title: 'Freddy!!!', description: 'Solve business with Freddy', is_done: true, user: User.first }
])

Task.first.tags.create([
  { title: '#juicymo', user: User.first },
  { title: '#hacking', user: User.first },
  { title: '#complete', user: User.first },
  { title: '#covid', user: User.first },
  { title: '#todo', user: User.first }
])
