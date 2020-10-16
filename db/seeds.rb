# ● Project <-> Task 1:N
# ● Task <-> Tag M:N
# ● User <-> Project 1:N
# ● User <-> Task 1:N
# ● User <-> Tag 1:N

User.create([
  { email: 'test@test.com', firstname: 'Mike', lastname: 'Gudyrin', password: '123456', password_confirmation: '123456' }
])

User.first.projects.create([
  { title: 'Test project for Juicymo' },
  { title: 'Blogpost for recent CVE' },
  { title: 'Defensive wall against Covid zombies' },
  { title: 'New BIO cocaine plantation' },
  { title: 'Better e-shop for cocaine' }
])

tasks = Project.first.tasks.create([
  { title: 'Datamodel for Juicymo project', description: 'Migrations and associations', is_done: true, user: User.first },
  { title: 'Finish Juicymo project', description: 'Should be done untill Sunday', is_done: false, user: User.first },
  { title: 'Contracts', description: "Logistics for Freddy", is_done: false, user: User.first },
  { title: 'Freddy!!!', description: 'Solve business with Freddy', is_done: true, user: User.first }
])

tags = Task.first.tags.create([
  { title: '#juicymo', user: User.first },
  { title: '#hacking', user: User.first },
  { title: '#complete', user: User.first },
  { title: '#covid', user: User.first },
  { title: '#todo', user: User.first }
])
