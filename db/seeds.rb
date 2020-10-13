# ● Project <-> Task 1:N
# ● Task <-> Tag M:N
# ● User <-> Project 1:N
# ● User <-> Task 1:N
# ● User <-> Tag 1:N

User.create([
  { email: 'test@test.com', firstname: 'Mike', lastname: 'Gudyrin', password: '123456', password_confirmation: '123456' },
  { email: 'test2@test.com', firstname: 'Bob', lastname: 'Armstrong', password: 'qwe123', password_confirmation: 'qwe123' }
])

User.first.projects.create([
  { title: 'Test project for Juicymo' },
  { title: 'Blogpost for recent CVE' }
])

User.last.projects.create([
  { title: 'Defensive wall against Covid zombies' },
  { title: 'New BIO cocaine plantation' },
  { title: 'Better e-shop for cocaine' }
])

User.first.tasks.create([
  { title: 'Datamodel for Juicymo project', description: 'Migrations abd associations', is_done: true },
  { title: 'Finish Juicymo project', description: 'Should be done untill Sunday', is_done: false }
])

User.last.tasks.create([
  { title: 'Contracts', description: "Logistics for 'sugar' farm", is_done: false },
  { title: 'Freddy', description: 'Solve business with Freddy', is_done: true }
])

User.first.tags.create([
  { title: '#juicymo' },
  { title: '#hacking' },
  { title: '#complete' }
])

User.last.tags.create([
  { title: '#covid' },
  { title: '#sugar' },
  { title: '#todo' }
])
